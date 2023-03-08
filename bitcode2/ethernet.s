	.text
	.file	"ethernet.c"
	.globl	ethernet_input          # -- Begin function ethernet_input
	.p2align	4, 0x90
	.type	ethernet_input,@function
ethernet_input:                         # @ethernet_input
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	cmpw	$14, 18(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	ja	.LBB0_1
.LBB0_26:
	addw	$1, lwip_stats+40(%rip)
.LBB0_27:
	addw	$1, lwip_stats+30(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB0_28:
	movq	%rbx, %rdi
	callq	pbuf_free
.LBB0_29:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB0_1:
	movq	%rsi, %r14
	cmpb	$0, 23(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_3
# %bb.2:
	movb	264(%r14), %al
	addb	$1, %al
	movb	%al, 23(%rbx)
	movl	$42, __A_VARIABLE(%rip)
.LBB0_3:
	movq	8(%rbx), %rdi
	movzwl	12(%rdi), %r15d
	movb	(%rdi), %al
	movl	$42, __A_VARIABLE(%rip)
	testb	$1, %al
	je	.LBB0_13
# %bb.4:
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$1, %al
	jne	.LBB0_8
# %bb.5:
	cmpb	$0, 1(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_13
# %bb.6:
	cmpb	$94, 2(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB0_7
	jmp	.LBB0_13
.LBB0_8:
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$51, %al
	jne	.LBB0_10
# %bb.9:
	cmpb	$51, 1(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_10
.LBB0_7:
	orb	$16, 21(%rbx)
	jmp	.LBB0_12
.LBB0_10:
	movl	$ethbroadcast, %esi
	movl	$6, %edx
	callq	memcmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB0_13
# %bb.11:
	orb	$8, 21(%rbx)
.LBB0_12:
	movl	$42, __A_VARIABLE(%rip)
.LBB0_13:
	movl	$42, __A_VARIABLE(%rip)
	movzwl	%r15w, %eax
	cmpl	$56710, %eax            # imm = 0xDD86
	je	.LBB0_23
# %bb.14:
	cmpl	$1544, %eax             # imm = 0x608
	je	.LBB0_19
# %bb.15:
	cmpw	$8, %r15w
	jne	.LBB0_26
# %bb.16:
	testb	$8, 261(%r14)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB0_28
# %bb.17:
	movl	$14, %esi
	movq	%rbx, %rdi
	callq	pbuf_remove_header
	movl	$42, __A_VARIABLE(%rip)
	testb	%al, %al
	jne	.LBB0_28
# %bb.18:
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	ip4_input
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_29
.LBB0_23:
	cmpw	$14, 18(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	jb	.LBB0_28
# %bb.24:
	movl	$14, %esi
	movq	%rbx, %rdi
	callq	pbuf_remove_header
	movl	$42, __A_VARIABLE(%rip)
	testb	%al, %al
	jne	.LBB0_28
# %bb.25:
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	ip6_input
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_29
.LBB0_19:
	testb	$8, 261(%r14)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB0_28
# %bb.20:
	movl	$14, %esi
	movq	%rbx, %rdi
	callq	pbuf_remove_header
	movl	$42, __A_VARIABLE(%rip)
	testb	%al, %al
	je	.LBB0_22
# %bb.21:
	addw	$1, lwip_stats+34(%rip)
	jmp	.LBB0_27
.LBB0_22:
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	etharp_input
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_29
.Lfunc_end0:
	.size	ethernet_input, .Lfunc_end0-ethernet_input
                                        # -- End function
	.globl	ethernet_output         # -- Begin function ethernet_output
	.p2align	4, 0x90
	.type	ethernet_output,@function
ethernet_output:                        # @ethernet_output
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	movq	%rcx, %r12
	movq	%rdx, %r15
	movq	%rsi, %rbx
	movq	%rdi, %r14
	movl	%r8d, %edi
	callq	lwip_htons
	movl	%eax, %r13d
	movl	$14, %esi
	movq	%rbx, %rdi
	callq	pbuf_add_header
	movl	$42, __A_VARIABLE(%rip)
	testb	%al, %al
	je	.LBB1_1
# %bb.3:
	addw	$1, lwip_stats+10(%rip)
	movb	$-2, %al
	jmp	.LBB1_4
.LBB1_1:
	movq	%r15, -48(%rbp)         # 8-byte Spill
	movq	8(%rbx), %r15
	movw	%r13w, 12(%r15)
	movl	$6, %edx
	movq	%r15, %rdi
	movq	%r12, %rsi
	callq	memcpy
	addq	$6, %r15
	movl	$6, %edx
	movq	%r15, %rdi
	movq	-48(%rbp), %rsi         # 8-byte Reload
	callq	memcpy
	cmpb	$6, 260(%r14)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB1_5
# %bb.2:
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	*200(%r14)
.LBB1_4:
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
.LBB1_5:
	movl	$.L.str, %edi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$.L.str.1, %edi
	movl	$.L.str.2, %esi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$3, %edi
	callq	ukplat_terminate
.Lfunc_end1:
	.size	ethernet_output, .Lfunc_end1-ethernet_output
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
	movl	$uk_pr_crit.__str.3, %edx
	xorl	%edi, %edi
	movl	$198, %ecx
	movq	%r10, %r8
	callq	_uk_vprintk
	movl	$42, __A_VARIABLE(%rip)
	addq	$208, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	uk_pr_crit, .Lfunc_end2-uk_pr_crit
                                        # -- End function
	.type	ethbroadcast,@object    # @ethbroadcast
	.section	.rodata,"a",@progbits
	.globl	ethbroadcast
ethbroadcast:
	.zero	6,255
	.size	ethbroadcast, 6

	.type	ethzero,@object         # @ethzero
	.globl	ethzero
ethzero:
	.zero	6
	.size	ethzero, 6

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"netif->hwaddr_len must be 6 for ethernet_output!"
	.size	.L.str, 49

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Assertion failure: %s\n"
	.size	.L.str.1, 23

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"!(1)"
	.size	.L.str.2, 5

	.type	uk_pr_crit.__str,@object # @uk_pr_crit.__str
	.section	.data_shared,"aw",@progbits
uk_pr_crit.__str:
	.asciz	"liblwip"
	.size	uk_pr_crit.__str, 8

	.type	uk_pr_crit.__str.3,@object # @uk_pr_crit.__str.3
uk_pr_crit.__str.3:
	.asciz	"ethernet.c"
	.size	uk_pr_crit.__str.3, 11

	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
