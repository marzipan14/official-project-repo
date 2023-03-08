	.text
	.file	"inet_chksum.c"
	.globl	lwip_standard_chksum    # -- Begin function lwip_standard_chksum
	.p2align	4, 0x90
	.type	lwip_standard_chksum,@function
lwip_standard_chksum:                   # @lwip_standard_chksum
# %bb.0:
	pushq	%rbp
	pushq	%rbx
                                        # kill: def $esi killed $esi def $rsi
	xorl	%edx, %edx
	movl	$42, __A_VARIABLE(%rip)
	testl	%esi, %esi
	jle	.LBB0_1
# %bb.2:
	movl	%edi, %eax
	andl	$1, %eax
	testq	%rax, %rax
	je	.LBB0_1
# %bb.3:
	leaq	1(%rdi), %rbx
	movzbl	(%rdi), %r8d
	addl	$-1, %esi
	movl	$42, __A_VARIABLE(%rip)
	shll	$8, %r8d
	jmp	.LBB0_4
.LBB0_1:
	movq	%rdi, %rbx
	xorl	%r8d, %r8d
.LBB0_4:
	movl	$42, __A_VARIABLE(%rip)
	testb	$3, %bl
	je	.LBB0_7
# %bb.5:
	cmpl	$2, %esi
	jl	.LBB0_7
# %bb.6:
	movzwl	(%rbx), %edx
	addq	$2, %rbx
	addl	$-2, %esi
	movl	$42, __A_VARIABLE(%rip)
.LBB0_7:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$8, %esi
	jl	.LBB0_15
# %bb.8:
	movq	%rbx, %rax
	movl	%esi, %r9d
	notl	%r9d
	cmpl	$-17, %r9d
	movl	$-16, %ecx
	cmovgl	%r9d, %ecx
	addl	%esi, %ecx
	addl	$8, %ecx
	movl	%ecx, %r9d
	andl	$-8, %r9d
	shrl	%ecx
	andl	$-4, %ecx
	leaq	(%rbx,%rcx,2), %rbx
	addq	$8, %rbx
	leal	8(%rsi), %ecx
	jmp	.LBB0_9
	.p2align	4, 0x90
.LBB0_13:                               #   in Loop: Header=BB0_9 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addl	$-8, %ecx
	addq	$8, %rax
	cmpl	$15, %ecx
	jle	.LBB0_14
.LBB0_9:                                # =>This Inner Loop Header: Depth=1
	addl	(%rax), %edx
	movl	$42, __A_VARIABLE(%rip)
	jae	.LBB0_11
# %bb.10:                               #   in Loop: Header=BB0_9 Depth=1
	addl	$1, %edx
	movl	$42, __A_VARIABLE(%rip)
.LBB0_11:                               #   in Loop: Header=BB0_9 Depth=1
	addl	4(%rax), %edx
	movl	$42, __A_VARIABLE(%rip)
	jae	.LBB0_13
# %bb.12:                               #   in Loop: Header=BB0_9 Depth=1
	addl	$1, %edx
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_13
.LBB0_14:
	subl	%r9d, %esi
	addl	$-8, %esi
.LBB0_15:
	movq	%rbx, %r9
	movl	%edx, %eax
	shrl	$16, %eax
	movzwl	%dx, %edx
	addl	%eax, %edx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, %esi
	jl	.LBB0_24
# %bb.16:
	movl	%esi, %eax
	notl	%eax
	cmpl	$-5, %eax
	movl	$-4, %ecx
	cmovgl	%eax, %ecx
	leal	(%rsi,%rcx), %r11d
	addl	$2, %r11d
	movl	%r11d, %r10d
	andl	$-2, %r10d
	movl	%r11d, %ecx
	shrl	%ecx
	addl	$1, %ecx
	andl	$3, %ecx
	je	.LBB0_17
# %bb.18:                               # %.preheader1
	negl	%ecx
	movl	%esi, %eax
	.p2align	4, 0x90
.LBB0_19:                               # =>This Inner Loop Header: Depth=1
	movzwl	(%rbx), %ebp
	addq	$2, %rbx
	addl	%ebp, %edx
	addl	$-2, %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	incl	%ecx
	jne	.LBB0_19
	jmp	.LBB0_20
.LBB0_17:
	movl	%esi, %eax
.LBB0_20:
	addq	%r10, %r9
	addq	$2, %r9
	cmpl	$6, %r11d
	jb	.LBB0_23
# %bb.21:                               # %.preheader
	addl	$8, %eax
	.p2align	4, 0x90
.LBB0_22:                               # =>This Inner Loop Header: Depth=1
	movzwl	(%rbx), %ecx
	addl	%edx, %ecx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	2(%rbx), %edx
	addl	%ecx, %edx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	4(%rbx), %ecx
	addl	%edx, %ecx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	6(%rbx), %edx
	addl	%ecx, %edx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addl	$-8, %eax
	addq	$8, %rbx
	cmpl	$9, %eax
	jg	.LBB0_22
.LBB0_23:
	subl	%r10d, %esi
	addl	$-2, %esi
	movq	%r9, %rbx
.LBB0_24:
	xorl	%eax, %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1, %esi
	jne	.LBB0_26
# %bb.25:
	movzbl	(%rbx), %eax
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	testb	$1, %dil
	je	.LBB0_28
# %bb.27:
	bswapl	%eax
	shrl	$16, %eax
	movl	$42, __A_VARIABLE(%rip)
.LBB0_28:
	movl	$42, __A_VARIABLE(%rip)
                                        # kill: def $ax killed $ax killed $eax
	popq	%rbx
	popq	%rbp
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
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB2_7
# %bb.1:                                # %.preheader
	movq	%rdi, %rbx
	xorl	%r13d, %r13d
	jmp	.LBB2_2
	.p2align	4, 0x90
.LBB2_4:                                #   in Loop: Header=BB2_2 Depth=1
	movq	(%rbx), %rbx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
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
	movzwl	18(%rbx), %eax
	movl	$42, __A_VARIABLE(%rip)
	testb	$1, %al
	je	.LBB2_4
# %bb.3:                                #   in Loop: Header=BB2_2 Depth=1
	xorl	%eax, %eax
	testl	%r13d, %r13d
	sete	%al
	bswapl	%r12d
	shrl	$16, %r12d
	movl	$42, __A_VARIABLE(%rip)
	movl	%eax, %r13d
	jmp	.LBB2_4
.LBB2_5:
	movl	$42, __A_VARIABLE(%rip)
	testl	%r13d, %r13d
	je	.LBB2_8
# %bb.6:
	bswapl	%r12d
	shrl	$16, %r12d
.LBB2_7:
	movl	$42, __A_VARIABLE(%rip)
.LBB2_8:
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
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	(%rcx), %eax
	movzwl	%ax, %r9d
	shrl	$16, %eax
	addl	%r9d, %eax
	movl	(%r8), %r9d
	movzwl	%r9w, %r10d
	addl	%eax, %r10d
	shrl	$16, %r9d
	addl	%r10d, %r9d
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	4(%rcx), %eax
	movzwl	%ax, %r10d
	addl	%r9d, %r10d
	shrl	$16, %eax
	addl	%r10d, %eax
	movl	4(%r8), %r9d
	movzwl	%r9w, %r10d
	addl	%eax, %r10d
	shrl	$16, %r9d
	addl	%r10d, %r9d
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	8(%rcx), %eax
	movzwl	%ax, %r10d
	addl	%r9d, %r10d
	shrl	$16, %eax
	addl	%r10d, %eax
	movl	8(%r8), %r9d
	movzwl	%r9w, %r10d
	addl	%eax, %r10d
	shrl	$16, %r9d
	addl	%r10d, %r9d
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	12(%rcx), %eax
	movzwl	%ax, %ecx
	addl	%r9d, %ecx
	shrl	$16, %eax
	addl	%ecx, %eax
	movl	12(%r8), %ecx
	movzwl	%cx, %r8d
	addl	%eax, %r8d
	shrl	$16, %ecx
	addl	%r8d, %ecx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	testq	%r8, %r8
	je	.LBB4_3
# %bb.1:
	cmpb	$6, 20(%r8)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB4_3
# %bb.2:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	(%rcx), %eax
	movzwl	%ax, %r9d
	shrl	$16, %eax
	addl	%r9d, %eax
	movl	(%r8), %r9d
	movzwl	%r9w, %r10d
	addl	%eax, %r10d
	shrl	$16, %r9d
	addl	%r10d, %r9d
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	4(%rcx), %eax
	movzwl	%ax, %r10d
	addl	%r9d, %r10d
	shrl	$16, %eax
	addl	%r10d, %eax
	movl	4(%r8), %r9d
	movzwl	%r9w, %r10d
	addl	%eax, %r10d
	shrl	$16, %r9d
	addl	%r10d, %r9d
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	8(%rcx), %eax
	movzwl	%ax, %r10d
	addl	%r9d, %r10d
	shrl	$16, %eax
	addl	%r10d, %eax
	movl	8(%r8), %r9d
	movzwl	%r9w, %r10d
	addl	%eax, %r10d
	shrl	$16, %r9d
	addl	%r10d, %r9d
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	12(%rcx), %ecx
	movzwl	%cx, %eax
	addl	%r9d, %eax
	shrl	$16, %ecx
	addl	%eax, %ecx
	movl	12(%r8), %eax
	movzwl	%ax, %r8d
	addl	%ecx, %r8d
	shrl	$16, %eax
	addl	%r8d, %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB4_4
.LBB4_3:
	movl	(%rcx), %ecx
	movzwl	%cx, %eax
	shrl	$16, %ecx
	addl	%eax, %ecx
	movl	(%r8), %eax
	movzwl	%ax, %r8d
	addl	%ecx, %r8d
	shrl	$16, %eax
	addl	%r8d, %eax
.LBB4_4:
	movl	%eax, %ecx
	shrl	$16, %ecx
	movzwl	%ax, %eax
	addl	%ecx, %eax
	movzwl	%ax, %ecx
	shrl	$16, %eax
	addl	%eax, %ecx
	movzbl	%sil, %esi
	movzwl	%dx, %edx
	callq	inet_cksum_pseudo_base
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
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
	movl	%ecx, %r15d
	movl	%edx, %r14d
	movl	%esi, -44(%rbp)         # 4-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testw	%r15w, %r15w
	je	.LBB6_13
# %bb.1:
	movq	%rdi, %rbx
	testq	%rdi, %rdi
	je	.LBB6_13
# %bb.2:                                # %.preheader
	movl	%r14d, -48(%rbp)        # 4-byte Spill
	xorl	%r14d, %r14d
	.p2align	4, 0x90
.LBB6_3:                                # =>This Inner Loop Header: Depth=1
	movzwl	18(%rbx), %r13d
	movl	$42, __A_VARIABLE(%rip)
	cmpw	%r15w, %r13w
	jbe	.LBB6_5
# %bb.4:                                #   in Loop: Header=BB6_3 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	%r15d, %r13d
.LBB6_5:                                #   in Loop: Header=BB6_3 Depth=1
	movq	8(%rbx), %rdi
	movzwl	%r13w, %esi
	callq	lwip_standard_chksum
	subl	%r13d, %r15d
	movzwl	%r15w, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$32767, %ecx            # imm = 0x7FFF
	jae	.LBB6_15
# %bb.6:                                #   in Loop: Header=BB6_3 Depth=1
	movzwl	%ax, %eax
	addl	%eax, %r12d
	movl	%r12d, %eax
	shrl	$16, %eax
	movzwl	%r12w, %r12d
	addl	%eax, %r12d
	movzwl	18(%rbx), %eax
	movl	$42, __A_VARIABLE(%rip)
	testb	$1, %al
	je	.LBB6_8
# %bb.7:                                #   in Loop: Header=BB6_3 Depth=1
	xorl	%eax, %eax
	testl	%r14d, %r14d
	sete	%al
	bswapl	%r12d
	shrl	$16, %r12d
	movl	$42, __A_VARIABLE(%rip)
	movl	%eax, %r14d
.LBB6_8:                                #   in Loop: Header=BB6_3 Depth=1
	movq	(%rbx), %rbx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testw	%r15w, %r15w
	je	.LBB6_10
# %bb.9:                                #   in Loop: Header=BB6_3 Depth=1
	testq	%rbx, %rbx
	jne	.LBB6_3
.LBB6_10:
	movl	$42, __A_VARIABLE(%rip)
	testl	%r14d, %r14d
	je	.LBB6_11
# %bb.12:
	bswapl	%r12d
	shrl	$16, %r12d
	movl	-48(%rbp), %r14d        # 4-byte Reload
.LBB6_13:
	movl	-44(%rbp), %eax         # 4-byte Reload
	movl	$42, __A_VARIABLE(%rip)
.LBB6_14:
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
.LBB6_11:
	movl	-48(%rbp), %r14d        # 4-byte Reload
	movl	-44(%rbp), %eax         # 4-byte Reload
	jmp	.LBB6_14
.LBB6_15:
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
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	(%r8), %eax
	movzwl	%ax, %r10d
	shrl	$16, %eax
	addl	%r10d, %eax
	movl	(%r9), %r10d
	movzwl	%r10w, %r11d
	addl	%eax, %r11d
	shrl	$16, %r10d
	addl	%r11d, %r10d
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	4(%r8), %eax
	movzwl	%ax, %r11d
	addl	%r10d, %r11d
	shrl	$16, %eax
	addl	%r11d, %eax
	movl	4(%r9), %r10d
	movzwl	%r10w, %r11d
	addl	%eax, %r11d
	shrl	$16, %r10d
	addl	%r11d, %r10d
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	8(%r8), %eax
	movzwl	%ax, %r11d
	addl	%r10d, %r11d
	shrl	$16, %eax
	addl	%r11d, %eax
	movl	8(%r9), %r10d
	movzwl	%r10w, %r11d
	addl	%eax, %r11d
	shrl	$16, %r10d
	addl	%r11d, %r10d
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	12(%r8), %r11d
	movzwl	%r11w, %r8d
	addl	%r10d, %r8d
	shrl	$16, %r11d
	addl	%r8d, %r11d
	movl	12(%r9), %eax
	movzwl	%ax, %r8d
	addl	%r11d, %r8d
	shrl	$16, %eax
	addl	%r8d, %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	testq	%r9, %r9
	je	.LBB8_3
# %bb.1:
	cmpb	$6, 20(%r9)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB8_3
# %bb.2:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	(%r8), %eax
	movzwl	%ax, %r10d
	shrl	$16, %eax
	addl	%r10d, %eax
	movl	(%r9), %r10d
	movzwl	%r10w, %r11d
	addl	%eax, %r11d
	shrl	$16, %r10d
	addl	%r11d, %r10d
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	4(%r8), %eax
	movzwl	%ax, %r11d
	addl	%r10d, %r11d
	shrl	$16, %eax
	addl	%r11d, %eax
	movl	4(%r9), %r10d
	movzwl	%r10w, %r11d
	addl	%eax, %r11d
	shrl	$16, %r10d
	addl	%r11d, %r10d
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	8(%r8), %eax
	movzwl	%ax, %r11d
	addl	%r10d, %r11d
	shrl	$16, %eax
	addl	%r11d, %eax
	movl	8(%r9), %r10d
	movzwl	%r10w, %r11d
	addl	%eax, %r11d
	shrl	$16, %r10d
	addl	%r11d, %r10d
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	12(%r8), %r8d
	movzwl	%r8w, %eax
	addl	%r10d, %eax
	shrl	$16, %r8d
	addl	%eax, %r8d
	movl	12(%r9), %eax
	movzwl	%ax, %r9d
	addl	%r8d, %r9d
	shrl	$16, %eax
	addl	%r9d, %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB8_4
.LBB8_3:
	movl	(%r8), %r8d
	movzwl	%r8w, %eax
	shrl	$16, %r8d
	addl	%eax, %r8d
	movl	(%r9), %eax
	movzwl	%ax, %r9d
	addl	%r8d, %r9d
	shrl	$16, %eax
	addl	%r9d, %eax
.LBB8_4:
	movl	%eax, %r8d
	shrl	$16, %r8d
	movzwl	%ax, %eax
	addl	%r8d, %eax
	movzwl	%ax, %r8d
	shrl	$16, %eax
	addl	%eax, %r8d
	movzbl	%sil, %esi
	movzwl	%dx, %edx
	movzwl	%cx, %ecx
	callq	inet_cksum_pseudo_partial_base
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
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
	movzwl	18(%rbx), %eax
	movl	$42, __A_VARIABLE(%rip)
	testb	$1, %al
	je	.LBB10_5
# %bb.4:                                #   in Loop: Header=BB10_3 Depth=1
	xorl	%eax, %eax
	testl	%r15d, %r15d
	sete	%al
	bswapl	%r14d
	shrl	$16, %r14d
	movl	$42, __A_VARIABLE(%rip)
	movl	%eax, %r15d
	jmp	.LBB10_5
.LBB10_6:
	movl	$42, __A_VARIABLE(%rip)
	testl	%r15d, %r15d
	je	.LBB10_9
# %bb.7:
	bswapl	%r14d
	shrl	$16, %r14d
	jmp	.LBB10_8
.LBB10_1:
	xorl	%r14d, %r14d
.LBB10_8:
	movl	$42, __A_VARIABLE(%rip)
.LBB10_9:
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
