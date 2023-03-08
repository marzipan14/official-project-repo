	.text
	.file	"icmp.c"
	.globl	icmp_input              # -- Begin function icmp_input
	.p2align	4, 0x90
	.type	icmp_input,@function
icmp_input:                             # @icmp_input
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
	addw	$1, lwip_stats+98(%rip)
	movq	ip_data+16(%rip), %rbx
	movzbl	(%rbx), %r15d
	shll	$2, %r15d
	andl	$60, %r15d
	cmpb	$20, %r15b
	jb	.LBB0_36
# %bb.1:
	cmpw	$4, 18(%r12)
	jae	.LBB0_2
.LBB0_36:
	movq	%r12, %rdi
	callq	pbuf_free
	addw	$1, lwip_stats+106(%rip)
.LBB0_37:
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB0_2:
	movq	8(%r12), %rax
	movb	(%rax), %al
	testb	%al, %al
	je	.LBB0_34
# %bb.3:
	cmpb	$8, %al
	jne	.LBB0_33
# %bb.4:
	movl	ip_data+60(%rip), %edi
	movl	%edi, %eax
	andl	$240, %eax
	cmpl	$224, %eax
	je	.LBB0_16
# %bb.5:
	movq	%rsi, %r14
	movq	ip_data(%rip), %rsi
	callq	ip4_addr_isbroadcast_u32
	testb	%al, %al
	je	.LBB0_6
.LBB0_16:
	movq	%r12, %rdi
	callq	pbuf_free
	addw	$1, lwip_stats+116(%rip)
	jmp	.LBB0_37
.LBB0_33:
	addw	$1, lwip_stats+112(%rip)
	addw	$1, lwip_stats+102(%rip)
.LBB0_34:
	movq	%r12, %r13
.LBB0_35:
	movq	%r13, %rdi
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	pbuf_free               # TAILCALL
.LBB0_6:
	cmpw	$8, 16(%r12)
	jb	.LBB0_36
# %bb.7:
	testq	%r14, %r14
	je	.LBB0_9
# %bb.8:
	testb	$8, 249(%r14)
	je	.LBB0_11
.LBB0_9:
	movq	%r12, %rdi
	callq	inet_chksum_pbuf
	testw	%ax, %ax
	je	.LBB0_11
# %bb.10:
	movq	%r12, %rdi
	callq	pbuf_free
	addw	$1, lwip_stats+104(%rip)
	jmp	.LBB0_37
.LBB0_11:
	movq	%r15, %r13
	addq	$14, %r13
	movq	%r12, %rdi
	movq	%r13, %rsi
	callq	pbuf_add_header
	testb	%al, %al
	je	.LBB0_22
# %bb.12:
	movzwl	16(%r12), %eax
	addw	%r15w, %ax
	jb	.LBB0_16
# %bb.13:
	movzwl	%ax, %esi
	movl	$14, %edi
	movl	$640, %edx              # imm = 0x280
	callq	pbuf_alloc
	testq	%rax, %rax
	je	.LBB0_16
# %bb.14:
	movq	%rax, %r13
	movzwl	18(%rax), %eax
	movzbl	%r15b, %edx
	leaq	8(%rdx), %rcx
	cmpq	%rax, %rcx
	ja	.LBB0_15
# %bb.17:
	movq	8(%r13), %rdi
	movq	%rbx, %rsi
	movq	%rdx, %rbx
	callq	memcpy
	movq	%r13, %rdi
	movq	%rbx, -48(%rbp)         # 8-byte Spill
	movq	%rbx, %rsi
	callq	pbuf_remove_header
	testb	%al, %al
	jne	.LBB0_18
# %bb.20:
	movq	%r13, %rdi
	movq	%r12, %rsi
	callq	pbuf_copy
	testb	%al, %al
	je	.LBB0_21
.LBB0_15:
	movq	%r13, %rdi
	callq	pbuf_free
	jmp	.LBB0_16
.LBB0_22:
	movq	%r12, %rdi
	movq	%r13, %rsi
	callq	pbuf_remove_header
	testb	%al, %al
	jne	.LBB0_38
# %bb.23:
	leaq	8(%r12), %rbx
	movzbl	%r15b, %esi
	movq	%r12, %r13
.LBB0_24:
	movq	(%rbx), %r12
	movq	%r13, %rdi
	callq	pbuf_add_header
	testb	%al, %al
	jne	.LBB0_35
# %bb.25:
	movq	(%rbx), %rbx
	movl	ip_data+60(%rip), %eax
	movl	%eax, 12(%rbx)
	movl	ip_data+36(%rip), %eax
	movl	%eax, 16(%rbx)
	movb	$0, (%r12)
	testq	%r14, %r14
	je	.LBB0_27
# %bb.26:
	movzwl	248(%r14), %eax
	testb	$8, %al
	jne	.LBB0_27
# %bb.29:
	movw	$0, 2(%r12)
	movb	$-1, 8(%rbx)
	movw	$0, 10(%rbx)
	jmp	.LBB0_30
.LBB0_27:
	movzwl	2(%r12), %eax
	xorl	%ecx, %ecx
	cmpw	$-9, %ax
	seta	%cl
	leal	8(%rcx,%rax), %eax
	movw	%ax, 2(%r12)
	movb	$-1, 8(%rbx)
	movw	$0, 10(%rbx)
	testq	%r14, %r14
	je	.LBB0_31
# %bb.28:
	movzwl	248(%r14), %eax
.LBB0_30:
	testb	$1, %al
	je	.LBB0_32
.LBB0_31:
	movzwl	%r15w, %esi
	movq	%rbx, %rdi
	callq	inet_chksum
	movw	%ax, 10(%rbx)
.LBB0_32:
	addw	$1, lwip_stats+96(%rip)
	movq	%r14, (%rsp)
	movl	$ip_data+60, %esi
	movq	%r13, %rdi
	xorl	%edx, %edx
	movl	$255, %ecx
	xorl	%r8d, %r8d
	movl	$1, %r9d
	callq	ip4_output_if
	jmp	.LBB0_35
.LBB0_21:
	movq	%r13, %rbx
	addq	$8, %rbx
	movq	%r12, %rdi
	callq	pbuf_free
	movq	-48(%rbp), %rsi         # 8-byte Reload
	jmp	.LBB0_24
.LBB0_38:
	movl	$.L.str.3, %edi
	jmp	.LBB0_19
.LBB0_18:
	movl	$.L.str, %edi
.LBB0_19:
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$.L.str.1, %edi
	movl	$.L.str.2, %esi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$3, %edi
	callq	ukplat_terminate
.Lfunc_end0:
	.size	icmp_input, .Lfunc_end0-icmp_input
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
	movl	$uk_pr_crit.__str, %esi
	movl	$uk_pr_crit.__str.4, %edx
	xorl	%edi, %edi
	movl	$198, %ecx
	movq	%r10, %r8
	callq	_uk_vprintk
	addq	$208, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	uk_pr_crit, .Lfunc_end1-uk_pr_crit
                                        # -- End function
	.globl	icmp_dest_unreach       # -- Begin function icmp_dest_unreach
	.p2align	4, 0x90
	.type	icmp_dest_unreach,@function
icmp_dest_unreach:                      # @icmp_dest_unreach
# %bb.0:
	movzbl	%sil, %edx
	movl	$3, %esi
	jmp	icmp_send_response      # TAILCALL
.Lfunc_end2:
	.size	icmp_dest_unreach, .Lfunc_end2-icmp_dest_unreach
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function icmp_send_response
	.type	icmp_send_response,@function
icmp_send_response:                     # @icmp_send_response
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$24, %rsp
	movl	%edx, %r15d
	movl	%esi, %r12d
	movq	%rdi, %rbx
	movl	$54, %edi
	movl	$36, %esi
	movl	$640, %edx              # imm = 0x280
	callq	pbuf_alloc
	testq	%rax, %rax
	je	.LBB3_7
# %bb.1:
	movq	%rax, %r14
	cmpw	$35, 18(%rax)
	jbe	.LBB3_8
# %bb.2:
	movq	8(%rbx), %r13
	movq	8(%r14), %rbx
	movb	%r12b, (%rbx)
	movb	%r15b, 1(%rbx)
	movl	$0, 4(%rbx)
	leaq	8(%rbx), %rdi
	movl	$28, %edx
	movq	%r13, %rsi
	callq	memcpy
	movl	12(%r13), %eax
	movl	%eax, -48(%rbp)
	leaq	-48(%rbp), %rdi
	callq	ip4_route
	testq	%rax, %rax
	je	.LBB3_6
# %bb.3:
	movq	%rax, %r15
	movw	$0, 2(%rbx)
	testb	$8, 248(%rax)
	je	.LBB3_5
# %bb.4:
	movzwl	18(%r14), %esi
	movq	%rbx, %rdi
	callq	inet_chksum
	movw	%ax, 2(%rbx)
.LBB3_5:
	addw	$1, lwip_stats+96(%rip)
	movq	%r15, (%rsp)
	leaq	-48(%rbp), %rdx
	movq	%r14, %rdi
	movl	$0, %esi
	movl	$255, %ecx
	xorl	%r8d, %r8d
	movl	$1, %r9d
	callq	ip4_output_if
.LBB3_6:
	movq	%r14, %rdi
	callq	pbuf_free
.LBB3_7:
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB3_8:
	movl	$.L.str.5, %edi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$.L.str.1, %edi
	movl	$.L.str.2, %esi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$3, %edi
	callq	ukplat_terminate
.Lfunc_end3:
	.size	icmp_send_response, .Lfunc_end3-icmp_send_response
                                        # -- End function
	.globl	icmp_time_exceeded      # -- Begin function icmp_time_exceeded
	.p2align	4, 0x90
	.type	icmp_time_exceeded,@function
icmp_time_exceeded:                     # @icmp_time_exceeded
# %bb.0:
	movzbl	%sil, %edx
	movl	$11, %esi
	jmp	icmp_send_response      # TAILCALL
.Lfunc_end4:
	.size	icmp_time_exceeded, .Lfunc_end4-icmp_time_exceeded
                                        # -- End function
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"icmp_input: moving r->payload to icmp header failed\n"
	.size	.L.str, 53

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
	.asciz	"icmp_input: restoring original p->payload failed\n"
	.size	.L.str.3, 50

	.type	uk_pr_crit.__str,@object # @uk_pr_crit.__str
	.section	.data_shared,"aw",@progbits
uk_pr_crit.__str:
	.asciz	"liblwip"
	.size	uk_pr_crit.__str, 8

	.type	uk_pr_crit.__str.4,@object # @uk_pr_crit.__str.4
uk_pr_crit.__str.4:
	.asciz	"icmp.c"
	.size	uk_pr_crit.__str.4, 7

	.type	.L.str.5,@object        # @.str.5
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.5:
	.asciz	"check that first pbuf can hold icmp message"
	.size	.L.str.5, 44

	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
