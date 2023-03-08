	.text
	.file	"mld6.c"
	.globl	mld6_stop               # -- Begin function mld6_stop
	.p2align	4, 0x90
	.type	mld6_stop,@function
mld6_stop:                              # @mld6_stop
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movq	240(%rdi), %rbx
	movq	$0, 240(%rdi)
	testq	%rbx, %rbx
	je	.LBB0_5
# %bb.1:
	movq	%rdi, %r14
	jmp	.LBB0_2
	.p2align	4, 0x90
.LBB0_4:                                #   in Loop: Header=BB0_2 Depth=1
	movl	$14, %edi
	movq	%rbx, %rsi
	callq	memp_free
	movq	%r15, %rbx
	testq	%r15, %r15
	je	.LBB0_5
.LBB0_2:                                # =>This Inner Loop Header: Depth=1
	movq	(%rbx), %r15
	movq	272(%r14), %rax
	testq	%rax, %rax
	je	.LBB0_4
# %bb.3:                                #   in Loop: Header=BB0_2 Depth=1
	leaq	8(%rbx), %rsi
	movq	%r14, %rdi
	xorl	%edx, %edx
	callq	*%rax
	jmp	.LBB0_4
.LBB0_5:
	xorl	%eax, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	mld6_stop, .Lfunc_end0-mld6_stop
                                        # -- End function
	.globl	mld6_report_groups      # -- Begin function mld6_report_groups
	.p2align	4, 0x90
	.type	mld6_report_groups,@function
mld6_report_groups:                     # @mld6_report_groups
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	240(%rdi), %rbx
	testq	%rbx, %rbx
	je	.LBB1_3
	.p2align	4, 0x90
.LBB1_1:                                # =>This Inner Loop Header: Depth=1
	movq	%rbx, %rdi
	movl	$500, %esi              # imm = 0x1F4
	callq	mld6_delayed_report
	movq	(%rbx), %rbx
	testq	%rbx, %rbx
	jne	.LBB1_1
.LBB1_3:
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end1:
	.size	mld6_report_groups, .Lfunc_end1-mld6_report_groups
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function mld6_delayed_report
	.type	mld6_delayed_report,@function
mld6_delayed_report:                    # @mld6_delayed_report
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$16, %rsp
	movq	%rdi, %r14
	movw	$1, %r12w
	cmpw	$100, %si
	jb	.LBB2_2
# %bb.1:                                # %select.false.sink
	movzwl	%si, %eax
	shrl	$2, %eax
	imull	$5243, %eax, %r12d      # imm = 0x147B
	shrl	$17, %r12d
.LBB2_2:                                # %select.end
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$_intrstack_start, %ecx
	cmpq	%rcx, %rax
	jb	.LBB2_5
# %bb.3:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$_end, %ecx
	cmpq	%rcx, %rax
	jbe	.LBB2_4
.LBB2_5:
	#APP
	movq	%rsp, %rax
	#NO_APP
	andq	$-65536, %rax           # imm = 0xFFFF0000
	movl	4096(%rax), %r15d
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
	callq	uk_swrand_randr
	movq	%rax, %rsi
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
	movq	%rsi, %r11
	popq	%r8
	popq	%rdi
	popq	%rsi

	#NO_APP
	#APP
	movl	%r11d, -36(%rbp)

	#NO_APP
	movl	-36(%rbp), %ebx
	jmp	.LBB2_6
.LBB2_4:
	callq	ukplat_lcpu_save_irqf
	movq	%rax, %r15
	movl	$uk_swrand_def, %edi
	callq	uk_swrand_randr_r
	movl	%eax, %ebx
	movq	%r15, %rdi
	callq	ukplat_lcpu_restore_irqf
	movl	%ebx, -36(%rbp)
.LBB2_6:
	movzwl	%r12w, %ecx
	movl	%ebx, %eax
	xorl	%edx, %edx
	divl	%ecx
	testl	%edx, %edx
	movl	$1, %eax
	cmovnel	%edx, %eax
	movb	29(%r14), %cl
	cmpb	$1, %cl
	je	.LBB2_8
# %bb.7:
	cmpb	$2, %cl
	jne	.LBB2_10
.LBB2_9:
	movw	%ax, 30(%r14)
	movb	$1, 29(%r14)
.LBB2_10:
	addq	$16, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB2_8:
	movzwl	30(%r14), %ecx
	addl	$-1, %ecx
	cmpw	%ax, %cx
	jae	.LBB2_9
	jmp	.LBB2_10
.Lfunc_end2:
	.size	mld6_delayed_report, .Lfunc_end2-mld6_delayed_report
                                        # -- End function
	.globl	mld6_lookfor_group      # -- Begin function mld6_lookfor_group
	.p2align	4, 0x90
	.type	mld6_lookfor_group,@function
mld6_lookfor_group:                     # @mld6_lookfor_group
# %bb.0:
	movq	240(%rdi), %rax
	testq	%rax, %rax
	je	.LBB3_8
# %bb.1:
	movl	(%rsi), %ecx
	jmp	.LBB3_2
	.p2align	4, 0x90
.LBB3_7:                                #   in Loop: Header=BB3_2 Depth=1
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.LBB3_8
.LBB3_2:                                # =>This Inner Loop Header: Depth=1
	cmpl	%ecx, 8(%rax)
	jne	.LBB3_7
# %bb.3:                                #   in Loop: Header=BB3_2 Depth=1
	movl	12(%rax), %edx
	cmpl	4(%rsi), %edx
	jne	.LBB3_7
# %bb.4:                                #   in Loop: Header=BB3_2 Depth=1
	movl	16(%rax), %edx
	cmpl	8(%rsi), %edx
	jne	.LBB3_7
# %bb.5:                                #   in Loop: Header=BB3_2 Depth=1
	movl	20(%rax), %edx
	cmpl	12(%rsi), %edx
	jne	.LBB3_7
# %bb.6:                                #   in Loop: Header=BB3_2 Depth=1
	movzbl	24(%rax), %edx
	cmpb	16(%rsi), %dl
	jne	.LBB3_7
	jmp	.LBB3_9
.LBB3_8:
	xorl	%eax, %eax
.LBB3_9:
	retq
.Lfunc_end3:
	.size	mld6_lookfor_group, .Lfunc_end3-mld6_lookfor_group
                                        # -- End function
	.globl	mld6_input              # -- Begin function mld6_input
	.p2align	4, 0x90
	.type	mld6_input,@function
mld6_input:                             # @mld6_input
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	addw	$1, lwip_stats+260(%rip)
	movq	%rdi, %rbx
	cmpw	$23, 18(%rdi)
	ja	.LBB4_1
# %bb.41:
	movq	%rbx, %rdi
	callq	pbuf_free
	addw	$1, lwip_stats+266(%rip)
	addw	$1, lwip_stats+262(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB4_1:
	movq	8(%rbx), %r15
	movb	(%r15), %al
	cmpb	$-124, %al
	je	.LBB4_40
# %bb.2:
	cmpb	$-125, %al
	je	.LBB4_29
# %bb.3:
	cmpb	$-126, %al
	jne	.LBB4_39
# %bb.4:
	movl	ip_data+60(%rip), %eax
	movl	ip_data+64(%rip), %ecx
	movl	ip_data+68(%rip), %edx
	movl	ip_data+72(%rip), %r8d
	cmpl	$16777216, %r8d         # imm = 0x1000000
	jne	.LBB4_20
# %bb.5:
	cmpl	$767, %eax              # imm = 0x2FF
	jne	.LBB4_20
# %bb.6:
	movl	%edx, %edi
	orl	%ecx, %edi
	jne	.LBB4_20
# %bb.7:
	cmpl	$0, 8(%r15)
	jne	.LBB4_20
# %bb.8:
	cmpl	$0, 12(%r15)
	jne	.LBB4_20
# %bb.9:
	cmpl	$0, 16(%r15)
	jne	.LBB4_20
# %bb.10:
	cmpl	$0, 20(%r15)
	je	.LBB4_11
.LBB4_20:
	addw	$1, lwip_stats+274(%rip)
	movq	240(%rsi), %rdi
	testq	%rdi, %rdi
	je	.LBB4_40
# %bb.21:
	movb	ip_data+76(%rip), %sil
	jmp	.LBB4_22
	.p2align	4, 0x90
.LBB4_27:                               #   in Loop: Header=BB4_22 Depth=1
	movq	(%rdi), %rdi
	testq	%rdi, %rdi
	je	.LBB4_40
.LBB4_22:                               # =>This Inner Loop Header: Depth=1
	cmpl	%eax, 8(%rdi)
	jne	.LBB4_27
# %bb.23:                               #   in Loop: Header=BB4_22 Depth=1
	cmpl	%ecx, 12(%rdi)
	jne	.LBB4_27
# %bb.24:                               #   in Loop: Header=BB4_22 Depth=1
	cmpl	%edx, 16(%rdi)
	jne	.LBB4_27
# %bb.25:                               #   in Loop: Header=BB4_22 Depth=1
	cmpl	%r8d, 20(%rdi)
	jne	.LBB4_27
# %bb.26:                               #   in Loop: Header=BB4_22 Depth=1
	cmpb	%sil, 24(%rdi)
	jne	.LBB4_27
# %bb.28:
	movzwl	4(%r15), %esi
	callq	mld6_delayed_report
	jmp	.LBB4_40
.LBB4_29:
	addw	$1, lwip_stats+278(%rip)
	movq	240(%rsi), %rax
	testq	%rax, %rax
	je	.LBB4_40
# %bb.30:
	movl	ip_data+60(%rip), %ecx
	movl	ip_data+64(%rip), %edx
	movl	ip_data+68(%rip), %esi
	movl	ip_data+72(%rip), %edi
	movb	ip_data+76(%rip), %r8b
	jmp	.LBB4_31
	.p2align	4, 0x90
.LBB4_36:                               #   in Loop: Header=BB4_31 Depth=1
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.LBB4_40
.LBB4_31:                               # =>This Inner Loop Header: Depth=1
	cmpl	%ecx, 8(%rax)
	jne	.LBB4_36
# %bb.32:                               #   in Loop: Header=BB4_31 Depth=1
	cmpl	%edx, 12(%rax)
	jne	.LBB4_36
# %bb.33:                               #   in Loop: Header=BB4_31 Depth=1
	cmpl	%esi, 16(%rax)
	jne	.LBB4_36
# %bb.34:                               #   in Loop: Header=BB4_31 Depth=1
	cmpl	%edi, 20(%rax)
	jne	.LBB4_36
# %bb.35:                               #   in Loop: Header=BB4_31 Depth=1
	cmpb	%r8b, 24(%rax)
	jne	.LBB4_36
# %bb.37:
	cmpb	$1, 29(%rax)
	jne	.LBB4_40
# %bb.38:
	movl	$512, 28(%rax)          # imm = 0x200
	jmp	.LBB4_40
.LBB4_39:
	addw	$1, lwip_stats+270(%rip)
	addw	$1, lwip_stats+262(%rip)
.LBB4_40:
	movq	%rbx, %rdi
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	pbuf_free               # TAILCALL
.LBB4_11:
	addw	$1, lwip_stats+276(%rip)
	movq	240(%rsi), %r14
	jmp	.LBB4_12
.LBB4_18:                               #   in Loop: Header=BB4_12 Depth=1
	movzwl	4(%r15), %esi
	movq	%r14, %rdi
	callq	mld6_delayed_report
.LBB4_19:                               #   in Loop: Header=BB4_12 Depth=1
	movq	(%r14), %r14
.LBB4_12:                               # =>This Inner Loop Header: Depth=1
	testq	%r14, %r14
	je	.LBB4_40
# %bb.13:                               #   in Loop: Header=BB4_12 Depth=1
	movl	8(%r14), %eax
	movl	%eax, %ecx
	andl	$36863, %ecx            # imm = 0x8FFF
	cmpl	$511, %ecx              # imm = 0x1FF
	je	.LBB4_19
# %bb.14:                               #   in Loop: Header=BB4_12 Depth=1
	cmpl	$767, %eax              # imm = 0x2FF
	jne	.LBB4_18
# %bb.15:                               #   in Loop: Header=BB4_12 Depth=1
	cmpl	$0, 12(%r14)
	jne	.LBB4_18
# %bb.16:                               #   in Loop: Header=BB4_12 Depth=1
	cmpl	$0, 16(%r14)
	jne	.LBB4_18
# %bb.17:                               #   in Loop: Header=BB4_12 Depth=1
	cmpl	$16777216, 20(%r14)     # imm = 0x1000000
	jne	.LBB4_18
	jmp	.LBB4_19
.Lfunc_end4:
	.size	mld6_input, .Lfunc_end4-mld6_input
                                        # -- End function
	.globl	mld6_joingroup          # -- Begin function mld6_joingroup
	.p2align	4, 0x90
	.type	mld6_joingroup,@function
mld6_joingroup:                         # @mld6_joingroup
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	movq	netif_list(%rip), %rbx
	testq	%rbx, %rbx
	je	.LBB5_1
# %bb.2:
	movq	%rsi, %r14
	movq	%rdi, %r15
	movb	$-6, %r12b
	jmp	.LBB5_3
	.p2align	4, 0x90
.LBB5_12:                               #   in Loop: Header=BB5_3 Depth=1
	movq	(%rbx), %rbx
	testq	%rbx, %rbx
	je	.LBB5_13
.LBB5_3:                                # =>This Inner Loop Header: Depth=1
	testq	%r15, %r15
	je	.LBB5_9
# %bb.4:                                #   in Loop: Header=BB5_3 Depth=1
	cmpl	$0, (%r15)
	jne	.LBB5_8
# %bb.5:                                #   in Loop: Header=BB5_3 Depth=1
	cmpl	$0, 4(%r15)
	jne	.LBB5_8
# %bb.6:                                #   in Loop: Header=BB5_3 Depth=1
	cmpl	$0, 8(%r15)
	jne	.LBB5_8
# %bb.7:                                #   in Loop: Header=BB5_3 Depth=1
	cmpl	$0, 12(%r15)
	je	.LBB5_9
	.p2align	4, 0x90
.LBB5_8:                                #   in Loop: Header=BB5_3 Depth=1
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	netif_get_ip6_addr_match
	testb	%al, %al
	js	.LBB5_12
.LBB5_9:                                #   in Loop: Header=BB5_3 Depth=1
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	mld6_joingroup_netif
	testb	%al, %al
	jne	.LBB5_10
# %bb.11:                               #   in Loop: Header=BB5_3 Depth=1
	xorl	%r12d, %r12d
	jmp	.LBB5_12
.LBB5_1:
	movb	$-6, %r12b
	jmp	.LBB5_13
.LBB5_10:
	movl	%eax, %r12d
.LBB5_13:
	movl	%r12d, %eax
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end5:
	.size	mld6_joingroup, .Lfunc_end5-mld6_joingroup
                                        # -- End function
	.globl	mld6_joingroup_netif    # -- Begin function mld6_joingroup_netif
	.p2align	4, 0x90
	.type	mld6_joingroup_netif,@function
mld6_joingroup_netif:                   # @mld6_joingroup_netif
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$24, %rsp
	movq	%rsi, %r15
	movq	%rdi, %r14
	movb	16(%rsi), %al
	testb	%al, %al
	jne	.LBB6_11
# %bb.1:
	movl	(%r15), %eax
	movl	%eax, %ecx
	andl	$49407, %ecx            # imm = 0xC0FF
	cmpl	$33022, %ecx            # imm = 0x80FE
	je	.LBB6_5
# %bb.2:
	movl	%eax, %edx
	andl	$36863, %edx            # imm = 0x8FFF
	cmpl	$767, %edx              # imm = 0x2FF
	je	.LBB6_5
# %bb.3:
	movzwl	%dx, %edx
	cmpl	$511, %edx              # imm = 0x1FF
	jne	.LBB6_4
.LBB6_5:
	movl	%eax, -48(%rbp)
	movl	4(%r15), %edx
	movl	%edx, -44(%rbp)
	movl	8(%r15), %edx
	movl	%edx, -40(%rbp)
	movl	12(%r15), %edx
	movl	%edx, -36(%rbp)
	movb	$0, -32(%rbp)
	cmpl	$33022, %ecx            # imm = 0x80FE
	je	.LBB6_9
# %bb.6:
	andl	$36863, %eax            # imm = 0x8FFF
	cmpl	$767, %eax              # imm = 0x2FF
	je	.LBB6_9
# %bb.7:
	movzwl	%ax, %eax
	cmpl	$511, %eax              # imm = 0x1FF
	jne	.LBB6_8
.LBB6_9:
	movb	264(%r14), %al
	addb	$1, %al
.LBB6_10:
	movb	%al, -32(%rbp)
	leaq	-48(%rbp), %r15
.LBB6_11:
	movq	240(%r14), %rbx
	testq	%rbx, %rbx
	je	.LBB6_19
# %bb.12:
	movl	(%r15), %ecx
	jmp	.LBB6_13
	.p2align	4, 0x90
.LBB6_18:                               #   in Loop: Header=BB6_13 Depth=1
	movq	(%rbx), %rbx
	testq	%rbx, %rbx
	je	.LBB6_19
.LBB6_13:                               # =>This Inner Loop Header: Depth=1
	cmpl	%ecx, 8(%rbx)
	jne	.LBB6_18
# %bb.14:                               #   in Loop: Header=BB6_13 Depth=1
	movl	12(%rbx), %edx
	cmpl	4(%r15), %edx
	jne	.LBB6_18
# %bb.15:                               #   in Loop: Header=BB6_13 Depth=1
	movl	16(%rbx), %edx
	cmpl	8(%r15), %edx
	jne	.LBB6_18
# %bb.16:                               #   in Loop: Header=BB6_13 Depth=1
	movl	20(%rbx), %edx
	cmpl	12(%r15), %edx
	jne	.LBB6_18
# %bb.17:                               #   in Loop: Header=BB6_13 Depth=1
	cmpb	%al, 24(%rbx)
	jne	.LBB6_18
	jmp	.LBB6_27
.LBB6_19:
	movl	$14, %edi
	callq	memp_malloc
	testq	%rax, %rax
	je	.LBB6_20
# %bb.21:
	movq	%rax, %rbx
	testq	%r15, %r15
	je	.LBB6_22
# %bb.23:
	movl	(%r15), %eax
	movl	%eax, 8(%rbx)
	movl	4(%r15), %eax
	movl	%eax, 12(%rbx)
	movl	8(%r15), %eax
	movl	%eax, 16(%rbx)
	movl	12(%r15), %eax
	movl	%eax, 20(%rbx)
	movb	16(%r15), %al
	jmp	.LBB6_24
.LBB6_20:
	movb	$-1, %al
	jmp	.LBB6_28
.LBB6_22:
	xorps	%xmm0, %xmm0
	movups	%xmm0, 8(%rbx)
	xorl	%eax, %eax
.LBB6_24:
	movb	%al, 24(%rbx)
	movl	$512, 28(%rbx)          # imm = 0x200
	movb	$0, 32(%rbx)
	movq	240(%r14), %rax
	movq	%rax, (%rbx)
	movq	%rbx, 240(%r14)
	movq	272(%r14), %rax
	testq	%rax, %rax
	je	.LBB6_26
# %bb.25:
	movq	%r14, %rdi
	movq	%r15, %rsi
	movl	$1, %edx
	callq	*%rax
.LBB6_26:
	addw	$1, lwip_stats+284(%rip)
	movq	%r14, %rdi
	movq	%rbx, %rsi
	movl	$131, %edx
	callq	mld6_send
	movq	%rbx, %rdi
	movl	$500, %esi              # imm = 0x1F4
	callq	mld6_delayed_report
.LBB6_27:
	addb	$1, 32(%rbx)
	xorl	%eax, %eax
.LBB6_28:
                                        # kill: def $al killed $al killed $eax
	addq	$24, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB6_4:
	xorl	%eax, %eax
	jmp	.LBB6_11
.LBB6_8:
	xorl	%eax, %eax
	jmp	.LBB6_10
.Lfunc_end6:
	.size	mld6_joingroup_netif, .Lfunc_end6-mld6_joingroup_netif
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function mld6_send
	.type	mld6_send,@function
mld6_send:                              # @mld6_send
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$24, %rsp
	movl	%edx, %r13d
	movq	%rsi, %r15
	movq	%rdi, %r14
	movl	$54, %edi
	movl	$32, %esi
	movl	$640, %edx              # imm = 0x280
	callq	pbuf_alloc
	testq	%rax, %rax
	je	.LBB7_1
# %bb.2:
	movq	%rax, %rbx
	movl	$8, %esi
	movq	%rax, %rdi
	callq	pbuf_remove_header
	testb	%al, %al
	je	.LBB7_5
# %bb.3:
	movq	%rbx, %rdi
	callq	pbuf_free
	addw	$1, lwip_stats+266(%rip)
	jmp	.LBB7_4
.LBB7_1:
	addw	$1, lwip_stats+268(%rip)
.LBB7_4:
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB7_5:
	testb	$16, 152(%r14)
	leaq	80(%r14), %rax
	movl	$ip6_addr_any, %ecx
	cmovneq	%rax, %rcx
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	movq	8(%rbx), %r12
	movb	%r13b, (%r12)
	movb	$0, 1(%r12)
	movl	$0, 2(%r12)
	movw	$0, 6(%r12)
	leaq	8(%r15), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movl	8(%r15), %eax
	movl	%eax, 8(%r12)
	movl	12(%r15), %eax
	movl	%eax, 12(%r12)
	movl	16(%r15), %eax
	movl	%eax, 16(%r12)
	movl	20(%r15), %eax
	movl	%eax, 20(%r12)
	testq	%r14, %r14
	je	.LBB7_7
# %bb.6:
	testb	$16, 248(%r14)
	je	.LBB7_8
.LBB7_7:
	movzwl	18(%rbx), %edx
	movq	%rbx, %rdi
	movl	$58, %esi
	movq	-56(%rbp), %rcx         # 8-byte Reload
	movq	-48(%rbp), %r8          # 8-byte Reload
	callq	ip6_chksum_pseudo
	movw	%ax, 2(%r12)
.LBB7_8:
	movq	%rbx, %rdi
	movl	$58, %esi
	xorl	%edx, %edx
	callq	ip6_options_add_hbh_ra
	cmpb	$-125, %r13b
	jne	.LBB7_10
# %bb.9:
	movb	$1, 28(%r15)
.LBB7_10:
	addw	$1, lwip_stats+258(%rip)
	movq	-56(%rbp), %rsi         # 8-byte Reload
	cmpl	$0, (%rsi)
	jne	.LBB7_15
# %bb.11:
	cmpl	$0, 4(%rsi)
	jne	.LBB7_15
# %bb.12:
	cmpl	$0, 8(%rsi)
	jne	.LBB7_15
# %bb.13:
	cmpl	$0, 12(%rsi)
	jne	.LBB7_15
# %bb.14:
	xorl	%esi, %esi
.LBB7_15:
	movq	%r14, (%rsp)
	movq	%rbx, %rdi
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movl	$1, %ecx
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	callq	ip6_output_if
	movq	%rbx, %rdi
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	pbuf_free               # TAILCALL
.Lfunc_end7:
	.size	mld6_send, .Lfunc_end7-mld6_send
                                        # -- End function
	.globl	mld6_leavegroup         # -- Begin function mld6_leavegroup
	.p2align	4, 0x90
	.type	mld6_leavegroup,@function
mld6_leavegroup:                        # @mld6_leavegroup
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	movq	netif_list(%rip), %rbx
	testq	%rbx, %rbx
	je	.LBB8_1
# %bb.2:
	movq	%rsi, %r14
	movq	%rdi, %r15
	movb	$-6, %r12b
	xorl	%r13d, %r13d
	jmp	.LBB8_3
	.p2align	4, 0x90
.LBB8_9:                                #   in Loop: Header=BB8_3 Depth=1
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	mld6_leavegroup_netif
	testb	%r12b, %r12b
	movzbl	%al, %r12d
	cmovel	%r13d, %r12d
.LBB8_10:                               #   in Loop: Header=BB8_3 Depth=1
	movq	(%rbx), %rbx
	testq	%rbx, %rbx
	je	.LBB8_11
.LBB8_3:                                # =>This Inner Loop Header: Depth=1
	testq	%r15, %r15
	je	.LBB8_9
# %bb.4:                                #   in Loop: Header=BB8_3 Depth=1
	cmpl	$0, (%r15)
	jne	.LBB8_8
# %bb.5:                                #   in Loop: Header=BB8_3 Depth=1
	cmpl	$0, 4(%r15)
	jne	.LBB8_8
# %bb.6:                                #   in Loop: Header=BB8_3 Depth=1
	cmpl	$0, 8(%r15)
	jne	.LBB8_8
# %bb.7:                                #   in Loop: Header=BB8_3 Depth=1
	cmpl	$0, 12(%r15)
	je	.LBB8_9
	.p2align	4, 0x90
.LBB8_8:                                #   in Loop: Header=BB8_3 Depth=1
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	netif_get_ip6_addr_match
	testb	%al, %al
	jns	.LBB8_9
	jmp	.LBB8_10
.LBB8_1:
	movb	$-6, %r12b
.LBB8_11:
	movl	%r12d, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end8:
	.size	mld6_leavegroup, .Lfunc_end8-mld6_leavegroup
                                        # -- End function
	.globl	mld6_leavegroup_netif   # -- Begin function mld6_leavegroup_netif
	.p2align	4, 0x90
	.type	mld6_leavegroup_netif,@function
mld6_leavegroup_netif:                  # @mld6_leavegroup_netif
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$24, %rsp
	movq	%rsi, %r15
	movq	%rdi, %r14
	movb	16(%rsi), %cl
	testb	%cl, %cl
	jne	.LBB9_11
# %bb.1:
	movl	(%r15), %eax
	movl	%eax, %ecx
	andl	$49407, %ecx            # imm = 0xC0FF
	cmpl	$33022, %ecx            # imm = 0x80FE
	je	.LBB9_5
# %bb.2:
	movl	%eax, %edx
	andl	$36863, %edx            # imm = 0x8FFF
	cmpl	$767, %edx              # imm = 0x2FF
	je	.LBB9_5
# %bb.3:
	movzwl	%dx, %edx
	cmpl	$511, %edx              # imm = 0x1FF
	jne	.LBB9_4
.LBB9_5:
	movl	%eax, -48(%rbp)
	movl	4(%r15), %edx
	movl	%edx, -44(%rbp)
	movl	8(%r15), %edx
	movl	%edx, -40(%rbp)
	movl	12(%r15), %edx
	movl	%edx, -36(%rbp)
	movb	$0, -32(%rbp)
	cmpl	$33022, %ecx            # imm = 0x80FE
	je	.LBB9_9
# %bb.6:
	andl	$36863, %eax            # imm = 0x8FFF
	cmpl	$767, %eax              # imm = 0x2FF
	je	.LBB9_9
# %bb.7:
	movzwl	%ax, %eax
	cmpl	$511, %eax              # imm = 0x1FF
	jne	.LBB9_8
.LBB9_9:
	movb	264(%r14), %cl
	addb	$1, %cl
.LBB9_10:
	movb	%cl, -32(%rbp)
	leaq	-48(%rbp), %r15
.LBB9_11:
	movq	240(%r14), %rdx
	movb	$-6, %al
	testq	%rdx, %rdx
	je	.LBB9_32
# %bb.12:
	movl	(%r15), %esi
	movq	%rdx, %rbx
	jmp	.LBB9_13
	.p2align	4, 0x90
.LBB9_18:                               #   in Loop: Header=BB9_13 Depth=1
	movq	(%rbx), %rbx
	testq	%rbx, %rbx
	je	.LBB9_32
.LBB9_13:                               # =>This Inner Loop Header: Depth=1
	cmpl	%esi, 8(%rbx)
	jne	.LBB9_18
# %bb.14:                               #   in Loop: Header=BB9_13 Depth=1
	movl	12(%rbx), %edi
	cmpl	4(%r15), %edi
	jne	.LBB9_18
# %bb.15:                               #   in Loop: Header=BB9_13 Depth=1
	movl	16(%rbx), %edi
	cmpl	8(%r15), %edi
	jne	.LBB9_18
# %bb.16:                               #   in Loop: Header=BB9_13 Depth=1
	movl	20(%rbx), %edi
	cmpl	12(%r15), %edi
	jne	.LBB9_18
# %bb.17:                               #   in Loop: Header=BB9_13 Depth=1
	cmpb	%cl, 24(%rbx)
	jne	.LBB9_18
# %bb.19:
	movb	32(%rbx), %al
	cmpb	$1, %al
	ja	.LBB9_30
# %bb.20:
	cmpq	%rbx, %rdx
	je	.LBB9_21
.LBB9_22:                               # =>This Inner Loop Header: Depth=1
	testq	%rdx, %rdx
	je	.LBB9_25
# %bb.23:                               #   in Loop: Header=BB9_22 Depth=1
	movq	%rdx, %rax
	movq	(%rdx), %rdx
	cmpq	%rbx, %rdx
	jne	.LBB9_22
# %bb.24:
	movq	(%rbx), %rcx
	movq	%rcx, (%rax)
	jmp	.LBB9_25
.LBB9_4:
	xorl	%ecx, %ecx
	jmp	.LBB9_11
.LBB9_8:
	xorl	%ecx, %ecx
	jmp	.LBB9_10
.LBB9_30:
	addb	$-1, %al
	movb	%al, 32(%rbx)
	jmp	.LBB9_31
.LBB9_21:
	movq	(%rdx), %rax
	movq	%rax, 240(%r14)
.LBB9_25:
	cmpb	$0, 28(%rbx)
	je	.LBB9_27
# %bb.26:
	addw	$1, lwip_stats+282(%rip)
	movq	%r14, %rdi
	movq	%rbx, %rsi
	movl	$132, %edx
	callq	mld6_send
.LBB9_27:
	movq	272(%r14), %rax
	testq	%rax, %rax
	je	.LBB9_29
# %bb.28:
	movq	%r14, %rdi
	movq	%r15, %rsi
	xorl	%edx, %edx
	callq	*%rax
.LBB9_29:
	movl	$14, %edi
	movq	%rbx, %rsi
	callq	memp_free
.LBB9_31:
	xorl	%eax, %eax
.LBB9_32:
                                        # kill: def $al killed $al killed $eax
	addq	$24, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end9:
	.size	mld6_leavegroup_netif, .Lfunc_end9-mld6_leavegroup_netif
                                        # -- End function
	.globl	mld6_tmr                # -- Begin function mld6_tmr
	.p2align	4, 0x90
	.type	mld6_tmr,@function
mld6_tmr:                               # @mld6_tmr
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movq	netif_list(%rip), %r14
	jmp	.LBB10_1
	.p2align	4, 0x90
.LBB10_9:                               #   in Loop: Header=BB10_1 Depth=1
	movq	(%r14), %r14
.LBB10_1:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB10_3 Depth 2
	testq	%r14, %r14
	je	.LBB10_10
# %bb.2:                                #   in Loop: Header=BB10_1 Depth=1
	movq	240(%r14), %rbx
	jmp	.LBB10_3
	.p2align	4, 0x90
.LBB10_8:                               #   in Loop: Header=BB10_3 Depth=2
	movq	(%rbx), %rbx
.LBB10_3:                               #   Parent Loop BB10_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	testq	%rbx, %rbx
	je	.LBB10_9
# %bb.4:                                #   in Loop: Header=BB10_3 Depth=2
	movzwl	30(%rbx), %eax
	testw	%ax, %ax
	je	.LBB10_8
# %bb.5:                                #   in Loop: Header=BB10_3 Depth=2
	addw	$-1, %ax
	movw	%ax, 30(%rbx)
	jne	.LBB10_8
# %bb.6:                                #   in Loop: Header=BB10_3 Depth=2
	cmpb	$1, 29(%rbx)
	jne	.LBB10_8
# %bb.7:                                #   in Loop: Header=BB10_3 Depth=2
	addw	$1, lwip_stats+284(%rip)
	movq	%r14, %rdi
	movq	%rbx, %rsi
	movl	$131, %edx
	callq	mld6_send
	movb	$2, 29(%rbx)
	jmp	.LBB10_8
.LBB10_10:
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end10:
	.size	mld6_tmr, .Lfunc_end10-mld6_tmr
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function uk_swrand_randr
	.type	uk_swrand_randr,@function
uk_swrand_randr:                        # @uk_swrand_randr
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	callq	ukplat_lcpu_save_irqf
	movq	%rax, %r14
	movl	$uk_swrand_def, %edi
	callq	uk_swrand_randr_r
	movl	%eax, %ebx
	movq	%r14, %rdi
	callq	ukplat_lcpu_restore_irqf
	movl	%ebx, %eax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end11:
	.size	uk_swrand_randr, .Lfunc_end11-uk_swrand_randr
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
