	.text
	.file	"inet_chksum.c"
	.globl	lwip_standard_chksum    # -- Begin function lwip_standard_chksum
	.p2align	4, 0x90
	.type	lwip_standard_chksum,@function
lwip_standard_chksum:                   # @lwip_standard_chksum
# %bb.0:
	pushq	%r14
	pushq	%rbx
                                        # kill: def $esi killed $esi def $rsi
	xorl	%edx, %edx
	testl	%esi, %esi
	jle	.LBB0_1
# %bb.2:
	movl	%edi, %eax
	andl	$1, %eax
	testq	%rax, %rax
	je	.LBB0_1
# %bb.3:
	leaq	1(%rdi), %r11
	movzbl	(%rdi), %r8d
	addl	$-1, %esi
	shll	$8, %r8d
	testb	$3, %r11b
	jne	.LBB0_5
	jmp	.LBB0_7
.LBB0_1:
	movq	%rdi, %r11
	xorl	%r8d, %r8d
	testb	$3, %r11b
	je	.LBB0_7
.LBB0_5:
	cmpl	$2, %esi
	jl	.LBB0_7
# %bb.6:
	movzwl	(%r11), %edx
	addq	$2, %r11
	addl	$-2, %esi
.LBB0_7:
	cmpl	$8, %esi
	jl	.LBB0_15
# %bb.8:
	movl	%esi, %eax
	notl	%eax
	cmpl	$-17, %eax
	movl	$-16, %ecx
	cmovgl	%eax, %ecx
	leal	(%rsi,%rcx), %r9d
	leal	(%rsi,%rcx), %r10d
	addl	$8, %r10d
	movl	%r10d, %eax
	shrl	%eax
	andl	$-4, %eax
	testb	$8, %r10b
	jne	.LBB0_9
# %bb.10:
	addl	(%r11), %edx
	adcl	$0, %edx
	addl	4(%r11), %edx
	leaq	8(%r11), %rcx
	adcl	$0, %edx
	leal	-8(%rsi), %ebx
	jmp	.LBB0_11
.LBB0_9:
	movl	%esi, %ebx
	movq	%r11, %rcx
.LBB0_11:
	leaq	(%r11,%rax,2), %r11
	addq	$8, %r11
	andl	$-8, %r10d
	cmpl	$-9, %r9d
	ja	.LBB0_14
# %bb.12:                               # %.preheader
	addl	$16, %ebx
	.p2align	4, 0x90
.LBB0_13:                               # =>This Inner Loop Header: Depth=1
	addl	(%rcx), %edx
	adcl	$0, %edx
	addl	4(%rcx), %edx
	adcl	$0, %edx
	addl	8(%rcx), %edx
	adcl	$0, %edx
	addl	12(%rcx), %edx
	adcl	$0, %edx
	addl	$-16, %ebx
	addq	$16, %rcx
	cmpl	$23, %ebx
	jg	.LBB0_13
.LBB0_14:
	subl	%r10d, %esi
	addl	$-8, %esi
.LBB0_15:
	movl	%edx, %eax
	shrl	$16, %eax
	movzwl	%dx, %edx
	addl	%eax, %edx
	cmpl	$2, %esi
	jl	.LBB0_24
# %bb.16:
	movl	%esi, %ecx
	notl	%ecx
	cmpl	$-5, %ecx
	movl	$-4, %eax
	cmovgl	%ecx, %eax
	leal	(%rsi,%rax), %r14d
	addl	$2, %r14d
	movl	%r14d, %r10d
	andl	$-2, %r10d
	leaq	(%r10,%r11), %r9
	addq	$2, %r9
	shrl	%r14d
	addl	$1, %r14d
	cmpl	$8, %r14d
	jae	.LBB0_18
# %bb.17:
	movl	%esi, %eax
	movq	%r11, %rcx
	jmp	.LBB0_21
.LBB0_18:
	addl	%esi, %eax
	movl	%r14d, %ebx
	andl	$7, %r14d
	subq	%r14, %rbx
	addl	$4, %eax
	andl	$14, %eax
	addl	%esi, %eax
	subl	%r10d, %eax
	addl	$-2, %eax
	leaq	(%r11,%rbx,2), %rcx
	movd	%edx, %xmm0
	pxor	%xmm2, %xmm2
	xorl	%edx, %edx
	pxor	%xmm1, %xmm1
	.p2align	4, 0x90
.LBB0_19:                               # =>This Inner Loop Header: Depth=1
	movq	(%r11,%rdx,2), %xmm3    # xmm3 = mem[0],zero
	movq	8(%r11,%rdx,2), %xmm4   # xmm4 = mem[0],zero
	punpcklwd	%xmm2, %xmm3    # xmm3 = xmm3[0],xmm2[0],xmm3[1],xmm2[1],xmm3[2],xmm2[2],xmm3[3],xmm2[3]
	paddd	%xmm3, %xmm0
	punpcklwd	%xmm2, %xmm4    # xmm4 = xmm4[0],xmm2[0],xmm4[1],xmm2[1],xmm4[2],xmm2[2],xmm4[3],xmm2[3]
	paddd	%xmm4, %xmm1
	addq	$8, %rdx
	cmpq	%rdx, %rbx
	jne	.LBB0_19
# %bb.20:
	paddd	%xmm0, %xmm1
	pshufd	$78, %xmm1, %xmm0       # xmm0 = xmm1[2,3,0,1]
	paddd	%xmm1, %xmm0
	pshufd	$229, %xmm0, %xmm1      # xmm1 = xmm0[1,1,2,3]
	paddd	%xmm0, %xmm1
	movd	%xmm1, %edx
	testl	%r14d, %r14d
	je	.LBB0_23
.LBB0_21:
	addl	$2, %eax
	.p2align	4, 0x90
.LBB0_22:                               # =>This Inner Loop Header: Depth=1
	movzwl	(%rcx), %ebx
	addq	$2, %rcx
	addl	%ebx, %edx
	addl	$-2, %eax
	cmpl	$3, %eax
	jg	.LBB0_22
.LBB0_23:
	subl	%r10d, %esi
	addl	$-2, %esi
	movq	%r9, %r11
.LBB0_24:
	xorl	%eax, %eax
	cmpl	$1, %esi
	jne	.LBB0_26
# %bb.25:
	movzbl	(%r11), %eax
.LBB0_26:
	orl	%r8d, %eax
	addl	%edx, %eax
	movl	%eax, %ecx
	shrl	$16, %ecx
	movzwl	%ax, %edx
	addl	%ecx, %edx
	movzwl	%dx, %eax
	shrl	$16, %edx
	addl	%edx, %eax
	testb	$1, %dil
	je	.LBB0_28
# %bb.27:
	bswapl	%eax
	shrl	$16, %eax
.LBB0_28:
	movl	$42, __A_VARIABLE(%rip)
                                        # kill: def $ax killed $ax killed $eax
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end0:
	.size	lwip_standard_chksum, .Lfunc_end0-lwip_standard_chksum
                                        # -- End function
	.globl	inet_chksum_pseudo      # -- Begin function inet_chksum_pseudo
	.p2align	4, 0x90
	.type	inet_chksum_pseudo,@function
inet_chksum_pseudo:                     # @inet_chksum_pseudo
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	(%rcx), %eax
	movzwl	%ax, %ecx
	shrl	$16, %eax
	addl	%ecx, %eax
	movl	(%r8), %ecx
	movzwl	%cx, %r8d
	addl	%eax, %r8d
	shrl	$16, %ecx
	addl	%r8d, %ecx
	movzwl	%cx, %eax
	shrl	$16, %ecx
	addl	%ecx, %eax
	movzwl	%ax, %ecx
	shrl	$16, %eax
	addl	%eax, %ecx
	callq	inet_cksum_pseudo_base
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end1:
	.size	inet_chksum_pseudo, .Lfunc_end1-inet_chksum_pseudo
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function inet_cksum_pseudo_base
	.type	inet_cksum_pseudo_base,@function
inet_cksum_pseudo_base:                 # @inet_cksum_pseudo_base
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	movl	%ecx, %r12d
	movl	%edx, %r14d
	movl	%esi, %r15d
	testq	%rdi, %rdi
	je	.LBB2_7
# %bb.1:                                # %.preheader
	movq	%rdi, %rbx
	xorl	%r13d, %r13d
	jmp	.LBB2_2
	.p2align	4, 0x90
.LBB2_4:                                #   in Loop: Header=BB2_2 Depth=1
	movq	(%rbx), %rbx
	testq	%rbx, %rbx
	je	.LBB2_5
.LBB2_2:                                # =>This Inner Loop Header: Depth=1
	movq	8(%rbx), %rdi
	movzwl	18(%rbx), %esi
	callq	lwip_standard_chksum
	movzwl	%ax, %eax
	addl	%r12d, %eax
	movzwl	%ax, %r12d
	shrl	$16, %eax
	addl	%eax, %r12d
	testb	$1, 18(%rbx)
	je	.LBB2_4
# %bb.3:                                #   in Loop: Header=BB2_2 Depth=1
	xorl	%eax, %eax
	testl	%r13d, %r13d
	sete	%al
	bswapl	%r12d
	shrl	$16, %r12d
	movl	%eax, %r13d
	jmp	.LBB2_4
.LBB2_5:
	testl	%r13d, %r13d
	je	.LBB2_7
# %bb.6:
	bswapl	%r12d
	shrl	$16, %r12d
.LBB2_7:
	movzbl	%r15b, %edi
	callq	lwip_htons
	movzwl	%ax, %ebx
	addl	%r12d, %ebx
	movzwl	%r14w, %edi
	callq	lwip_htons
	movzwl	%ax, %eax
	addl	%ebx, %eax
	movzwl	%ax, %ecx
	shrl	$16, %eax
	addl	%eax, %ecx
	movl	%ecx, %eax
	shrl	$16, %eax
	addl	%ecx, %eax
	notl	%eax
	movl	$42, __A_VARIABLE(%rip)
                                        # kill: def $ax killed $ax killed $eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end2:
	.size	inet_cksum_pseudo_base, .Lfunc_end2-inet_cksum_pseudo_base
                                        # -- End function
	.globl	ip6_chksum_pseudo       # -- Begin function ip6_chksum_pseudo
	.p2align	4, 0x90
	.type	ip6_chksum_pseudo,@function
ip6_chksum_pseudo:                      # @ip6_chksum_pseudo
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movl	(%rcx), %eax
	movl	4(%rcx), %r9d
	movzwl	%ax, %r10d
	shrl	$16, %eax
	addl	%r10d, %eax
	movl	(%r8), %r10d
	movl	4(%r8), %r11d
	movzwl	%r10w, %ebx
	addl	%eax, %ebx
	shrl	$16, %r10d
	addl	%ebx, %r10d
	movzwl	%r9w, %eax
	addl	%r10d, %eax
	shrl	$16, %r9d
	addl	%eax, %r9d
	movzwl	%r11w, %eax
	addl	%r9d, %eax
	shrl	$16, %r11d
	addl	%eax, %r11d
	movl	8(%rcx), %eax
	movzwl	%ax, %ebx
	addl	%r11d, %ebx
	shrl	$16, %eax
	addl	%ebx, %eax
	movl	8(%r8), %ebx
	movzwl	%bx, %r9d
	addl	%eax, %r9d
	shrl	$16, %ebx
	addl	%r9d, %ebx
	movl	12(%rcx), %eax
	movzwl	%ax, %ecx
	addl	%ebx, %ecx
	shrl	$16, %eax
	addl	%ecx, %eax
	movl	12(%r8), %ecx
	movzwl	%cx, %ebx
	addl	%eax, %ebx
	shrl	$16, %ecx
	addl	%ebx, %ecx
	movzwl	%cx, %eax
	shrl	$16, %ecx
	addl	%ecx, %eax
	movzwl	%ax, %ecx
	shrl	$16, %eax
	addl	%eax, %ecx
	callq	inet_cksum_pseudo_base
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end3:
	.size	ip6_chksum_pseudo, .Lfunc_end3-ip6_chksum_pseudo
                                        # -- End function
	.globl	ip_chksum_pseudo        # -- Begin function ip_chksum_pseudo
	.p2align	4, 0x90
	.type	ip_chksum_pseudo,@function
ip_chksum_pseudo:                       # @ip_chksum_pseudo
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	testq	%r8, %r8
	je	.LBB4_3
# %bb.1:
	cmpb	$6, 20(%r8)
	jne	.LBB4_3
# %bb.2:
	movl	(%rcx), %eax
	movl	4(%rcx), %r9d
	movzwl	%ax, %r10d
	shrl	$16, %eax
	addl	%r10d, %eax
	movl	(%r8), %r10d
	movl	4(%r8), %r11d
	movzwl	%r10w, %ebx
	addl	%eax, %ebx
	shrl	$16, %r10d
	addl	%ebx, %r10d
	movzwl	%r9w, %eax
	addl	%r10d, %eax
	shrl	$16, %r9d
	addl	%eax, %r9d
	movzwl	%r11w, %eax
	addl	%r9d, %eax
	shrl	$16, %r11d
	addl	%eax, %r11d
	movl	8(%rcx), %eax
	movzwl	%ax, %ebx
	addl	%r11d, %ebx
	shrl	$16, %eax
	addl	%ebx, %eax
	movl	8(%r8), %ebx
	movzwl	%bx, %r9d
	addl	%eax, %r9d
	shrl	$16, %ebx
	addl	%r9d, %ebx
	movl	12(%rcx), %eax
	movzwl	%ax, %ecx
	addl	%ebx, %ecx
	shrl	$16, %eax
	addl	%ecx, %eax
	addq	$12, %r8
	jmp	.LBB4_4
.LBB4_3:
	movl	(%rcx), %eax
	movzwl	%ax, %ecx
	shrl	$16, %eax
	addl	%ecx, %eax
.LBB4_4:
	movl	(%r8), %ecx
	movzwl	%cx, %ebx
	addl	%eax, %ebx
	shrl	$16, %ecx
	addl	%ebx, %ecx
	movzwl	%cx, %eax
	shrl	$16, %ecx
	addl	%ecx, %eax
	movzwl	%ax, %ecx
	shrl	$16, %eax
	addl	%eax, %ecx
	movzbl	%sil, %esi
	movzwl	%dx, %edx
	callq	inet_cksum_pseudo_base
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end4:
	.size	ip_chksum_pseudo, .Lfunc_end4-ip_chksum_pseudo
                                        # -- End function
	.globl	inet_chksum_pseudo_partial # -- Begin function inet_chksum_pseudo_partial
	.p2align	4, 0x90
	.type	inet_chksum_pseudo_partial,@function
inet_chksum_pseudo_partial:             # @inet_chksum_pseudo_partial
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	(%r8), %r10d
	movzwl	%r10w, %r8d
	shrl	$16, %r10d
	addl	%r8d, %r10d
	movl	(%r9), %eax
	movzwl	%ax, %r8d
	addl	%r10d, %r8d
	shrl	$16, %eax
	addl	%r8d, %eax
	movzwl	%ax, %r9d
	shrl	$16, %eax
	addl	%eax, %r9d
	movzwl	%r9w, %r8d
	shrl	$16, %r9d
	addl	%r9d, %r8d
	callq	inet_cksum_pseudo_partial_base
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end5:
	.size	inet_chksum_pseudo_partial, .Lfunc_end5-inet_chksum_pseudo_partial
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function inet_cksum_pseudo_partial_base
	.type	inet_cksum_pseudo_partial_base,@function
inet_cksum_pseudo_partial_base:         # @inet_cksum_pseudo_partial_base
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	movl	%r8d, %r12d
	movl	%ecx, %r13d
	movl	%edx, %r14d
	movl	%esi, -44(%rbp)         # 4-byte Spill
	testw	%r13w, %r13w
	je	.LBB6_12
# %bb.1:
	movq	%rdi, %rbx
	testq	%rdi, %rdi
	je	.LBB6_12
# %bb.2:                                # %.preheader
	movl	%r14d, -48(%rbp)        # 4-byte Spill
	xorl	%r14d, %r14d
	.p2align	4, 0x90
.LBB6_3:                                # =>This Inner Loop Header: Depth=1
	movzwl	18(%rbx), %r15d
	cmpw	%r13w, %r15w
	cmoval	%r13d, %r15d
	movq	8(%rbx), %rdi
	movzwl	%r15w, %esi
	callq	lwip_standard_chksum
	subl	%r15d, %r13d
	movzwl	%r13w, %ecx
	cmpl	$32767, %ecx            # imm = 0x7FFF
	jae	.LBB6_14
# %bb.4:                                #   in Loop: Header=BB6_3 Depth=1
	movzwl	%ax, %eax
	addl	%eax, %r12d
	movl	%r12d, %eax
	shrl	$16, %eax
	movzwl	%r12w, %r12d
	addl	%eax, %r12d
	testb	$1, 18(%rbx)
	je	.LBB6_6
# %bb.5:                                #   in Loop: Header=BB6_3 Depth=1
	xorl	%eax, %eax
	testl	%r14d, %r14d
	sete	%al
	bswapl	%r12d
	shrl	$16, %r12d
	movl	%eax, %r14d
.LBB6_6:                                #   in Loop: Header=BB6_3 Depth=1
	testw	%r13w, %r13w
	je	.LBB6_8
# %bb.7:                                #   in Loop: Header=BB6_3 Depth=1
	movq	(%rbx), %rbx
	testq	%rbx, %rbx
	jne	.LBB6_3
.LBB6_8:
	testl	%r14d, %r14d
	movl	-44(%rbp), %eax         # 4-byte Reload
	je	.LBB6_10
# %bb.9:
	bswapl	%r12d
	shrl	$16, %r12d
.LBB6_10:
	movl	-48(%rbp), %r14d        # 4-byte Reload
	jmp	.LBB6_13
.LBB6_12:
	movl	-44(%rbp), %eax         # 4-byte Reload
.LBB6_13:
	movzbl	%al, %edi
	callq	lwip_htons
	movzwl	%ax, %ebx
	addl	%r12d, %ebx
	movzwl	%r14w, %edi
	callq	lwip_htons
	movzwl	%ax, %eax
	addl	%ebx, %eax
	movzwl	%ax, %ecx
	shrl	$16, %eax
	addl	%eax, %ecx
	movl	%ecx, %eax
	shrl	$16, %eax
	addl	%ecx, %eax
	notl	%eax
	movl	$42, __A_VARIABLE(%rip)
                                        # kill: def $ax killed $ax killed $eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB6_14:
	movl	$.L.str, %edi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$.L.str.1, %edi
	movl	$.L.str.2, %esi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$3, %edi
	callq	ukplat_terminate
.Lfunc_end6:
	.size	inet_cksum_pseudo_partial_base, .Lfunc_end6-inet_cksum_pseudo_partial_base
                                        # -- End function
	.globl	ip6_chksum_pseudo_partial # -- Begin function ip6_chksum_pseudo_partial
	.p2align	4, 0x90
	.type	ip6_chksum_pseudo_partial,@function
ip6_chksum_pseudo_partial:              # @ip6_chksum_pseudo_partial
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movl	(%r8), %eax
	movl	4(%r8), %r10d
	movzwl	%ax, %r11d
	shrl	$16, %eax
	addl	%r11d, %eax
	movl	(%r9), %r11d
	movl	4(%r9), %ebx
	movzwl	%r11w, %r14d
	addl	%eax, %r14d
	shrl	$16, %r11d
	addl	%r14d, %r11d
	movzwl	%r10w, %eax
	addl	%r11d, %eax
	shrl	$16, %r10d
	addl	%eax, %r10d
	movzwl	%bx, %eax
	addl	%r10d, %eax
	shrl	$16, %ebx
	addl	%eax, %ebx
	movl	8(%r8), %eax
	movzwl	%ax, %r10d
	addl	%ebx, %r10d
	shrl	$16, %eax
	addl	%r10d, %eax
	movl	8(%r9), %ebx
	movzwl	%bx, %r10d
	addl	%eax, %r10d
	shrl	$16, %ebx
	addl	%r10d, %ebx
	movl	12(%r8), %eax
	movzwl	%ax, %r8d
	addl	%ebx, %r8d
	shrl	$16, %eax
	addl	%r8d, %eax
	movl	12(%r9), %ebx
	movzwl	%bx, %r8d
	addl	%eax, %r8d
	shrl	$16, %ebx
	addl	%r8d, %ebx
	movzwl	%bx, %eax
	shrl	$16, %ebx
	addl	%ebx, %eax
	movzwl	%ax, %r8d
	shrl	$16, %eax
	addl	%eax, %r8d
	callq	inet_cksum_pseudo_partial_base
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end7:
	.size	ip6_chksum_pseudo_partial, .Lfunc_end7-ip6_chksum_pseudo_partial
                                        # -- End function
	.globl	ip_chksum_pseudo_partial # -- Begin function ip_chksum_pseudo_partial
	.p2align	4, 0x90
	.type	ip_chksum_pseudo_partial,@function
ip_chksum_pseudo_partial:               # @ip_chksum_pseudo_partial
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	testq	%r9, %r9
	je	.LBB8_3
# %bb.1:
	cmpb	$6, 20(%r9)
	jne	.LBB8_3
# %bb.2:
	movl	(%r8), %eax
	movl	4(%r8), %r10d
	movzwl	%ax, %r11d
	shrl	$16, %eax
	addl	%r11d, %eax
	movl	(%r9), %r11d
	movl	4(%r9), %ebx
	movzwl	%r11w, %r14d
	addl	%eax, %r14d
	shrl	$16, %r11d
	addl	%r14d, %r11d
	movzwl	%r10w, %eax
	addl	%r11d, %eax
	shrl	$16, %r10d
	addl	%eax, %r10d
	movzwl	%bx, %eax
	addl	%r10d, %eax
	shrl	$16, %ebx
	addl	%eax, %ebx
	movl	8(%r8), %eax
	movzwl	%ax, %r10d
	addl	%ebx, %r10d
	shrl	$16, %eax
	addl	%r10d, %eax
	movl	8(%r9), %ebx
	movzwl	%bx, %r10d
	addl	%eax, %r10d
	shrl	$16, %ebx
	addl	%r10d, %ebx
	movl	12(%r8), %r10d
	movzwl	%r10w, %r8d
	addl	%ebx, %r8d
	shrl	$16, %r10d
	addl	%r8d, %r10d
	addq	$12, %r9
	jmp	.LBB8_4
.LBB8_3:
	movl	(%r8), %r10d
	movzwl	%r10w, %ebx
	shrl	$16, %r10d
	addl	%ebx, %r10d
.LBB8_4:
	movl	(%r9), %ebx
	movzwl	%bx, %eax
	addl	%r10d, %eax
	shrl	$16, %ebx
	addl	%eax, %ebx
	movzwl	%bx, %eax
	shrl	$16, %ebx
	addl	%ebx, %eax
	movzwl	%ax, %r8d
	shrl	$16, %eax
	addl	%eax, %r8d
	movzbl	%sil, %esi
	movzwl	%dx, %edx
	movzwl	%cx, %ecx
	callq	inet_cksum_pseudo_partial_base
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end8:
	.size	ip_chksum_pseudo_partial, .Lfunc_end8-ip_chksum_pseudo_partial
                                        # -- End function
	.globl	inet_chksum             # -- Begin function inet_chksum
	.p2align	4, 0x90
	.type	inet_chksum,@function
inet_chksum:                            # @inet_chksum
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	callq	lwip_standard_chksum
                                        # kill: def $ax killed $ax def $eax
	notl	%eax
	movl	$42, __A_VARIABLE(%rip)
                                        # kill: def $ax killed $ax killed $eax
	popq	%rbp
	retq
.Lfunc_end9:
	.size	inet_chksum, .Lfunc_end9-inet_chksum
                                        # -- End function
	.globl	inet_chksum_pbuf        # -- Begin function inet_chksum_pbuf
	.p2align	4, 0x90
	.type	inet_chksum_pbuf,@function
inet_chksum_pbuf:                       # @inet_chksum_pbuf
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	testq	%rdi, %rdi
	je	.LBB10_1
# %bb.2:                                # %.preheader
	movq	%rdi, %rbx
	xorl	%r15d, %r15d
	xorl	%r14d, %r14d
	jmp	.LBB10_3
	.p2align	4, 0x90
.LBB10_5:                               #   in Loop: Header=BB10_3 Depth=1
	movq	(%rbx), %rbx
	testq	%rbx, %rbx
	je	.LBB10_6
.LBB10_3:                               # =>This Inner Loop Header: Depth=1
	movq	8(%rbx), %rdi
	movzwl	18(%rbx), %esi
	callq	lwip_standard_chksum
	movzwl	%ax, %eax
	addl	%r14d, %eax
	movzwl	%ax, %r14d
	shrl	$16, %eax
	addl	%eax, %r14d
	testb	$1, 18(%rbx)
	je	.LBB10_5
# %bb.4:                                #   in Loop: Header=BB10_3 Depth=1
	xorl	%eax, %eax
	testl	%r15d, %r15d
	sete	%al
	bswapl	%r14d
	shrl	$16, %r14d
	movl	%eax, %r15d
	jmp	.LBB10_5
.LBB10_6:
	testl	%r15d, %r15d
	je	.LBB10_8
# %bb.7:
	bswapl	%r14d
	shrl	$16, %r14d
	jmp	.LBB10_8
.LBB10_1:
	xorl	%r14d, %r14d
.LBB10_8:
	notl	%r14d
	movl	$42, __A_VARIABLE(%rip)
	movl	%r14d, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end10:
	.size	inet_chksum_pbuf, .Lfunc_end10-inet_chksum_pbuf
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
	je	.LBB11_2
# %bb.1:
	movaps	%xmm0, -160(%rbp)
	movaps	%xmm1, -144(%rbp)
	movaps	%xmm2, -128(%rbp)
	movaps	%xmm3, -112(%rbp)
	movaps	%xmm4, -96(%rbp)
	movaps	%xmm5, -80(%rbp)
	movaps	%xmm6, -64(%rbp)
	movaps	%xmm7, -48(%rbp)
.LBB11_2:
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
.Lfunc_end11:
	.size	uk_pr_crit, .Lfunc_end11-uk_pr_crit
                                        # -- End function
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"delete me"
	.size	.L.str, 10

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
	.asciz	"inet_chksum.c"
	.size	uk_pr_crit.__str.3, 14

	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
