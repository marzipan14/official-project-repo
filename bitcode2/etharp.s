	.text
	.file	"etharp.c"
	.globl	etharp_tmr              # -- Begin function etharp_tmr
	.p2align	4, 0x90
	.type	etharp_tmr,@function
etharp_tmr:                             # @etharp_tmr
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%ebx, %ebx
	jmp	.LBB0_1
.LBB0_8:                                #   in Loop: Header=BB0_1 Depth=1
	movb	$0, arp_table+32(%rbx)
.LBB0_14:                               #   in Loop: Header=BB0_1 Depth=1
	movl	$42, __A_VARIABLE(%rip)
.LBB0_15:                               #   in Loop: Header=BB0_1 Depth=1
	movl	$42, __A_VARIABLE(%rip)
.LBB0_16:                               #   in Loop: Header=BB0_1 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$40, %rbx
	cmpq	$400, %rbx              # imm = 0x190
	je	.LBB0_17
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movzbl	arp_table+32(%rbx), %eax
	movl	$42, __A_VARIABLE(%rip)
	testb	%al, %al
	je	.LBB0_16
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$5, %al
	je	.LBB0_16
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	movzwl	arp_table+30(%rbx), %ecx
	addl	$1, %ecx
	movw	%cx, arp_table+30(%rbx)
	movzwl	%cx, %edx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$299, %edx              # imm = 0x12B
	ja	.LBB0_6
# %bb.4:                                #   in Loop: Header=BB0_1 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$1, %al
	jne	.LBB0_9
# %bb.5:                                #   in Loop: Header=BB0_1 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpw	$5, %cx
	jb	.LBB0_13
.LBB0_6:                                #   in Loop: Header=BB0_1 Depth=1
	movq	arp_table(%rbx), %rdi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB0_8
# %bb.7:                                #   in Loop: Header=BB0_1 Depth=1
	callq	pbuf_free
	movq	$0, arp_table(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_8
.LBB0_9:                                #   in Loop: Header=BB0_1 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$3, %al
	jne	.LBB0_11
# %bb.10:                               #   in Loop: Header=BB0_1 Depth=1
	movb	$4, arp_table+32(%rbx)
	jmp	.LBB0_15
.LBB0_13:                               #   in Loop: Header=BB0_1 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	arp_table+16(%rbx), %rdi
	leaq	arp_table+8(%rbx), %rax
	leaq	254(%rdi), %rcx
	leaq	8(%rdi), %r8
	movl	$ethbroadcast, %edx
	movl	$ethzero, %r9d
	movq	%rcx, %rsi
	pushq	$1
	pushq	%rax
	callq	etharp_raw
	addq	$16, %rsp
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_14
.LBB0_11:                               #   in Loop: Header=BB0_1 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$4, %al
	jne	.LBB0_15
# %bb.12:                               #   in Loop: Header=BB0_1 Depth=1
	movb	$2, arp_table+32(%rbx)
	jmp	.LBB0_15
.LBB0_17:
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end0:
	.size	etharp_tmr, .Lfunc_end0-etharp_tmr
                                        # -- End function
	.globl	etharp_request          # -- Begin function etharp_request
	.p2align	4, 0x90
	.type	etharp_request,@function
etharp_request:                         # @etharp_request
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rsi, %rax
	leaq	254(%rdi), %rcx
	leaq	8(%rdi), %r8
	movl	$ethbroadcast, %edx
	movl	$ethzero, %r9d
	movq	%rcx, %rsi
	pushq	$1
	pushq	%rax
	callq	etharp_raw
	addq	$16, %rsp
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end1:
	.size	etharp_request, .Lfunc_end1-etharp_request
                                        # -- End function
	.globl	etharp_add_static_entry # -- Begin function etharp_add_static_entry
	.p2align	4, 0x90
	.type	etharp_add_static_entry,@function
etharp_add_static_entry:                # @etharp_add_static_entry
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movq	%rsi, %r14
	movq	%rdi, %rbx
	callq	ip4_route
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB2_1
# %bb.2:
	movq	%rax, %rdi
	movq	%rbx, %rsi
	movq	%r14, %rdx
	movl	$5, %ecx
	callq	etharp_update_arp_entry
	jmp	.LBB2_3
.LBB2_1:
	movb	$-4, %al
.LBB2_3:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end2:
	.size	etharp_add_static_entry, .Lfunc_end2-etharp_add_static_entry
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function etharp_update_arp_entry
	.type	etharp_update_arp_entry,@function
etharp_update_arp_entry:                # @etharp_update_arp_entry
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	cmpb	$6, 260(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB3_12
# %bb.1:
	movq	%rsi, %rbx
	movl	$42, __A_VARIABLE(%rip)
	movb	$-16, %r13b
	testq	%rsi, %rsi
	je	.LBB3_11
# %bb.2:
	movq	%rdi, %r15
	movl	(%rbx), %edi
	movl	$42, __A_VARIABLE(%rip)
	testl	%edi, %edi
	je	.LBB3_11
# %bb.3:
	movl	%ecx, %r12d
	movq	%rdx, %r14
	movq	%r15, %rsi
	callq	ip4_addr_isbroadcast_u32
	movl	$42, __A_VARIABLE(%rip)
	testb	%al, %al
	jne	.LBB3_11
# %bb.4:
	movl	$240, %eax
	andl	(%rbx), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$224, %eax
	je	.LBB3_11
# %bb.5:
	movzbl	%r12b, %esi
	movq	%rbx, %rdi
	movq	%r15, %rdx
	callq	etharp_find_entry
	movl	%eax, %r13d
	movl	$42, __A_VARIABLE(%rip)
	testw	%ax, %ax
	js	.LBB3_11
# %bb.6:
	movswq	%r13w, %rbx
	leaq	(%rbx,%rbx,4), %rax
	leaq	arp_table+32(,%rax,8), %rax
	movl	$42, __A_VARIABLE(%rip)
	movb	$5, %cl
	testb	$4, %r12b
	jne	.LBB3_8
# %bb.7:
	cmpb	$5, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	movb	$2, %cl
	movb	$-6, %r13b
	je	.LBB3_11
.LBB3_8:
	movb	%cl, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	shlq	$3, %rbx
	movq	%r15, arp_table+16(%rbx,%rbx,4)
	leaq	(%rbx,%rbx,4), %rdi
	addq	$arp_table+24, %rdi
	movl	$6, %edx
	movq	%r14, %rsi
	callq	memcpy
	movw	$0, arp_table+30(%rbx,%rbx,4)
	movq	arp_table(%rbx,%rbx,4), %r12
	movl	$42, __A_VARIABLE(%rip)
	testq	%r12, %r12
	je	.LBB3_10
# %bb.9:
	leaq	(%rbx,%rbx,4), %rax
	addq	$arp_table, %rax
	movq	$0, (%rax)
	leaq	254(%r15), %rdx
	movq	%r15, %rdi
	movq	%r12, %rsi
	movq	%r14, %rcx
	movl	$2048, %r8d             # imm = 0x800
	callq	ethernet_output
	movq	%r12, %rdi
	callq	pbuf_free
	movl	$42, __A_VARIABLE(%rip)
.LBB3_10:
	xorl	%r13d, %r13d
.LBB3_11:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%r13d, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB3_12:
	movl	$.L.str.10, %edi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$.L.str.1, %edi
	movl	$.L.str.2, %esi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$3, %edi
	callq	ukplat_terminate
.Lfunc_end3:
	.size	etharp_update_arp_entry, .Lfunc_end3-etharp_update_arp_entry
                                        # -- End function
	.globl	etharp_remove_static_entry # -- Begin function etharp_remove_static_entry
	.p2align	4, 0x90
	.type	etharp_remove_static_entry,@function
etharp_remove_static_entry:             # @etharp_remove_static_entry
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movl	$2, %esi
	xorl	%edx, %edx
	callq	etharp_find_entry
                                        # kill: def $ax killed $ax def $eax
	movl	$42, __A_VARIABLE(%rip)
	testw	%ax, %ax
	js	.LBB4_5
# %bb.1:
	movswq	%ax, %rax
	leaq	(%rax,%rax,4), %rcx
	cmpb	$5, arp_table+32(,%rcx,8)
	movl	$42, __A_VARIABLE(%rip)
	movb	$-16, %al
	jne	.LBB4_5
# %bb.2:
	leaq	arp_table+32(,%rcx,8), %rbx
	movq	arp_table(,%rcx,8), %rdi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB4_4
# %bb.3:
	leaq	arp_table(,%rcx,8), %r14
	callq	pbuf_free
	movq	$0, (%r14)
	movl	$42, __A_VARIABLE(%rip)
.LBB4_4:
	movb	$0, (%rbx)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
.LBB4_5:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
                                        # kill: def $al killed $al killed $eax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end4:
	.size	etharp_remove_static_entry, .Lfunc_end4-etharp_remove_static_entry
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function etharp_find_entry
	.type	etharp_find_entry,@function
etharp_find_entry:                      # @etharp_find_entry
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	movq	%rdx, %r14
	movq	%rdi, %r15
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	$10, %r9w
	movl	$arp_table+32, %edx
	xorl	%eax, %eax
	xorl	%r11d, %r11d
	xorl	%r10d, %r10d
	xorl	%r12d, %r12d
	movw	$10, %di
	movw	$10, %r13w
	movw	$10, %r8w
	jmp	.LBB5_1
.LBB5_3:                                # %._crit_edge
                                        #   in Loop: Header=BB5_1 Depth=1
	movl	%eax, %edi
	.p2align	4, 0x90
.LBB5_20:                               #   in Loop: Header=BB5_1 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$1, %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$40, %rdx
	cmpq	$10, %rax
	jae	.LBB5_21
.LBB5_1:                                # =>This Inner Loop Header: Depth=1
	movzbl	(%rdx), %ecx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpw	$10, %di
	jne	.LBB5_4
# %bb.2:                                #   in Loop: Header=BB5_1 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testb	%cl, %cl
	jne	.LBB5_5
	jmp	.LBB5_3
	.p2align	4, 0x90
.LBB5_4:                                #   in Loop: Header=BB5_1 Depth=1
	testb	%cl, %cl
	je	.LBB5_20
.LBB5_5:                                #   in Loop: Header=BB5_1 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$1, %cl
	je	.LBB5_7
# %bb.6:                                #   in Loop: Header=BB5_1 Depth=1
	movl	$42, __A_VARIABLE(%rip)
.LBB5_7:                                #   in Loop: Header=BB5_1 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testq	%r15, %r15
	je	.LBB5_11
# %bb.8:                                #   in Loop: Header=BB5_1 Depth=1
	movl	(%r15), %ebx
	cmpl	-24(%rdx), %ebx
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB5_11
# %bb.9:                                #   in Loop: Header=BB5_1 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testq	%r14, %r14
	je	.LBB5_41
# %bb.10:                               #   in Loop: Header=BB5_1 Depth=1
	cmpq	%r14, -16(%rdx)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB5_41
.LBB5_11:                               #   in Loop: Header=BB5_1 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$1, %cl
	jne	.LBB5_17
# %bb.12:                               #   in Loop: Header=BB5_1 Depth=1
	cmpq	$0, -32(%rdx)
	movzwl	-2(%rdx), %ecx
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB5_15
# %bb.13:                               #   in Loop: Header=BB5_1 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpw	%r12w, %cx
	jb	.LBB5_20
# %bb.14:                               #   in Loop: Header=BB5_1 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	%eax, %r9d
	movl	%ecx, %r12d
	jmp	.LBB5_20
	.p2align	4, 0x90
.LBB5_17:                               #   in Loop: Header=BB5_1 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$4, %cl
	ja	.LBB5_20
# %bb.18:                               #   in Loop: Header=BB5_1 Depth=1
	movzwl	-2(%rdx), %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpw	%r11w, %cx
	jb	.LBB5_20
# %bb.19:                               #   in Loop: Header=BB5_1 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	%eax, %r13d
	movl	%ecx, %r11d
	jmp	.LBB5_20
.LBB5_15:                               #   in Loop: Header=BB5_1 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpw	%r10w, %cx
	jb	.LBB5_20
# %bb.16:                               #   in Loop: Header=BB5_1 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	%eax, %r8d
	movl	%ecx, %r10d
	jmp	.LBB5_20
.LBB5_21:
	movl	$42, __A_VARIABLE(%rip)
	movw	$-1, %ax
	testb	$2, %sil
	jne	.LBB5_42
# %bb.22:
	movl	$42, __A_VARIABLE(%rip)
	cmpw	$10, %di
	jne	.LBB5_25
# %bb.23:
	movl	$42, __A_VARIABLE(%rip)
	testb	$1, %sil
	je	.LBB5_42
# %bb.24:
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB5_26
.LBB5_41:
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB5_42
.LBB5_25:
	movl	$42, __A_VARIABLE(%rip)
	jge	.LBB5_26
# %bb.39:
	movl	$42, __A_VARIABLE(%rip)
	movswq	%di, %r12
	leaq	(%r12,%r12,4), %rax
	cmpb	$0, arp_table+32(,%rax,8)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%edi, %ebx
	je	.LBB5_36
# %bb.40:
	movl	$.L.str.14, %edi
	jmp	.LBB5_29
.LBB5_26:
	movl	$42, __A_VARIABLE(%rip)
	cmpw	$9, %r13w
	jg	.LBB5_30
# %bb.27:
	movswq	%r13w, %rax
	leaq	(%rax,%rax,4), %rax
	cmpq	$0, arp_table(,%rax,8)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB5_33
# %bb.28:
	movl	$.L.str.12, %edi
.LBB5_29:
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$.L.str.1, %edi
	movl	$.L.str.2, %esi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$3, %edi
	callq	ukplat_terminate
.LBB5_30:
	movl	$42, __A_VARIABLE(%rip)
	cmpw	$9, %r8w
	jg	.LBB5_32
# %bb.31:
	movl	$42, __A_VARIABLE(%rip)
	movl	%r8d, %r13d
	jmp	.LBB5_33
.LBB5_32:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	$-1, %ax
	movl	%r9d, %r13d
	cmpw	$9, %r9w
	jg	.LBB5_43
.LBB5_33:
	movl	$42, __A_VARIABLE(%rip)
	movl	%r13d, %ebx
	movswq	%r13w, %r12
	leaq	(%r12,%r12,4), %r13
	movq	arp_table(,%r13,8), %rdi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB5_35
# %bb.34:
	leaq	arp_table(,%r13,8), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	pbuf_free
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	$0, (%rax)
	movl	$42, __A_VARIABLE(%rip)
.LBB5_35:
	movb	$0, arp_table+32(,%r13,8)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB5_36:
	movl	$42, __A_VARIABLE(%rip)
	testq	%r15, %r15
	je	.LBB5_38
# %bb.37:
	movl	(%r15), %eax
	leaq	(%r12,%r12,4), %rcx
	movl	%eax, arp_table+8(,%rcx,8)
	movl	$42, __A_VARIABLE(%rip)
.LBB5_38:
	shlq	$3, %r12
	movw	$0, arp_table+30(%r12,%r12,4)
	movq	%r14, arp_table+16(%r12,%r12,4)
	movl	%ebx, %eax
.LBB5_42:
	movl	$42, __A_VARIABLE(%rip)
.LBB5_43:
	movl	$42, __A_VARIABLE(%rip)
                                        # kill: def $ax killed $ax killed $rax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end5:
	.size	etharp_find_entry, .Lfunc_end5-etharp_find_entry
                                        # -- End function
	.globl	etharp_cleanup_netif    # -- Begin function etharp_cleanup_netif
	.p2align	4, 0x90
	.type	etharp_cleanup_netif,@function
etharp_cleanup_netif:                   # @etharp_cleanup_netif
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movq	%rdi, %r14
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	$-400, %rbx             # imm = 0xFE70
	jmp	.LBB6_1
	.p2align	4, 0x90
.LBB6_5:                                #   in Loop: Header=BB6_1 Depth=1
	movb	$0, arp_table+432(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB6_6:                                #   in Loop: Header=BB6_1 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$40, %rbx
	je	.LBB6_7
.LBB6_1:                                # =>This Inner Loop Header: Depth=1
	cmpb	$0, arp_table+432(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB6_6
# %bb.2:                                #   in Loop: Header=BB6_1 Depth=1
	cmpq	%r14, arp_table+416(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB6_6
# %bb.3:                                #   in Loop: Header=BB6_1 Depth=1
	movq	arp_table+400(%rbx), %rdi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB6_5
# %bb.4:                                #   in Loop: Header=BB6_1 Depth=1
	callq	pbuf_free
	movq	$0, arp_table+400(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB6_5
.LBB6_7:
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end6:
	.size	etharp_cleanup_netif, .Lfunc_end6-etharp_cleanup_netif
                                        # -- End function
	.globl	etharp_find_addr        # -- Begin function etharp_find_addr
	.p2align	4, 0x90
	.type	etharp_find_addr,@function
etharp_find_addr:                       # @etharp_find_addr
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movq	%rdx, %rbx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdx, %rdx
	je	.LBB7_6
# %bb.1:
	movq	%rcx, %r14
	testq	%rcx, %rcx
	je	.LBB7_6
# %bb.2:
	movq	%rdi, %rdx
	movq	%rsi, %rdi
	movl	$2, %esi
	callq	etharp_find_entry
	movl	%eax, %ecx
	movl	$42, __A_VARIABLE(%rip)
	movq	$-1, %rax
	testw	%cx, %cx
	js	.LBB7_5
# %bb.3:
	movswq	%cx, %rcx
	leaq	(%rcx,%rcx,4), %rdx
	cmpb	$2, arp_table+32(,%rdx,8)
	movl	$42, __A_VARIABLE(%rip)
	jb	.LBB7_5
# %bb.4:
	leaq	(,%rcx,8), %rax
	leaq	(%rax,%rax,4), %rdx
	addq	$arp_table+24, %rdx
	movq	%rdx, (%rbx)
	leaq	(%rax,%rax,4), %rax
	addq	$arp_table+8, %rax
	movq	%rax, (%r14)
	movq	%rcx, %rax
.LBB7_5:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.LBB7_6:
	movl	$.L.str, %edi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$.L.str.1, %edi
	movl	$.L.str.2, %esi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$3, %edi
	callq	ukplat_terminate
.Lfunc_end7:
	.size	etharp_find_addr, .Lfunc_end7-etharp_find_addr
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
	je	.LBB8_2
# %bb.1:
	movaps	%xmm0, -160(%rbp)
	movaps	%xmm1, -144(%rbp)
	movaps	%xmm2, -128(%rbp)
	movaps	%xmm3, -112(%rbp)
	movaps	%xmm4, -96(%rbp)
	movaps	%xmm5, -80(%rbp)
	movaps	%xmm6, -64(%rbp)
	movaps	%xmm7, -48(%rbp)
.LBB8_2:
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
	movl	$uk_pr_crit.__str.15, %edx
	xorl	%edi, %edi
	movl	$198, %ecx
	movq	%r10, %r8
	callq	_uk_vprintk
	movl	$42, __A_VARIABLE(%rip)
	addq	$208, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	uk_pr_crit, .Lfunc_end8-uk_pr_crit
                                        # -- End function
	.globl	etharp_get_entry        # -- Begin function etharp_get_entry
	.p2align	4, 0x90
	.type	etharp_get_entry,@function
etharp_get_entry:                       # @etharp_get_entry
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$42, __A_VARIABLE(%rip)
	testq	%rsi, %rsi
	je	.LBB9_1
# %bb.3:
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdx, %rdx
	je	.LBB9_4
# %bb.5:
	movl	$42, __A_VARIABLE(%rip)
	testq	%rcx, %rcx
	je	.LBB9_6
# %bb.7:
	xorl	%eax, %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$9, %rdi
	ja	.LBB9_10
# %bb.8:
	leaq	(%rdi,%rdi,4), %r8
	cmpb	$2, arp_table+32(,%r8,8)
	movl	$42, __A_VARIABLE(%rip)
	jb	.LBB9_10
# %bb.9:
	shlq	$3, %rdi
	leaq	(%rdi,%rdi,4), %rax
	addq	$arp_table+8, %rax
	movq	%rax, (%rsi)
	movq	arp_table+16(%rdi,%rdi,4), %rax
	movq	%rax, (%rdx)
	leaq	(%rdi,%rdi,4), %rax
	addq	$arp_table+24, %rax
	movq	%rax, (%rcx)
	movl	$1, %eax
.LBB9_10:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.LBB9_1:
	movl	$.L.str.3, %edi
	jmp	.LBB9_2
.LBB9_4:
	movl	$.L.str.4, %edi
	jmp	.LBB9_2
.LBB9_6:
	movl	$.L.str.5, %edi
.LBB9_2:
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$.L.str.1, %edi
	movl	$.L.str.2, %esi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$3, %edi
	callq	ukplat_terminate
.Lfunc_end9:
	.size	etharp_get_entry, .Lfunc_end9-etharp_get_entry
                                        # -- End function
	.globl	etharp_input            # -- Begin function etharp_input
	.p2align	4, 0x90
	.type	etharp_input,@function
etharp_input:                           # @etharp_input
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$24, %rsp
	movl	$42, __A_VARIABLE(%rip)
	testq	%rsi, %rsi
	je	.LBB10_16
# %bb.1:
	movq	%rdi, %r13
	movq	8(%rdi), %rbx
	movzwl	(%rbx), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$256, %eax              # imm = 0x100
	jne	.LBB10_5
# %bb.2:
	cmpb	$6, 4(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB10_5
# %bb.3:
	cmpb	$4, 5(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB10_5
# %bb.4:
	cmpw	$8, 2(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB10_5
# %bb.6:
	movq	%rsi, %r14
	addw	$1, lwip_stats+26(%rip)
	leaq	14(%rbx), %rsi
	leaq	-48(%rbp), %rdi
	movl	$4, %edx
	callq	memcpy
	leaq	24(%rbx), %rsi
	leaq	-56(%rbp), %rdi
	movl	$4, %edx
	callq	memcpy
	movl	8(%r14), %eax
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB10_7
# %bb.8:
	cmpl	%eax, -56(%rbp)
	sete	%r12b
	movl	$42, __A_VARIABLE(%rip)
	movb	$2, %al
	subb	%r12b, %al
	jmp	.LBB10_9
.LBB10_5:
	addw	$1, lwip_stats+40(%rip)
	addw	$1, lwip_stats+30(%rip)
.LBB10_15:
	movq	%r13, %rdi
	callq	pbuf_free
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB10_7:
	movl	$42, __A_VARIABLE(%rip)
	movb	$2, %al
	xorl	%r12d, %r12d
.LBB10_9:
	leaq	8(%rbx), %r15
	movzbl	%al, %ecx
	leaq	-48(%rbp), %rsi
	movq	%r14, %rdi
	movq	%r15, %rdx
	callq	etharp_update_arp_entry
	movzwl	6(%rbx), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$512, %eax              # imm = 0x200
	je	.LBB10_15
# %bb.10:
	movzwl	%ax, %eax
	cmpl	$256, %eax              # imm = 0x100
	jne	.LBB10_13
# %bb.11:
	movl	$42, __A_VARIABLE(%rip)
	testb	%r12b, %r12b
	je	.LBB10_15
# %bb.12:
	leaq	8(%r14), %r8
	leaq	254(%r14), %rcx
	movq	%r14, %rdi
	movq	%rcx, %rsi
	movq	%r15, %rdx
	movq	%r15, %r9
	pushq	$2
	leaq	-48(%rbp), %rax
	pushq	%rax
	callq	etharp_raw
	addq	$16, %rsp
	jmp	.LBB10_14
.LBB10_13:
	addw	$1, lwip_stats+44(%rip)
.LBB10_14:
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB10_15
.LBB10_16:
	movl	$.L.str.4, %edi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$.L.str.1, %edi
	movl	$.L.str.2, %esi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$3, %edi
	callq	ukplat_terminate
.Lfunc_end10:
	.size	etharp_input, .Lfunc_end10-etharp_input
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function etharp_raw
	.type	etharp_raw,@function
etharp_raw:                             # @etharp_raw
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$24, %rsp
	movq	%r8, -56(%rbp)          # 8-byte Spill
	movq	%rsi, -64(%rbp)         # 8-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB11_1
# %bb.3:
	movq	%r9, %r14
	movq	%rcx, %r15
	movq	%rdx, %r13
	movq	%rdi, %r12
	movl	$14, %edi
	movl	$28, %esi
	movl	$640, %edx              # imm = 0x280
	callq	pbuf_alloc
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB11_4
# %bb.5:
	movq	%rax, %rbx
	movq	%r13, -48(%rbp)         # 8-byte Spill
	cmpw	$27, 18(%rax)
	movl	$42, __A_VARIABLE(%rip)
	jbe	.LBB11_6
# %bb.7:
	movq	8(%rbx), %r13
	movzwl	24(%rbp), %edi
	callq	lwip_htons
	movw	%ax, 6(%r13)
	cmpb	$6, 260(%r12)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB11_8
# %bb.9:
	leaq	8(%r13), %rdi
	movl	$6, %edx
	movq	%r15, %rsi
	callq	memcpy
	leaq	18(%r13), %rdi
	movl	$6, %edx
	movq	%r14, %rsi
	callq	memcpy
	leaq	14(%r13), %rdi
	movl	$4, %edx
	movq	-56(%rbp), %rsi         # 8-byte Reload
	callq	memcpy
	leaq	24(%r13), %rdi
	movl	$4, %edx
	movq	16(%rbp), %rsi
	callq	memcpy
	movl	$524544, (%r13)         # imm = 0x80100
	movw	$1030, 4(%r13)          # imm = 0x406
	movq	%r12, %rdi
	movq	%rbx, %rsi
	movq	-64(%rbp), %rdx         # 8-byte Reload
	movq	-48(%rbp), %rcx         # 8-byte Reload
	movl	$2054, %r8d             # imm = 0x806
	callq	ethernet_output
	addw	$1, lwip_stats+24(%rip)
	movq	%rbx, %rdi
	callq	pbuf_free
	xorl	%eax, %eax
	jmp	.LBB11_10
.LBB11_4:
	addw	$1, lwip_stats+36(%rip)
	movb	$-1, %al
.LBB11_10:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
                                        # kill: def $al killed $al killed $eax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB11_1:
	movl	$.L.str.4, %edi
	jmp	.LBB11_2
.LBB11_6:
	movl	$.L.str.17, %edi
	jmp	.LBB11_2
.LBB11_8:
	movl	$.L.str.18, %edi
.LBB11_2:
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$.L.str.1, %edi
	movl	$.L.str.2, %esi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$3, %edi
	callq	ukplat_terminate
.Lfunc_end11:
	.size	etharp_raw, .Lfunc_end11-etharp_raw
                                        # -- End function
	.globl	etharp_output           # -- Begin function etharp_output
	.p2align	4, 0x90
	.type	etharp_output,@function
etharp_output:                          # @etharp_output
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB12_1
# %bb.3:
	movq	%rsi, %r14
	movl	$42, __A_VARIABLE(%rip)
	testq	%rsi, %rsi
	je	.LBB12_4
# %bb.5:
	movq	%rdx, %r15
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdx, %rdx
	je	.LBB12_6
# %bb.7:
	movq	%rdi, %rbx
	movl	(%r15), %edi
	movq	%rbx, %rsi
	callq	ip4_addr_isbroadcast_u32
	movl	$42, __A_VARIABLE(%rip)
	movl	$ethbroadcast, %ecx
	testb	%al, %al
	jne	.LBB12_10
# %bb.8:
	movl	(%r15), %eax
	movl	%eax, %ecx
	andl	$240, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$224, %ecx
	jne	.LBB12_11
# %bb.9:
	movw	$1, -32(%rbp)
	movb	$94, -30(%rbp)
	movb	1(%r15), %al
	andb	$127, %al
	movb	%al, -29(%rbp)
	movb	2(%r15), %al
	movb	%al, -28(%rbp)
	movb	3(%r15), %al
	movb	%al, -27(%rbp)
	leaq	-32(%rbp), %rcx
.LBB12_10:
	movl	$42, __A_VARIABLE(%rip)
	leaq	254(%rbx), %rdx
	movq	%rbx, %rdi
	movq	%r14, %rsi
	movl	$2048, %r8d             # imm = 0x800
	callq	ethernet_output
.LBB12_28:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB12_11:
	movl	8(%rbx), %ecx
	xorl	%eax, %ecx
	andl	32(%rbx), %ecx
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB12_16
# %bb.12:
	movzwl	%ax, %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$65193, %eax            # imm = 0xFEA9
	je	.LBB12_16
# %bb.13:
	cmpl	$0, 56(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB12_14
# %bb.15:
	leaq	56(%rbx), %r15
	movl	$42, __A_VARIABLE(%rip)
.LBB12_16:
	movzbl	etharp_cached_entry(%rip), %edx
	leaq	(%rdx,%rdx,4), %rax
	cmpb	$2, arp_table+32(,%rax,8)
	movl	$42, __A_VARIABLE(%rip)
	jb	.LBB12_20
# %bb.17:
	cmpq	%rbx, arp_table+16(,%rax,8)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB12_20
# %bb.18:
	movl	(%r15), %ecx
	cmpl	arp_table+8(,%rax,8), %ecx
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB12_20
# %bb.19:
	addw	$1, lwip_stats+46(%rip)
	movq	%rbx, %rdi
	movq	%r14, %rsi
                                        # kill: def $edx killed $edx killed $rdx
	callq	etharp_output_to_arp_index
	jmp	.LBB12_27
.LBB12_20:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$arp_table+32, %ecx
	xorl	%eax, %eax
	jmp	.LBB12_21
	.p2align	4, 0x90
.LBB12_25:                              #   in Loop: Header=BB12_21 Depth=1
	addq	$1, %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$40, %rcx
	cmpq	$10, %rax
	jae	.LBB12_26
.LBB12_21:                              # =>This Inner Loop Header: Depth=1
	cmpb	$2, (%rcx)
	movl	$42, __A_VARIABLE(%rip)
	jb	.LBB12_25
# %bb.22:                               #   in Loop: Header=BB12_21 Depth=1
	cmpq	%rbx, -16(%rcx)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB12_25
# %bb.23:                               #   in Loop: Header=BB12_21 Depth=1
	movl	(%r15), %edx
	cmpl	-24(%rcx), %edx
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB12_25
# %bb.24:
	movb	%al, etharp_cached_entry(%rip)
	movzbl	%al, %edx
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	etharp_output_to_arp_index
	jmp	.LBB12_27
.LBB12_26:
	movq	%rbx, %rdi
	movq	%r15, %rsi
	movq	%r14, %rdx
	callq	etharp_query
.LBB12_27:
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB12_28
.LBB12_14:
	movb	$-4, %al
	jmp	.LBB12_27
.LBB12_1:
	movl	$.L.str.4, %edi
	jmp	.LBB12_2
.LBB12_4:
	movl	$.L.str.6, %edi
	jmp	.LBB12_2
.LBB12_6:
	movl	$.L.str.3, %edi
.LBB12_2:
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$.L.str.1, %edi
	movl	$.L.str.2, %esi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$3, %edi
	callq	ukplat_terminate
.Lfunc_end12:
	.size	etharp_output, .Lfunc_end12-etharp_output
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function etharp_output_to_arp_index
	.type	etharp_output_to_arp_index,@function
etharp_output_to_arp_index:             # @etharp_output_to_arp_index
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	movl	%edx, %eax
	leaq	(%rax,%rax,4), %rbx
	movb	arp_table+32(,%rbx,8), %cl
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$1, %cl
	jbe	.LBB13_9
# %bb.1:
	movq	%rsi, %r14
	movq	%rdi, %r15
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$2, %cl
	jne	.LBB13_8
# %bb.2:
	leaq	arp_table+32(,%rbx,8), %r12
	movzwl	arp_table+30(,%rbx,8), %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$285, %ecx              # imm = 0x11D
	jb	.LBB13_4
# %bb.3:
	leaq	arp_table+8(,%rbx,8), %rax
	leaq	254(%r15), %rcx
	leaq	8(%r15), %r8
	movl	$ethbroadcast, %edx
	movl	$ethzero, %r9d
	movq	%r15, %rdi
	movq	%rcx, %rsi
	pushq	$1
	pushq	%rax
	callq	etharp_raw
	addq	$16, %rsp
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB13_6
.LBB13_4:
	movzwl	%cx, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$270, %ecx              # imm = 0x10E
	jb	.LBB13_8
# %bb.5:
	shlq	$3, %rax
	leaq	(%rax,%rax,4), %r10
	addq	$arp_table+8, %r10
	leaq	arp_table+24(%rax,%rax,4), %rdx
	leaq	254(%r15), %rcx
	leaq	8(%r15), %r8
	movl	$ethzero, %r9d
	movq	%r15, %rdi
	movq	%rcx, %rsi
	pushq	$1
	pushq	%r10
	callq	etharp_raw
	addq	$16, %rsp
.LBB13_6:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testb	%al, %al
	jne	.LBB13_8
# %bb.7:
	movb	$3, (%r12)
	movl	$42, __A_VARIABLE(%rip)
.LBB13_8:
	leaq	arp_table+24(,%rbx,8), %rcx
	leaq	254(%r15), %rdx
	movq	%r15, %rdi
	movq	%r14, %rsi
	movl	$2048, %r8d             # imm = 0x800
	callq	ethernet_output
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB13_9:
	movl	$.L.str.16, %edi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$.L.str.1, %edi
	movl	$.L.str.2, %esi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$3, %edi
	callq	ukplat_terminate
.Lfunc_end13:
	.size	etharp_output_to_arp_index, .Lfunc_end13-etharp_output_to_arp_index
                                        # -- End function
	.globl	etharp_query            # -- Begin function etharp_query
	.p2align	4, 0x90
	.type	etharp_query,@function
etharp_query:                           # @etharp_query
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$24, %rsp
	movq	%rdx, %r14
	movq	%rsi, %rbx
	movq	%rdi, %r12
	movl	(%rsi), %edi
	movq	%r12, %rsi
	callq	ip4_addr_isbroadcast_u32
	movl	%eax, %ecx
	movl	$42, __A_VARIABLE(%rip)
	movb	$-16, %al
	testb	%cl, %cl
	jne	.LBB14_38
# %bb.1:
	movl	(%rbx), %ecx
	movl	%ecx, %edx
	andl	$240, %edx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$224, %edx
	je	.LBB14_38
# %bb.2:
	movl	$42, __A_VARIABLE(%rip)
	testl	%ecx, %ecx
	je	.LBB14_38
# %bb.3:
	movq	%rbx, %rdi
	movl	$1, %esi
	movq	%r12, %rdx
	callq	etharp_find_entry
	movl	%eax, %r15d
	movl	$42, __A_VARIABLE(%rip)
	testw	%ax, %ax
	js	.LBB14_4
# %bb.7:
	movl	$42, __A_VARIABLE(%rip)
	cmpw	$127, %r15w
	jae	.LBB14_8
# %bb.10:
	leaq	254(%r12), %r13
	movzbl	%r15b, %eax
	leaq	(%rax,%rax,4), %rdx
	leaq	arp_table+32(,%rdx,8), %rax
	movb	arp_table+32(,%rdx,8), %cl
	movl	$42, __A_VARIABLE(%rip)
	testb	%cl, %cl
	je	.LBB14_11
# %bb.12:
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$1, %cl
	je	.LBB14_14
# %bb.13:
	movl	$42, __A_VARIABLE(%rip)
.LBB14_14:
	movl	$42, __A_VARIABLE(%rip)
	testq	%r14, %r14
	je	.LBB14_15
# %bb.18:
	movl	$42, __A_VARIABLE(%rip)
	movb	$-1, %al
	jmp	.LBB14_19
.LBB14_4:
	movl	$42, __A_VARIABLE(%rip)
	testq	%r14, %r14
	je	.LBB14_6
# %bb.5:
	addw	$1, lwip_stats+36(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB14_6:
	movl	%r15d, %eax
	jmp	.LBB14_38
.LBB14_11:
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movb	$1, (%rax)
	movq	%rdx, -64(%rbp)         # 8-byte Spill
	movq	%r12, arp_table+16(,%rdx,8)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%r14, %r14
	sete	-41(%rbp)               # 1-byte Folded Spill
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB14_16
.LBB14_15:
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	%rdx, -64(%rbp)         # 8-byte Spill
	movb	$1, -41(%rbp)           # 1-byte Folded Spill
.LBB14_16:
	leaq	8(%r12), %r8
	movl	$ethbroadcast, %edx
	movl	$ethzero, %r9d
	movq	%r12, %rdi
	movq	%r13, %rsi
	movq	%r13, %rcx
	pushq	$1
	pushq	%rbx
	callq	etharp_raw
	addq	$16, %rsp
                                        # kill: def $al killed $al def $eax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$0, -41(%rbp)           # 1-byte Folded Reload
	jne	.LBB14_39
# %bb.17:
	movq	-56(%rbp), %rcx         # 8-byte Reload
	movb	(%rcx), %cl
	movq	-64(%rbp), %rdx         # 8-byte Reload
.LBB14_19:
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$2, %cl
	jb	.LBB14_21
# %bb.20:
	movb	%r15b, etharp_cached_entry(%rip)
	leaq	arp_table+24(,%rdx,8), %rcx
	movq	%r12, %rdi
	movq	%r14, %rsi
	movq	%r13, %rdx
	movl	$2048, %r8d             # imm = 0x800
	callq	ethernet_output
                                        # kill: def $al killed $al def $eax
	jmp	.LBB14_37
.LBB14_21:
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$1, %cl
	jne	.LBB14_38
# %bb.22:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%r14, %r14
	je	.LBB14_30
# %bb.23:                               # %.preheader
	movq	%r14, %rax
.LBB14_24:                              # =>This Inner Loop Header: Depth=1
	movzwl	18(%rax), %ecx
	cmpw	16(%rax), %cx
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB14_27
# %bb.25:                               #   in Loop: Header=BB14_24 Depth=1
	cmpq	$0, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB14_26
.LBB14_27:                              #   in Loop: Header=BB14_24 Depth=1
	testb	$64, 20(%rax)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB14_28
# %bb.29:                               #   in Loop: Header=BB14_24 Depth=1
	movq	(%rax), %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	jne	.LBB14_24
.LBB14_30:
	movq	%rdx, %rbx
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %rdi
	callq	pbuf_ref
	jmp	.LBB14_31
.LBB14_28:
	movq	%rdx, %rbx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$14, %edi
	movl	$640, %esi              # imm = 0x280
	movq	%r14, %rdx
	callq	pbuf_clone
	movq	%rax, %r14
.LBB14_31:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%r14, %r14
	je	.LBB14_35
# %bb.32:
	movq	%rbx, %rax
	leaq	arp_table(,%rbx,8), %rbx
	movq	arp_table(,%rax,8), %rdi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB14_34
# %bb.33:
	callq	pbuf_free
	movl	$42, __A_VARIABLE(%rip)
.LBB14_34:
	movq	%r14, (%rbx)
	xorl	%eax, %eax
	jmp	.LBB14_36
.LBB14_35:
	addw	$1, lwip_stats+36(%rip)
	movb	$-1, %al
.LBB14_36:
	movl	$42, __A_VARIABLE(%rip)
.LBB14_37:
	movl	$42, __A_VARIABLE(%rip)
.LBB14_38:
	movl	$42, __A_VARIABLE(%rip)
.LBB14_39:
	movl	$42, __A_VARIABLE(%rip)
                                        # kill: def $al killed $al killed $eax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB14_8:
	movl	$.L.str.7, %edi
	jmp	.LBB14_9
.LBB14_26:
	movl	$.L.str.9, %edi
.LBB14_9:
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$.L.str.1, %edi
	movl	$.L.str.2, %esi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$3, %edi
	callq	ukplat_terminate
.Lfunc_end14:
	.size	etharp_query, .Lfunc_end14-etharp_query
                                        # -- End function
	.type	arp_table,@object       # @arp_table
	.local	arp_table
	.comm	arp_table,400,16
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"eth_ret != NULL && ip_ret != NULL"
	.size	.L.str, 34

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
	.asciz	"ipaddr != NULL"
	.size	.L.str.3, 15

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"netif != NULL"
	.size	.L.str.4, 14

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"eth_ret != NULL"
	.size	.L.str.5, 16

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"q != NULL"
	.size	.L.str.6, 10

	.type	etharp_cached_entry,@object # @etharp_cached_entry
	.local	etharp_cached_entry
	.comm	etharp_cached_entry,1,1
	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"type overflow"
	.size	.L.str.7, 14

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"no packet queues allowed!"
	.size	.L.str.9, 26

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"netif->hwaddr_len == ETH_HWADDR_LEN"
	.size	.L.str.10, 36

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"arp_table[i].q == NULL"
	.size	.L.str.12, 23

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"arp_table[i].state == ETHARP_STATE_EMPTY"
	.size	.L.str.14, 41

	.type	uk_pr_crit.__str,@object # @uk_pr_crit.__str
	.section	.data_shared,"aw",@progbits
uk_pr_crit.__str:
	.asciz	"liblwip"
	.size	uk_pr_crit.__str, 8

	.type	uk_pr_crit.__str.15,@object # @uk_pr_crit.__str.15
uk_pr_crit.__str.15:
	.asciz	"etharp.c"
	.size	uk_pr_crit.__str.15, 9

	.type	.L.str.16,@object       # @.str.16
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.16:
	.asciz	"arp_table[arp_idx].state >= ETHARP_STATE_STABLE"
	.size	.L.str.16, 48

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"check that first pbuf can hold struct etharp_hdr"
	.size	.L.str.17, 49

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"netif->hwaddr_len must be the same as ETH_HWADDR_LEN for etharp!"
	.size	.L.str.18, 65

	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
