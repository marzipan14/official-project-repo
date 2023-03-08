	.text
	.file	"tcp.c"
	.globl	tcp_init                # -- Begin function tcp_init
	.p2align	4, 0x90
	.type	tcp_init,@function
tcp_init:                               # @tcp_init
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_intrstack_start, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jb	.LBB0_3
# %bb.1:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jbe	.LBB0_2
.LBB0_3:
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
	movl	%r11d, -28(%rbp)

	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	-28(%rbp), %ebx
	jmp	.LBB0_4
.LBB0_2:
	callq	ukplat_lcpu_save_irqf
	movq	%rax, %r14
	movl	$uk_swrand_def, %edi
	callq	uk_swrand_randr_r
	movl	%eax, %ebx
	movq	%r14, %rdi
	callq	ukplat_lcpu_restore_irqf
	movl	$42, __A_VARIABLE(%rip)
	movl	%ebx, -28(%rbp)
	movl	$42, __A_VARIABLE(%rip)
.LBB0_4:
	movl	$42, __A_VARIABLE(%rip)
	orl	$49152, %ebx            # imm = 0xC000
	movw	%bx, tcp_port(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	tcp_init, .Lfunc_end0-tcp_init
                                        # -- End function
	.globl	tcp_free                # -- Begin function tcp_free
	.p2align	4, 0x90
	.type	tcp_free,@function
tcp_free:                               # @tcp_free
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	cmpl	$1, 72(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB1_2
# %bb.1:
	movq	%rdi, %rsi
	movl	$1, %edi
	callq	memp_free
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.LBB1_2:
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
	.size	tcp_free, .Lfunc_end1-tcp_free
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
	movl	$uk_pr_crit.__str.44, %edx
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
	.globl	tcp_tmr                 # -- Begin function tcp_tmr
	.p2align	4, 0x90
	.type	tcp_tmr,@function
tcp_tmr:                                # @tcp_tmr
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	callq	tcp_fasttmr
	movb	tcp_timer(%rip), %al
	addb	$1, %al
	movb	%al, tcp_timer(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testb	$1, %al
	je	.LBB3_2
# %bb.1:
	callq	tcp_slowtmr
	movl	$42, __A_VARIABLE(%rip)
.LBB3_2:
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end3:
	.size	tcp_tmr, .Lfunc_end3-tcp_tmr
                                        # -- End function
	.globl	tcp_fasttmr             # -- Begin function tcp_fasttmr
	.p2align	4, 0x90
	.type	tcp_fasttmr,@function
tcp_fasttmr:                            # @tcp_fasttmr
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	addb	$1, tcp_timer_ctr(%rip)
	jmp	.LBB4_1
	.p2align	4, 0x90
.LBB4_11:                               #   in Loop: Header=BB4_2 Depth=2
	movq	56(%rbx), %r14
.LBB4_12:                               #   in Loop: Header=BB4_2 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %rbx
	testq	%r14, %r14
	je	.LBB4_13
.LBB4_2:                                #   Parent Loop BB4_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	tcp_timer_ctr(%rip), %eax
	cmpb	%al, 86(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB4_11
# %bb.3:                                #   in Loop: Header=BB4_2 Depth=2
	movb	%al, 86(%rbx)
	movzwl	82(%rbx), %eax
	movl	$42, __A_VARIABLE(%rip)
	testb	$1, %al
	je	.LBB4_5
# %bb.4:                                #   in Loop: Header=BB4_2 Depth=2
	orl	$2, %eax
	movw	%ax, 82(%rbx)
	movq	%rbx, %rdi
	callq	tcp_output
	movzwl	82(%rbx), %eax
	andl	$-4, %eax
	movw	%ax, 82(%rbx)
	movl	$42, __A_VARIABLE(%rip)
.LBB4_5:                                #   in Loop: Header=BB4_2 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	testb	$8, %al
	je	.LBB4_7
# %bb.6:                                #   in Loop: Header=BB4_2 Depth=2
	andl	$65527, %eax            # imm = 0xFFF7
	movw	%ax, 82(%rbx)
	movq	%rbx, %rdi
	callq	tcp_close_shutdown_fin
	movl	$42, __A_VARIABLE(%rip)
.LBB4_7:                                #   in Loop: Header=BB4_2 Depth=2
	movq	56(%rbx), %r14
	cmpq	$0, 208(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB4_9
# %bb.8:                                #   in Loop: Header=BB4_2 Depth=2
	movb	$0, tcp_active_pcbs_changed(%rip)
	movq	%rbx, %rdi
	callq	tcp_process_refused_data
	cmpb	$0, tcp_active_pcbs_changed(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB4_10
.LBB4_9:                                #   in Loop: Header=BB4_2 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB4_12
	.p2align	4, 0x90
.LBB4_10:                               #   in Loop: Header=BB4_1 Depth=1
	movl	$42, __A_VARIABLE(%rip)
.LBB4_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_2 Depth 2
	movl	$42, __A_VARIABLE(%rip)
	movq	tcp_active_pcbs(%rip), %rbx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	jne	.LBB4_2
.LBB4_13:
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end4:
	.size	tcp_fasttmr, .Lfunc_end4-tcp_fasttmr
                                        # -- End function
	.globl	tcp_slowtmr             # -- Begin function tcp_slowtmr
	.p2align	4, 0x90
	.type	tcp_slowtmr,@function
tcp_slowtmr:                            # @tcp_slowtmr
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$24, %rsp
	addl	$1, tcp_ticks(%rip)
	addb	$1, tcp_timer_ctr(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	tcp_active_pcbs(%rip), %r14
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%r14, %r14
	je	.LBB5_15
# %bb.1:                                # %.preheader1
	xorl	%eax, %eax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movabsq	$2361183241434822607, %r13 # imm = 0x20C49BA5E353F7CF
	jmp	.LBB5_4
	.p2align	4, 0x90
.LBB5_12:                               #   in Loop: Header=BB5_4 Depth=1
	movq	56(%r14), %r15
.LBB5_13:                               #   in Loop: Header=BB5_4 Depth=1
	movq	%r14, -48(%rbp)         # 8-byte Spill
.LBB5_14:                               #   in Loop: Header=BB5_4 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r15, %r14
	testq	%r15, %r15
	je	.LBB5_15
.LBB5_4:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_75 Depth 2
	movl	72(%r14), %eax
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB5_5
# %bb.7:                                #   in Loop: Header=BB5_4 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1, %eax
	je	.LBB5_8
# %bb.9:                                #   in Loop: Header=BB5_4 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$10, %eax
	je	.LBB5_10
# %bb.11:                               #   in Loop: Header=BB5_4 Depth=1
	movb	tcp_timer_ctr(%rip), %cl
	cmpb	%cl, 86(%r14)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB5_12
# %bb.19:                               #   in Loop: Header=BB5_4 Depth=1
	movb	%cl, 86(%r14)
	movl	$42, __A_VARIABLE(%rip)
	movb	126(%r14), %cl
	cmpl	$2, %eax
	jne	.LBB5_24
# %bb.20:                               #   in Loop: Header=BB5_4 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movb	$1, %r12b
	cmpb	$5, %cl
	jbe	.LBB5_21
	jmp	.LBB5_59
	.p2align	4, 0x90
.LBB5_24:                               #   in Loop: Header=BB5_4 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$12, %cl
	jae	.LBB5_25
.LBB5_21:                               #   in Loop: Header=BB5_4 Depth=1
	movzbl	269(%r14), %eax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB5_42
# %bb.22:                               #   in Loop: Header=BB5_4 Depth=1
	cmpq	$0, 192(%r14)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB5_23
# %bb.26:                               #   in Loop: Header=BB5_4 Depth=1
	cmpq	$0, 184(%r14)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB5_27
# %bb.28:                               #   in Loop: Header=BB5_4 Depth=1
	cmpb	$12, 270(%r14)
	movl	$42, __A_VARIABLE(%rip)
	jb	.LBB5_29
.LBB5_25:                               #   in Loop: Header=BB5_4 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movb	$1, %r12b
	jmp	.LBB5_59
.LBB5_42:                               #   in Loop: Header=BB5_4 Depth=1
	movzwl	108(%r14), %eax
	movl	$42, __A_VARIABLE(%rip)
	testw	%ax, %ax
	js	.LBB5_46
# %bb.43:                               #   in Loop: Header=BB5_4 Depth=1
	movzwl	%ax, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$32767, %ecx            # imm = 0x7FFF
	jne	.LBB5_45
# %bb.44:                               #   in Loop: Header=BB5_4 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB5_47
.LBB5_29:                               #   in Loop: Header=BB5_4 Depth=1
	movb	tcp_persist_backoff-1(%rax), %al
	movb	268(%r14), %cl
	movl	$42, __A_VARIABLE(%rip)
	cmpb	%al, %cl
	jae	.LBB5_31
# %bb.30:                               #   in Loop: Header=BB5_4 Depth=1
	addb	$1, %cl
	movb	%cl, 268(%r14)
	movl	$42, __A_VARIABLE(%rip)
.LBB5_31:                               #   in Loop: Header=BB5_4 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpb	%al, %cl
	jb	.LBB5_57
# %bb.32:                               #   in Loop: Header=BB5_4 Depth=1
	movl	160(%r14), %eax
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB5_33
# %bb.34:                               #   in Loop: Header=BB5_4 Depth=1
	movzwl	%ax, %esi
	movq	%r14, %rdi
	callq	tcp_split_unsent_seg
	movl	$42, __A_VARIABLE(%rip)
	testb	%al, %al
	jne	.LBB5_37
# %bb.35:                               #   in Loop: Header=BB5_4 Depth=1
	movq	%r14, %rdi
	callq	tcp_output
	movl	$42, __A_VARIABLE(%rip)
	testb	%al, %al
	je	.LBB5_36
.LBB5_37:                               #   in Loop: Header=BB5_4 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB5_38
.LBB5_45:                               #   in Loop: Header=BB5_4 Depth=1
	addl	$1, %eax
	movw	%ax, 108(%r14)
	movl	$42, __A_VARIABLE(%rip)
.LBB5_46:                               #   in Loop: Header=BB5_4 Depth=1
	cmpw	124(%r14), %ax
	movl	$42, __A_VARIABLE(%rip)
	jl	.LBB5_58
.LBB5_47:                               #   in Loop: Header=BB5_4 Depth=1
	movq	%r14, %rdi
	callq	tcp_rexmit_rto_prepare
	movl	$42, __A_VARIABLE(%rip)
	testb	%al, %al
	je	.LBB5_50
# %bb.48:                               #   in Loop: Header=BB5_4 Depth=1
	cmpq	$0, 192(%r14)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB5_58
# %bb.49:                               #   in Loop: Header=BB5_4 Depth=1
	cmpq	$0, 184(%r14)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB5_58
.LBB5_50:                               #   in Loop: Header=BB5_4 Depth=1
	cmpl	$2, 72(%r14)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB5_54
# %bb.51:                               #   in Loop: Header=BB5_4 Depth=1
	movb	126(%r14), %cl
	movl	$42, __A_VARIABLE(%rip)
	movb	$12, %al
	cmpb	$11, %cl
	ja	.LBB5_53
# %bb.52:                               #   in Loop: Header=BB5_4 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	%ecx, %eax
.LBB5_53:                               #   in Loop: Header=BB5_4 Depth=1
	movswl	120(%r14), %ecx
	sarl	$3, %ecx
	movswl	122(%r14), %edx
	addl	%ecx, %edx
	movzbl	%al, %eax
	movb	tcp_backoff(%rax), %cl
	shll	%cl, %edx
	cmpl	$32767, %edx            # imm = 0x7FFF
	movl	$32767, %eax            # imm = 0x7FFF
	cmovgel	%eax, %edx
	movw	%dx, 124(%r14)
	movl	$42, __A_VARIABLE(%rip)
.LBB5_54:                               #   in Loop: Header=BB5_4 Depth=1
	movw	$0, 108(%r14)
	movl	132(%r14), %eax
	movl	160(%r14), %edx
	cmpl	%edx, %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmovbl	%eax, %edx
	shrl	%edx
	movl	%edx, 136(%r14)
	movzwl	110(%r14), %eax
	leal	(%rax,%rax), %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%ecx, %edx
	jae	.LBB5_56
# %bb.55:                               #   in Loop: Header=BB5_4 Depth=1
	movl	%ecx, 136(%r14)
	movl	$42, __A_VARIABLE(%rip)
.LBB5_56:                               #   in Loop: Header=BB5_4 Depth=1
	movl	%eax, 132(%r14)
	movl	$0, 176(%r14)
	movq	%r14, %rdi
	callq	tcp_rexmit_rto_commit
	jmp	.LBB5_57
.LBB5_33:                               #   in Loop: Header=BB5_4 Depth=1
	movq	%r14, %rdi
	callq	tcp_zero_window_probe
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testb	%al, %al
	jne	.LBB5_40
.LBB5_38:                               #   in Loop: Header=BB5_4 Depth=1
	movb	$0, 268(%r14)
	movb	269(%r14), %al
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$6, %al
	ja	.LBB5_41
# %bb.39:                               #   in Loop: Header=BB5_4 Depth=1
	addb	$1, %al
	movb	%al, 269(%r14)
	jmp	.LBB5_40
.LBB5_36:                               #   in Loop: Header=BB5_4 Depth=1
	movl	$42, __A_VARIABLE(%rip)
.LBB5_40:                               #   in Loop: Header=BB5_4 Depth=1
	movl	$42, __A_VARIABLE(%rip)
.LBB5_41:                               #   in Loop: Header=BB5_4 Depth=1
	movl	$42, __A_VARIABLE(%rip)
.LBB5_57:                               #   in Loop: Header=BB5_4 Depth=1
	movl	$42, __A_VARIABLE(%rip)
.LBB5_58:                               #   in Loop: Header=BB5_4 Depth=1
	xorl	%r12d, %r12d
.LBB5_59:                               #   in Loop: Header=BB5_4 Depth=1
	movl	72(%r14), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$6, %eax
	jne	.LBB5_63
# %bb.60:                               #   in Loop: Header=BB5_4 Depth=1
	movzwl	82(%r14), %ecx
	movl	$42, __A_VARIABLE(%rip)
	testb	$16, %cl
	je	.LBB5_63
# %bb.61:                               #   in Loop: Header=BB5_4 Depth=1
	movl	tcp_ticks(%rip), %ecx
	subl	88(%r14), %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$41, %ecx
	jb	.LBB5_63
# %bb.62:                               #   in Loop: Header=BB5_4 Depth=1
	addb	$1, %r12b
	movl	$42, __A_VARIABLE(%rip)
	.p2align	4, 0x90
.LBB5_63:                               #   in Loop: Header=BB5_4 Depth=1
	testb	$8, 49(%r14)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB5_64
.LBB5_71:                               #   in Loop: Header=BB5_4 Depth=1
	xorl	%r15d, %r15d
.LBB5_72:                               #   in Loop: Header=BB5_4 Depth=1
	movq	200(%r14), %rbx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	je	.LBB5_79
# %bb.73:                               #   in Loop: Header=BB5_4 Depth=1
	movl	tcp_ticks(%rip), %eax
	subl	88(%r14), %eax
	movswl	124(%r14), %ecx
	addl	%ecx, %ecx
	leal	(%rcx,%rcx,2), %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%ecx, %eax
	jb	.LBB5_79
# %bb.74:                               #   in Loop: Header=BB5_4 Depth=1
	movl	%r15d, -52(%rbp)        # 4-byte Spill
	movq	%r13, %r15
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB5_75
	.p2align	4, 0x90
.LBB5_77:                               #   in Loop: Header=BB5_75 Depth=2
	movl	$3, %edi
	movq	%rbx, %rsi
	callq	memp_free
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r13, %rbx
	testq	%r13, %r13
	je	.LBB5_78
.LBB5_75:                               #   Parent Loop BB5_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%rbx), %r13
	movl	$42, __A_VARIABLE(%rip)
	movq	8(%rbx), %rdi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB5_77
# %bb.76:                               #   in Loop: Header=BB5_75 Depth=2
	callq	pbuf_free
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB5_77
	.p2align	4, 0x90
.LBB5_64:                               #   in Loop: Header=BB5_4 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$4, %eax
	je	.LBB5_66
# %bb.65:                               #   in Loop: Header=BB5_4 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$7, %eax
	jne	.LBB5_71
.LBB5_66:                               #   in Loop: Header=BB5_4 Depth=1
	movl	tcp_ticks(%rip), %ecx
	subl	88(%r14), %ecx
	movl	264(%r14), %esi
	leaq	675000(%rsi), %rax
	shrq	$2, %rax
	mulq	%r13
	shrq	$4, %rdx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rdx
	jae	.LBB5_68
# %bb.67:                               #   in Loop: Header=BB5_4 Depth=1
	addb	$1, %r12b
	movl	$42, __A_VARIABLE(%rip)
	movb	$1, %r15b
	jmp	.LBB5_72
.LBB5_78:                               #   in Loop: Header=BB5_4 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	$0, 200(%r14)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r15, %r13
	movl	-52(%rbp), %r15d        # 4-byte Reload
.LBB5_79:                               #   in Loop: Header=BB5_4 Depth=1
	movl	72(%r14), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$3, %eax
	jne	.LBB5_82
# %bb.80:                               #   in Loop: Header=BB5_4 Depth=1
	movl	tcp_ticks(%rip), %eax
	subl	88(%r14), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$41, %eax
	jb	.LBB5_85
# %bb.81:                               #   in Loop: Header=BB5_4 Depth=1
	addb	$1, %r12b
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB5_85
	.p2align	4, 0x90
.LBB5_82:                               #   in Loop: Header=BB5_4 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$9, %eax
	jne	.LBB5_86
# %bb.83:                               #   in Loop: Header=BB5_4 Depth=1
	movl	tcp_ticks(%rip), %eax
	subl	88(%r14), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$241, %eax
	jb	.LBB5_86
# %bb.84:                               #   in Loop: Header=BB5_4 Depth=1
	addb	$1, %r12b
	.p2align	4, 0x90
.LBB5_85:                               #   in Loop: Header=BB5_4 Depth=1
	movl	$42, __A_VARIABLE(%rip)
.LBB5_86:                               #   in Loop: Header=BB5_4 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testb	%r12b, %r12b
	je	.LBB5_100
# %bb.87:                               #   in Loop: Header=BB5_4 Depth=1
	movq	256(%r14), %r12
	movq	%r14, %rdi
	callq	tcp_pcb_purge
	movl	$42, __A_VARIABLE(%rip)
	movq	tcp_active_pcbs(%rip), %rax
	cmpq	$0, -48(%rbp)           # 8-byte Folded Reload
	je	.LBB5_91
# %bb.88:                               #   in Loop: Header=BB5_4 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rax, %r14
	je	.LBB5_89
# %bb.90:                               #   in Loop: Header=BB5_4 Depth=1
	movq	56(%r14), %rax
	movq	-48(%rbp), %rcx         # 8-byte Reload
	movq	%rax, 56(%rcx)
	jmp	.LBB5_94
.LBB5_100:                              #   in Loop: Header=BB5_4 Depth=1
	movq	56(%r14), %r15
	movb	84(%r14), %al
	addb	$1, %al
	movb	%al, 84(%r14)
	cmpb	85(%r14), %al
	movl	$42, __A_VARIABLE(%rip)
	jb	.LBB5_13
# %bb.101:                              #   in Loop: Header=BB5_4 Depth=1
	movb	$0, 84(%r14)
	movb	$0, tcp_active_pcbs_changed(%rip)
	movq	248(%r14), %rcx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rcx, %rcx
	je	.LBB5_102
# %bb.103:                              #   in Loop: Header=BB5_4 Depth=1
	movq	64(%r14), %rdi
	movq	%r14, %rsi
	callq	*%rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$0, tcp_active_pcbs_changed(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB5_3
# %bb.104:                              #   in Loop: Header=BB5_4 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testb	%al, %al
	jne	.LBB5_13
	jmp	.LBB5_105
.LBB5_91:                               #   in Loop: Header=BB5_4 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r14, %rax
	jne	.LBB5_92
# %bb.93:                               #   in Loop: Header=BB5_4 Depth=1
	movq	56(%r14), %rax
	movq	%rax, tcp_active_pcbs(%rip)
.LBB5_94:                               #   in Loop: Header=BB5_4 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testb	%r15b, %r15b
	je	.LBB5_96
# %bb.95:                               #   in Loop: Header=BB5_4 Depth=1
	movl	92(%r14), %edx
	movl	144(%r14), %esi
	leaq	24(%r14), %r8
	movzwl	78(%r14), %r9d
	movzwl	80(%r14), %eax
	movl	%eax, (%rsp)
	movq	%r14, %rdi
	movq	%r14, %rcx
	callq	tcp_rst
	movl	$42, __A_VARIABLE(%rip)
.LBB5_96:                               #   in Loop: Header=BB5_4 Depth=1
	movq	56(%r14), %r15
	movq	64(%r14), %rbx
	cmpl	$1, 72(%r14)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB5_97
# %bb.98:                               #   in Loop: Header=BB5_4 Depth=1
	movl	$1, %edi
	movq	%r14, %rsi
	callq	memp_free
	movl	$42, __A_VARIABLE(%rip)
	movb	$0, tcp_active_pcbs_changed(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%r12, %r12
	je	.LBB5_99
# %bb.2:                                #   in Loop: Header=BB5_4 Depth=1
	movq	%rbx, %rdi
	movl	$-13, %esi
	callq	*%r12
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$0, tcp_active_pcbs_changed(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB5_14
.LBB5_3:                                #   in Loop: Header=BB5_4 Depth=1
	movq	tcp_active_pcbs(%rip), %r14
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$0, %eax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	testq	%r14, %r14
	jne	.LBB5_4
	jmp	.LBB5_15
.LBB5_99:                               #   in Loop: Header=BB5_4 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB5_14
.LBB5_68:                               #   in Loop: Header=BB5_4 Depth=1
	movzbl	271(%r14), %eax
	imulq	$75000, %rax, %rax      # imm = 0x124F8
	addq	%rsi, %rax
	shrq	$2, %rax
	mulq	%r13
	shrq	$4, %rdx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rdx
	jae	.LBB5_71
# %bb.69:                               #   in Loop: Header=BB5_4 Depth=1
	movq	%r14, %rdi
	callq	tcp_keepalive
	movl	$42, __A_VARIABLE(%rip)
	testb	%al, %al
	jne	.LBB5_71
# %bb.70:                               #   in Loop: Header=BB5_4 Depth=1
	addb	$1, 271(%r14)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB5_71
.LBB5_102:                              #   in Loop: Header=BB5_4 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB5_105:                              #   in Loop: Header=BB5_4 Depth=1
	movq	%r14, %rdi
	callq	tcp_output
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB5_13
.LBB5_15:
	movq	tcp_tw_pcbs(%rip), %rbx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	je	.LBB5_118
# %bb.16:                               # %.preheader
	xorl	%r14d, %r14d
	jmp	.LBB5_17
	.p2align	4, 0x90
.LBB5_107:                              #   in Loop: Header=BB5_17 Depth=1
	movq	56(%rbx), %r15
	movq	%rbx, %r14
.LBB5_117:                              #   in Loop: Header=BB5_17 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r15, %rbx
	testq	%r15, %r15
	je	.LBB5_118
.LBB5_17:                               # =>This Inner Loop Header: Depth=1
	cmpl	$10, 72(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB5_18
# %bb.106:                              #   in Loop: Header=BB5_17 Depth=1
	movl	tcp_ticks(%rip), %eax
	subl	88(%rbx), %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$240, %eax
	jbe	.LBB5_107
# %bb.108:                              #   in Loop: Header=BB5_17 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rdi
	callq	tcp_pcb_purge
	movl	$42, __A_VARIABLE(%rip)
	movq	tcp_tw_pcbs(%rip), %rax
	testq	%r14, %r14
	je	.LBB5_112
# %bb.109:                              #   in Loop: Header=BB5_17 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rax, %rbx
	je	.LBB5_110
# %bb.111:                              #   in Loop: Header=BB5_17 Depth=1
	movq	56(%rbx), %rax
	movq	%rax, 56(%r14)
	movl	$42, __A_VARIABLE(%rip)
	movq	56(%rbx), %r15
	jmp	.LBB5_115
.LBB5_112:                              #   in Loop: Header=BB5_17 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rbx, %rax
	jne	.LBB5_113
# %bb.114:                              #   in Loop: Header=BB5_17 Depth=1
	movq	56(%rbx), %r15
	movq	%r15, tcp_tw_pcbs(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB5_115:                              #   in Loop: Header=BB5_17 Depth=1
	cmpl	$1, 72(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB5_97
# %bb.116:                              #   in Loop: Header=BB5_17 Depth=1
	movl	$1, %edi
	movq	%rbx, %rsi
	callq	memp_free
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB5_117
.LBB5_118:
	movl	$42, __A_VARIABLE(%rip)
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB5_5:
	movl	$.L.str.17, %edi
	jmp	.LBB5_6
.LBB5_8:
	movl	$.L.str.18, %edi
	jmp	.LBB5_6
.LBB5_10:
	movl	$.L.str.19, %edi
	jmp	.LBB5_6
.LBB5_18:
	movl	$.L.str.24, %edi
	jmp	.LBB5_6
.LBB5_97:
	movl	$.L.str, %edi
	jmp	.LBB5_6
.LBB5_110:
	movl	$.L.str.25, %edi
	jmp	.LBB5_6
.LBB5_89:
	movl	$.L.str.22, %edi
	jmp	.LBB5_6
.LBB5_113:
	movl	$.L.str.26, %edi
	jmp	.LBB5_6
.LBB5_23:
	movl	$.L.str.20, %edi
	jmp	.LBB5_6
.LBB5_27:
	movl	$.L.str.21, %edi
	jmp	.LBB5_6
.LBB5_92:
	movl	$.L.str.23, %edi
.LBB5_6:
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$.L.str.1, %edi
	movl	$.L.str.2, %esi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$3, %edi
	callq	ukplat_terminate
.Lfunc_end5:
	.size	tcp_slowtmr, .Lfunc_end5-tcp_slowtmr
                                        # -- End function
	.globl	tcp_close               # -- Begin function tcp_close
	.p2align	4, 0x90
	.type	tcp_close,@function
tcp_close:                              # @tcp_close
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB6_4
# %bb.1:
	cmpl	$1, 72(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB6_3
# %bb.2:
	orb	$16, 82(%rdi)
	movl	$42, __A_VARIABLE(%rip)
.LBB6_3:
	movl	$1, %esi
	callq	tcp_close_shutdown
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.LBB6_4:
	movl	$.L.str.3, %edi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$.L.str.1, %edi
	movl	$.L.str.2, %esi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$3, %edi
	callq	ukplat_terminate
.Lfunc_end6:
	.size	tcp_close, .Lfunc_end6-tcp_close
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function tcp_close_shutdown
	.type	tcp_close_shutdown,@function
tcp_close_shutdown:                     # @tcp_close_shutdown
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB7_1
# %bb.3:
	movq	%rdi, %rbx
	movl	$42, __A_VARIABLE(%rip)
	movl	72(%rdi), %eax
	testb	%sil, %sil
	je	.LBB7_25
# %bb.4:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$4, %eax
	je	.LBB7_6
# %bb.5:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$7, %eax
	jne	.LBB7_25
.LBB7_6:
	cmpq	$0, 208(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB7_8
# %bb.7:
	movzwl	82(%rbx), %ecx
	jmp	.LBB7_9
.LBB7_8:
	movzwl	82(%rbx), %ecx
	testl	$256, %ecx              # imm = 0x100
	movl	$65535, %edx            # imm = 0xFFFF
	movl	$262142, %esi           # imm = 0x3FFFE
	cmovel	%edx, %esi
	cmpl	%esi, 96(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB7_9
.LBB7_25:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, %eax
	je	.LBB7_19
# %bb.26:
	cmpl	$1, %eax
	je	.LBB7_38
# %bb.27:
	testl	%eax, %eax
	jne	.LBB7_56
# %bb.28:
	cmpw	$0, 78(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB7_37
# %bb.29:
	movq	tcp_bound_pcbs(%rip), %rax
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rbx, %rax
	je	.LBB7_30
# %bb.31:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB7_35
	.p2align	4, 0x90
.LBB7_32:                               # =>This Inner Loop Header: Depth=1
	movq	56(%rax), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rbx, %rcx
	je	.LBB7_33
# %bb.34:                               #   in Loop: Header=BB7_32 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rcx, %rax
	testq	%rcx, %rcx
	jne	.LBB7_32
	jmp	.LBB7_35
.LBB7_9:
	movl	$42, __A_VARIABLE(%rip)
	testb	$16, %cl
	je	.LBB7_10
# %bb.11:
	movl	92(%rbx), %edx
	movl	144(%rbx), %esi
	leaq	24(%rbx), %r8
	movzwl	78(%rbx), %r9d
	movzwl	80(%rbx), %eax
	movl	%eax, (%rsp)
	movq	%rbx, %rdi
	movq	%rbx, %rcx
	callq	tcp_rst
	movq	%rbx, %rdi
	callq	tcp_pcb_purge
	movq	tcp_active_pcbs(%rip), %rax
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rbx, %rax
	je	.LBB7_12
# %bb.13:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB7_17
	.p2align	4, 0x90
.LBB7_14:                               # =>This Inner Loop Header: Depth=1
	movq	56(%rax), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rbx, %rcx
	je	.LBB7_15
# %bb.16:                               #   in Loop: Header=BB7_14 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rcx, %rax
	testq	%rcx, %rcx
	jne	.LBB7_14
	jmp	.LBB7_17
.LBB7_38:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	tcp_bound_pcbs(%rip), %rax
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB7_39
	.p2align	4, 0x90
.LBB7_42:                               #   in Loop: Header=BB7_39 Depth=1
	movq	56(%rax), %rax
.LBB7_39:                               # =>This Inner Loop Header: Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB7_43
# %bb.40:                               #   in Loop: Header=BB7_39 Depth=1
	cmpq	%rbx, 216(%rax)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB7_42
# %bb.41:                               #   in Loop: Header=BB7_39 Depth=1
	movq	$0, 216(%rax)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB7_42
.LBB7_43:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	tcp_active_pcbs(%rip), %rax
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB7_44
	.p2align	4, 0x90
.LBB7_47:                               #   in Loop: Header=BB7_44 Depth=1
	movq	56(%rax), %rax
.LBB7_44:                               # =>This Inner Loop Header: Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB7_48
# %bb.45:                               #   in Loop: Header=BB7_44 Depth=1
	cmpq	%rbx, 216(%rax)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB7_47
# %bb.46:                               #   in Loop: Header=BB7_44 Depth=1
	movq	$0, 216(%rax)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB7_47
.LBB7_48:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	tcp_tw_pcbs(%rip), %rax
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB7_49
	.p2align	4, 0x90
.LBB7_52:                               #   in Loop: Header=BB7_49 Depth=1
	movq	56(%rax), %rax
.LBB7_49:                               # =>This Inner Loop Header: Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB7_53
# %bb.50:                               #   in Loop: Header=BB7_49 Depth=1
	cmpq	%rbx, 216(%rax)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB7_52
# %bb.51:                               #   in Loop: Header=BB7_49 Depth=1
	movq	$0, 216(%rax)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB7_52
.LBB7_53:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$tcp_listen_pcbs, %edi
	movq	%rbx, %rsi
	callq	tcp_pcb_remove
	cmpl	$1, 72(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB7_54
# %bb.55:
	movl	$2, %edi
	jmp	.LBB7_23
.LBB7_19:
	movl	$tcp_active_pcbs, %edi
	movq	%rbx, %rsi
	callq	tcp_pcb_remove
	movb	$1, tcp_active_pcbs_changed(%rip)
	jmp	.LBB7_20
.LBB7_56:
	movq	%rbx, %rdi
	callq	tcp_close_shutdown_fin
                                        # kill: def $al killed $al def $eax
	jmp	.LBB7_57
.LBB7_12:
	movq	56(%rbx), %rax
	movq	%rax, tcp_active_pcbs(%rip)
	jmp	.LBB7_17
.LBB7_15:
	movq	56(%rbx), %rcx
	movq	%rcx, 56(%rax)
	movl	$42, __A_VARIABLE(%rip)
.LBB7_17:
	movl	$42, __A_VARIABLE(%rip)
	movq	$0, 56(%rbx)
	movb	$1, tcp_active_pcbs_changed(%rip)
	cmpq	%rbx, tcp_input_pcb(%rip)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB7_18
.LBB7_20:
	cmpl	$1, 72(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB7_22
# %bb.21:
	movl	$.L.str, %edi
	jmp	.LBB7_2
.LBB7_18:
	callq	tcp_trigger_input_pcb_close
	jmp	.LBB7_24
.LBB7_30:
	leaq	56(%rbx), %rax
	movq	56(%rbx), %rcx
	movq	%rcx, tcp_bound_pcbs(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB7_36
.LBB7_33:
	movq	56(%rbx), %rcx
	movq	%rcx, 56(%rax)
	movl	$42, __A_VARIABLE(%rip)
.LBB7_35:
	movl	$42, __A_VARIABLE(%rip)
	leaq	56(%rbx), %rax
.LBB7_36:
	movq	$0, (%rax)
	movl	$42, __A_VARIABLE(%rip)
.LBB7_37:
	movl	$42, __A_VARIABLE(%rip)
.LBB7_22:
	movl	$1, %edi
.LBB7_23:
	movq	%rbx, %rsi
	callq	memp_free
	movl	$42, __A_VARIABLE(%rip)
.LBB7_24:
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
.LBB7_57:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
                                        # kill: def $al killed $al killed $eax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.LBB7_1:
	movl	$.L.str.45, %edi
	jmp	.LBB7_2
.LBB7_10:
	movl	$.L.str.46, %edi
	jmp	.LBB7_2
.LBB7_54:
	movl	$.L.str.50, %edi
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
	.size	tcp_close_shutdown, .Lfunc_end7-tcp_close_shutdown
                                        # -- End function
	.globl	tcp_shutdown            # -- Begin function tcp_shutdown
	.p2align	4, 0x90
	.type	tcp_shutdown,@function
tcp_shutdown:                           # @tcp_shutdown
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB8_15
# %bb.1:
	movq	%rdi, %rbx
	movl	72(%rdi), %ecx
	movl	$42, __A_VARIABLE(%rip)
	movb	$-11, %al
	cmpl	$1, %ecx
	je	.LBB8_14
# %bb.2:
	movl	$42, __A_VARIABLE(%rip)
	testl	%esi, %esi
	je	.LBB8_5
# %bb.3:
	orb	$16, 82(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	testl	%edx, %edx
	je	.LBB8_10
# %bb.4:
	movq	%rbx, %rdi
	movl	$1, %esi
	jmp	.LBB8_9
.LBB8_5:
	movl	$42, __A_VARIABLE(%rip)
	testl	%edx, %edx
	je	.LBB8_13
# %bb.6:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$7, %ecx
	ja	.LBB8_14
# %bb.7:
	movl	$152, %edx
	btl	%ecx, %edx
	jae	.LBB8_14
# %bb.8:
	movq	%rbx, %rdi
	xorl	%esi, %esi
.LBB8_9:
	callq	tcp_close_shutdown
                                        # kill: def $al killed $al def $eax
	jmp	.LBB8_14
.LBB8_10:
	movq	208(%rbx), %rdi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB8_12
# %bb.11:
	callq	pbuf_free
	movq	$0, 208(%rbx)
	movl	$42, __A_VARIABLE(%rip)
.LBB8_12:
	movl	$42, __A_VARIABLE(%rip)
.LBB8_13:
	xorl	%eax, %eax
.LBB8_14:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
                                        # kill: def $al killed $al killed $eax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.LBB8_15:
	movl	$.L.str.4, %edi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$.L.str.1, %edi
	movl	$.L.str.2, %esi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$3, %edi
	callq	ukplat_terminate
.Lfunc_end8:
	.size	tcp_shutdown, .Lfunc_end8-tcp_shutdown
                                        # -- End function
	.globl	tcp_abandon             # -- Begin function tcp_abandon
	.p2align	4, 0x90
	.type	tcp_abandon,@function
tcp_abandon:                            # @tcp_abandon
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$40, %rsp
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB9_1
# %bb.3:
	movq	%rdi, %r15
	movl	72(%rdi), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1, %eax
	je	.LBB9_4
# %bb.5:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$10, %eax
	jne	.LBB9_9
# %bb.6:
	movl	$tcp_tw_pcbs, %edi
	movq	%r15, %rsi
	callq	tcp_pcb_remove
	cmpl	$1, 72(%r15)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB9_7
# %bb.8:
	movl	$1, %edi
	movq	%r15, %rsi
	callq	memp_free
	jmp	.LBB9_45
.LBB9_9:
	movl	%esi, %r13d
	movl	144(%r15), %r14d
	movl	92(%r15), %ebx
	movq	256(%r15), %rdx
	movq	64(%r15), %rsi
	movl	$42, __A_VARIABLE(%rip)
	movzwl	78(%r15), %r12d
	testl	%eax, %eax
	movq	%rdx, -64(%rbp)         # 8-byte Spill
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	movl	%r14d, -48(%rbp)        # 4-byte Spill
	movl	%ebx, -44(%rbp)         # 4-byte Spill
	je	.LBB9_10
# %bb.20:
	movl	$tcp_active_pcbs, %edi
	movq	%r15, %rsi
	callq	tcp_pcb_remove
	movb	$1, tcp_active_pcbs_changed(%rip)
	jmp	.LBB9_21
.LBB9_10:
	movl	$42, __A_VARIABLE(%rip)
	testw	%r12w, %r12w
	je	.LBB9_11
# %bb.12:
	movq	tcp_bound_pcbs(%rip), %rax
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r15, %rax
	je	.LBB9_13
# %bb.14:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB9_18
	.p2align	4, 0x90
.LBB9_15:                               # =>This Inner Loop Header: Depth=1
	movq	56(%rax), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r15, %rcx
	je	.LBB9_16
# %bb.17:                               #   in Loop: Header=BB9_15 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rcx, %rax
	testq	%rcx, %rcx
	jne	.LBB9_15
	jmp	.LBB9_18
.LBB9_11:
	xorl	%r12d, %r12d
	xorl	%r13d, %r13d
	jmp	.LBB9_22
.LBB9_13:
	leaq	56(%r15), %rax
	movq	56(%r15), %rcx
	movq	%rcx, tcp_bound_pcbs(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB9_19
.LBB9_16:
	movq	56(%r15), %rcx
	movq	%rcx, 56(%rax)
	movl	$42, __A_VARIABLE(%rip)
.LBB9_18:
	movl	$42, __A_VARIABLE(%rip)
	leaq	56(%r15), %rax
.LBB9_19:
	movq	$0, (%rax)
	xorl	%r12d, %r12d
	xorl	%r13d, %r13d
.LBB9_21:
	movl	$42, __A_VARIABLE(%rip)
.LBB9_22:
	movq	192(%r15), %r14
	movl	$42, __A_VARIABLE(%rip)
	testq	%r14, %r14
	je	.LBB9_28
# %bb.23:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB9_24
	.p2align	4, 0x90
.LBB9_26:                               #   in Loop: Header=BB9_24 Depth=1
	movl	$3, %edi
	movq	%r14, %rsi
	callq	memp_free
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %r14
	testq	%rbx, %rbx
	je	.LBB9_27
.LBB9_24:                               # =>This Inner Loop Header: Depth=1
	movq	(%r14), %rbx
	movl	$42, __A_VARIABLE(%rip)
	movq	8(%r14), %rdi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB9_26
# %bb.25:                               #   in Loop: Header=BB9_24 Depth=1
	callq	pbuf_free
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB9_26
.LBB9_27:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB9_28:
	movq	184(%r15), %rbx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	je	.LBB9_34
# %bb.29:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB9_30
	.p2align	4, 0x90
.LBB9_32:                               #   in Loop: Header=BB9_30 Depth=1
	movl	$3, %edi
	movq	%rbx, %rsi
	callq	memp_free
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %rbx
	testq	%r14, %r14
	je	.LBB9_33
.LBB9_30:                               # =>This Inner Loop Header: Depth=1
	movq	(%rbx), %r14
	movl	$42, __A_VARIABLE(%rip)
	movq	8(%rbx), %rdi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB9_32
# %bb.31:                               #   in Loop: Header=BB9_30 Depth=1
	callq	pbuf_free
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB9_32
.LBB9_33:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB9_34:
	movq	200(%r15), %rbx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	je	.LBB9_40
# %bb.35:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB9_36
	.p2align	4, 0x90
.LBB9_38:                               #   in Loop: Header=BB9_36 Depth=1
	movl	$3, %edi
	movq	%rbx, %rsi
	callq	memp_free
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %rbx
	testq	%r14, %r14
	je	.LBB9_39
.LBB9_36:                               # =>This Inner Loop Header: Depth=1
	movq	(%rbx), %r14
	movl	$42, __A_VARIABLE(%rip)
	movq	8(%rbx), %rdi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB9_38
# %bb.37:                               #   in Loop: Header=BB9_36 Depth=1
	callq	pbuf_free
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB9_38
.LBB9_39:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB9_40:
	movl	$42, __A_VARIABLE(%rip)
	testl	%r13d, %r13d
	je	.LBB9_42
# %bb.41:
	leaq	24(%r15), %r8
	movzwl	80(%r15), %eax
	movl	%eax, (%rsp)
	movzwl	%r12w, %r9d
	movq	%r15, %rdi
	movl	-48(%rbp), %esi         # 4-byte Reload
	movl	-44(%rbp), %edx         # 4-byte Reload
	movq	%r15, %rcx
	callq	tcp_rst
	movl	$42, __A_VARIABLE(%rip)
.LBB9_42:
	cmpl	$1, 72(%r15)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB9_7
# %bb.43:
	movl	$1, %edi
	movq	%r15, %rsi
	callq	memp_free
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	-64(%rbp), %rax         # 8-byte Reload
	testq	%rax, %rax
	je	.LBB9_46
# %bb.44:
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movl	$-13, %esi
	callq	*%rax
.LBB9_45:
	movl	$42, __A_VARIABLE(%rip)
.LBB9_46:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB9_1:
	movl	$.L.str.5, %edi
	jmp	.LBB9_2
.LBB9_4:
	movl	$.L.str.6, %edi
	jmp	.LBB9_2
.LBB9_7:
	movl	$.L.str, %edi
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
	.size	tcp_abandon, .Lfunc_end9-tcp_abandon
                                        # -- End function
	.globl	tcp_pcb_remove          # -- Begin function tcp_pcb_remove
	.p2align	4, 0x90
	.type	tcp_pcb_remove,@function
tcp_pcb_remove:                         # @tcp_pcb_remove
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rsi, %rsi
	je	.LBB10_1
# %bb.3:
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB10_4
# %bb.5:
	movq	%rsi, %rbx
	movq	(%rdi), %rax
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rsi, %rax
	je	.LBB10_6
# %bb.7:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB10_11
	.p2align	4, 0x90
.LBB10_8:                               # =>This Inner Loop Header: Depth=1
	movq	56(%rax), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rbx, %rcx
	je	.LBB10_9
# %bb.10:                               #   in Loop: Header=BB10_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rcx, %rax
	testq	%rcx, %rcx
	jne	.LBB10_8
	jmp	.LBB10_11
.LBB10_6:
	movq	56(%rbx), %rax
	movq	%rax, (%rdi)
	jmp	.LBB10_11
.LBB10_9:
	movq	56(%rbx), %rcx
	movq	%rcx, 56(%rax)
	movl	$42, __A_VARIABLE(%rip)
.LBB10_11:
	movl	$42, __A_VARIABLE(%rip)
	movq	$0, 56(%rbx)
	movq	%rbx, %rdi
	callq	tcp_pcb_purge
	movl	72(%rbx), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$10, %eax
	jne	.LBB10_13
# %bb.12:
	movl	$42, __A_VARIABLE(%rip)
.LBB10_19:
	cmpq	$0, 184(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB10_20
# %bb.21:
	cmpq	$0, 192(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB10_22
# %bb.23:
	cmpq	$0, 200(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB10_15
# %bb.24:
	movl	$.L.str.41, %edi
	jmp	.LBB10_2
.LBB10_13:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1, %eax
	jne	.LBB10_16
# %bb.14:
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB10_15
.LBB10_16:
	movzwl	82(%rbx), %ecx
	movl	$42, __A_VARIABLE(%rip)
	testb	$1, %cl
	je	.LBB10_18
# %bb.17:
	orl	$2, %ecx
	movw	%cx, 82(%rbx)
	movq	%rbx, %rdi
	callq	tcp_output
	movl	$42, __A_VARIABLE(%rip)
	movl	72(%rbx), %eax
.LBB10_18:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1, %eax
	jne	.LBB10_19
.LBB10_15:
	movl	$0, 72(%rbx)
	movw	$0, 78(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.LBB10_1:
	movl	$.L.str.37, %edi
	jmp	.LBB10_2
.LBB10_4:
	movl	$.L.str.38, %edi
	jmp	.LBB10_2
.LBB10_20:
	movl	$.L.str.39, %edi
	jmp	.LBB10_2
.LBB10_22:
	movl	$.L.str.40, %edi
.LBB10_2:
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$.L.str.1, %edi
	movl	$.L.str.2, %esi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$3, %edi
	callq	ukplat_terminate
.Lfunc_end10:
	.size	tcp_pcb_remove, .Lfunc_end10-tcp_pcb_remove
                                        # -- End function
	.globl	tcp_segs_free           # -- Begin function tcp_segs_free
	.p2align	4, 0x90
	.type	tcp_segs_free,@function
tcp_segs_free:                          # @tcp_segs_free
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB11_5
# %bb.1:                                # %.preheader
	movq	%rdi, %rbx
	jmp	.LBB11_2
	.p2align	4, 0x90
.LBB11_4:                               #   in Loop: Header=BB11_2 Depth=1
	movl	$3, %edi
	movq	%rbx, %rsi
	callq	memp_free
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %rbx
	testq	%r14, %r14
	je	.LBB11_5
.LBB11_2:                               # =>This Inner Loop Header: Depth=1
	movq	(%rbx), %r14
	movl	$42, __A_VARIABLE(%rip)
	movq	8(%rbx), %rdi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB11_4
# %bb.3:                                #   in Loop: Header=BB11_2 Depth=1
	callq	pbuf_free
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB11_4
.LBB11_5:
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end11:
	.size	tcp_segs_free, .Lfunc_end11-tcp_segs_free
                                        # -- End function
	.globl	tcp_abort               # -- Begin function tcp_abort
	.p2align	4, 0x90
	.type	tcp_abort,@function
tcp_abort:                              # @tcp_abort
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$1, %esi
	callq	tcp_abandon
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end12:
	.size	tcp_abort, .Lfunc_end12-tcp_abort
                                        # -- End function
	.globl	tcp_bind                # -- Begin function tcp_bind
	.p2align	4, 0x90
	.type	tcp_bind,@function
tcp_bind:                               # @tcp_bind
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
	movq	%rsi, %r13
	movq	%rdi, %r14
	movl	$42, __A_VARIABLE(%rip)
	testq	%rsi, %rsi
	jne	.LBB13_2
# %bb.1:
	movl	$42, __A_VARIABLE(%rip)
	movl	$ip_addr_any, %r13d
.LBB13_2:
	movl	$42, __A_VARIABLE(%rip)
	testq	%r14, %r14
	je	.LBB13_76
# %bb.3:
	cmpl	$0, 72(%r14)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB13_77
# %bb.4:
	testb	$4, 49(%r14)
	movl	$42, __A_VARIABLE(%rip)
	movl	$4, %r12d
	je	.LBB13_6
# %bb.5:
	movl	$42, __A_VARIABLE(%rip)
	movl	$3, %r12d
.LBB13_6:
	movl	$42, __A_VARIABLE(%rip)
	testq	%r13, %r13
	je	.LBB13_17
# %bb.7:
	cmpb	$6, 20(%r13)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB13_18
# %bb.8:
	cmpb	$0, 16(%r13)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB13_18
# %bb.9:
	movl	(%r13), %eax
	movl	%eax, %ecx
	andl	$49407, %ecx            # imm = 0xC0FF
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$33022, %ecx            # imm = 0x80FE
	jne	.LBB13_18
# %bb.10:
	movb	$6, -44(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	%eax, -64(%rbp)
	movl	4(%r13), %eax
	movl	%eax, -60(%rbp)
	movl	8(%r13), %eax
	movl	%eax, -56(%rbp)
	movl	12(%r13), %eax
	movl	%eax, -52(%rbp)
	movb	$0, -48(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	leaq	-64(%rbp), %r13
	movq	%r13, %rdi
	movq	%r13, %rsi
	callq	ip6_route
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB13_16
# %bb.11:
	movl	-64(%rbp), %ecx
	movl	%ecx, %edx
	andl	$49407, %edx            # imm = 0xC0FF
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$33022, %edx            # imm = 0x80FE
	je	.LBB13_14
# %bb.12:
	andl	$36863, %ecx            # imm = 0x8FFF
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$511, %rcx              # imm = 0x1FF
	je	.LBB13_14
# %bb.13:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$767, %ecx              # imm = 0x2FF
	jne	.LBB13_75
.LBB13_14:
	movb	264(%rax), %al
	addb	$1, %al
	movl	$42, __A_VARIABLE(%rip)
.LBB13_15:
	movb	%al, -48(%rbp)
	movl	$42, __A_VARIABLE(%rip)
.LBB13_16:
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB13_18
.LBB13_17:
	xorl	%r13d, %r13d
.LBB13_18:
	movl	$42, __A_VARIABLE(%rip)
	testw	%r15w, %r15w
	je	.LBB13_54
# %bb.19:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%esi, %esi
	jmp	.LBB13_21
	.p2align	4, 0x90
.LBB13_20:                              #   in Loop: Header=BB13_21 Depth=1
	addq	$1, %rsi
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r12, %rsi
	jae	.LBB13_55
.LBB13_21:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB13_24 Depth 2
	movq	tcp_pcb_lists(,%rsi,8), %rax
	movq	(%rax), %rdx
	jmp	.LBB13_24
.LBB13_22:                              #   in Loop: Header=BB13_24 Depth=2
	cmpl	%eax, %ecx
	je	.LBB13_74
	.p2align	4, 0x90
.LBB13_23:                              #   in Loop: Header=BB13_24 Depth=2
	movq	56(%rdx), %rdx
.LBB13_24:                              #   Parent Loop BB13_21 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdx, %rdx
	je	.LBB13_20
# %bb.25:                               #   in Loop: Header=BB13_24 Depth=2
	cmpw	%r15w, 78(%rdx)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB13_23
# %bb.26:                               #   in Loop: Header=BB13_24 Depth=2
	testb	$4, 49(%r14)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB13_28
# %bb.27:                               #   in Loop: Header=BB13_24 Depth=2
	testb	$4, 49(%rdx)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB13_23
.LBB13_28:                              #   in Loop: Header=BB13_24 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	testq	%r13, %r13
	je	.LBB13_30
# %bb.29:                               #   in Loop: Header=BB13_24 Depth=2
	cmpb	$6, 20(%r13)
	sete	%al
	movl	$42, __A_VARIABLE(%rip)
	movzbl	20(%rdx), %ecx
	cmpb	$6, %cl
	sete	%dil
	xorb	%dil, %al
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB13_23
	jmp	.LBB13_32
.LBB13_30:                              #   in Loop: Header=BB13_24 Depth=2
	movzbl	20(%rdx), %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$6, %cl
	je	.LBB13_23
# %bb.31:                               #   in Loop: Header=BB13_24 Depth=2
	xorl	%edi, %edi
.LBB13_32:                              #   in Loop: Header=BB13_24 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	(%rdx), %ebx
	testb	%dil, %dil
	je	.LBB13_38
# %bb.33:                               #   in Loop: Header=BB13_24 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	testl	%ebx, %ebx
	jne	.LBB13_36
# %bb.34:                               #   in Loop: Header=BB13_24 Depth=2
	cmpl	$0, 4(%rdx)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB13_36
# %bb.35:                               #   in Loop: Header=BB13_24 Depth=2
	cmpl	$0, 8(%rdx)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB13_37
.LBB13_36:                              #   in Loop: Header=BB13_24 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	testq	%r13, %r13
	jne	.LBB13_40
	jmp	.LBB13_74
.LBB13_37:                              #   in Loop: Header=BB13_24 Depth=2
	movl	12(%rdx), %ebx
.LBB13_38:                              #   in Loop: Header=BB13_24 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movb	$-8, %al
	testq	%r13, %r13
	je	.LBB13_72
# %bb.39:                               #   in Loop: Header=BB13_24 Depth=2
	testl	%ebx, %ebx
	je	.LBB13_72
.LBB13_40:                              #   in Loop: Header=BB13_24 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movzbl	20(%r13), %ebx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	(%r13), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$6, %bl
	jne	.LBB13_45
# %bb.41:                               #   in Loop: Header=BB13_24 Depth=2
	testl	%eax, %eax
	jne	.LBB13_46
# %bb.42:                               #   in Loop: Header=BB13_24 Depth=2
	cmpl	$0, 4(%r13)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB13_46
# %bb.43:                               #   in Loop: Header=BB13_24 Depth=2
	cmpl	$0, 8(%r13)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB13_46
# %bb.44:                               #   in Loop: Header=BB13_24 Depth=2
	cmpl	$0, 12(%r13)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB13_46
	jmp	.LBB13_74
.LBB13_45:                              #   in Loop: Header=BB13_24 Depth=2
	testl	%eax, %eax
	je	.LBB13_74
.LBB13_46:                              #   in Loop: Header=BB13_24 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	cmpb	%bl, %cl
	jne	.LBB13_23
# %bb.47:                               #   in Loop: Header=BB13_24 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	(%rdx), %ecx
	movl	$42, __A_VARIABLE(%rip)
	testb	%dil, %dil
	je	.LBB13_22
# %bb.48:                               #   in Loop: Header=BB13_24 Depth=2
	cmpl	%eax, %ecx
	jne	.LBB13_23
# %bb.49:                               #   in Loop: Header=BB13_24 Depth=2
	movl	4(%rdx), %eax
	cmpl	4(%r13), %eax
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB13_23
# %bb.50:                               #   in Loop: Header=BB13_24 Depth=2
	movl	8(%rdx), %eax
	cmpl	8(%r13), %eax
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB13_23
# %bb.51:                               #   in Loop: Header=BB13_24 Depth=2
	movl	12(%rdx), %eax
	cmpl	12(%r13), %eax
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB13_23
# %bb.52:                               #   in Loop: Header=BB13_24 Depth=2
	movzbl	16(%rdx), %eax
	cmpb	16(%r13), %al
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB13_23
.LBB13_74:
	movb	$-8, %al
	jmp	.LBB13_72
.LBB13_54:
	callq	tcp_new_port
	movl	%eax, %r15d
	movl	$42, __A_VARIABLE(%rip)
	testw	%ax, %ax
	je	.LBB13_63
.LBB13_55:
	movl	$42, __A_VARIABLE(%rip)
	testq	%r13, %r13
	je	.LBB13_64
# %bb.56:
	movl	$42, __A_VARIABLE(%rip)
	leaq	20(%r13), %rax
	movb	20(%r13), %cl
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	(%r13), %edx
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$6, %cl
	jne	.LBB13_65
# %bb.57:
	movb	$6, %cl
	testl	%edx, %edx
	jne	.LBB13_67
# %bb.58:
	cmpl	$0, 4(%r13)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB13_67
# %bb.59:
	cmpl	$0, 8(%r13)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB13_67
# %bb.60:
	cmpl	$0, 12(%r13)
	movl	$42, __A_VARIABLE(%rip)
	movb	$6, %cl
	jne	.LBB13_67
	jmp	.LBB13_66
.LBB13_63:
	movb	$-2, %al
	jmp	.LBB13_72
.LBB13_64:
	movl	$20, %eax
	movb	20, %cl
	jmp	.LBB13_66
.LBB13_65:
	testl	%edx, %edx
	jne	.LBB13_67
.LBB13_66:
	cmpb	20(%r14), %cl
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB13_71
.LBB13_67:
	movl	$42, __A_VARIABLE(%rip)
	movb	%cl, 20(%r14)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$6, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	(%r13), %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	%eax, (%r14)
	jne	.LBB13_69
# %bb.68:
	movl	$42, __A_VARIABLE(%rip)
	movl	4(%r13), %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	%eax, 4(%r14)
	movl	$42, __A_VARIABLE(%rip)
	movl	8(%r13), %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	%eax, 8(%r14)
	movl	$42, __A_VARIABLE(%rip)
	movl	12(%r13), %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	%eax, 12(%r14)
	movl	$42, __A_VARIABLE(%rip)
	movb	16(%r13), %al
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB13_70
.LBB13_69:
	movl	$0, 12(%r14)
	movq	$0, 4(%r14)
	xorl	%eax, %eax
.LBB13_70:
	movb	%al, 16(%r14)
	movl	$42, __A_VARIABLE(%rip)
.LBB13_71:
	movw	%r15w, 78(%r14)
	movq	tcp_bound_pcbs(%rip), %rax
	movq	%rax, 56(%r14)
	movq	%r14, tcp_bound_pcbs(%rip)
	callq	tcp_timer_needed
	xorl	%eax, %eax
.LBB13_72:
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
.LBB13_75:
	xorl	%eax, %eax
	jmp	.LBB13_15
.LBB13_76:
	movl	$.L.str.7, %edi
	jmp	.LBB13_78
.LBB13_77:
	movl	$.L.str.8, %edi
.LBB13_78:
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$.L.str.1, %edi
	movl	$.L.str.2, %esi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$3, %edi
	callq	ukplat_terminate
.Lfunc_end13:
	.size	tcp_bind, .Lfunc_end13-tcp_bind
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function tcp_new_port
	.type	tcp_new_port,@function
tcp_new_port:                           # @tcp_new_port
# %bb.0:
	movl	$42, __A_VARIABLE(%rip)
	movzwl	tcp_port(%rip), %eax
	movq	tcp_listen_pcbs(%rip), %rcx
	movq	tcp_bound_pcbs(%rip), %rsi
	movq	tcp_active_pcbs(%rip), %r10
	movq	tcp_tw_pcbs(%rip), %r9
	xorl	%edi, %edi
	movl	$49152, %r8d            # imm = 0xC000
	jmp	.LBB14_1
	.p2align	4, 0x90
.LBB14_4:                               #   in Loop: Header=BB14_1 Depth=1
	movzwl	%di, %edx
	addl	$1, %edi
	movl	$42, __A_VARIABLE(%rip)
                                        # kill: def $di killed $di killed $edi def $rdi
	cmpl	$16382, %edx            # imm = 0x3FFE
	ja	.LBB14_5
.LBB14_1:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB14_3 Depth 2
                                        #     Child Loop BB14_8 Depth 2
                                        #     Child Loop BB14_12 Depth 2
                                        #     Child Loop BB14_16 Depth 2
	addl	$1, %eax
	cmpw	$-1, %ax
	cmovel	%r8d, %eax
	movw	%ax, tcp_port(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rcx, %rcx
	je	.LBB14_7
# %bb.2:                                # %.preheader8
                                        #   in Loop: Header=BB14_1 Depth=1
	movq	%rcx, %rdx
	.p2align	4, 0x90
.LBB14_3:                               #   Parent Loop BB14_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpw	%ax, 78(%rdx)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB14_4
# %bb.6:                                #   in Loop: Header=BB14_3 Depth=2
	movq	56(%rdx), %rdx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdx, %rdx
	jne	.LBB14_3
.LBB14_7:                               #   in Loop: Header=BB14_1 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rsi, %rdx
	testq	%rsi, %rsi
	je	.LBB14_10
	.p2align	4, 0x90
.LBB14_8:                               #   Parent Loop BB14_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpw	%ax, 78(%rdx)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB14_4
# %bb.9:                                #   in Loop: Header=BB14_8 Depth=2
	movq	56(%rdx), %rdx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdx, %rdx
	jne	.LBB14_8
.LBB14_10:                              #   in Loop: Header=BB14_1 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%r10, %r10
	je	.LBB14_14
# %bb.11:                               # %.preheader2
                                        #   in Loop: Header=BB14_1 Depth=1
	movq	%r10, %rdx
	.p2align	4, 0x90
.LBB14_12:                              #   Parent Loop BB14_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpw	%ax, 78(%rdx)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB14_4
# %bb.13:                               #   in Loop: Header=BB14_12 Depth=2
	movq	56(%rdx), %rdx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdx, %rdx
	jne	.LBB14_12
.LBB14_14:                              #   in Loop: Header=BB14_1 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%r9, %r9
	je	.LBB14_18
# %bb.15:                               # %.preheader
                                        #   in Loop: Header=BB14_1 Depth=1
	movq	%r9, %rdx
	.p2align	4, 0x90
.LBB14_16:                              #   Parent Loop BB14_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpw	%ax, 78(%rdx)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB14_4
# %bb.17:                               #   in Loop: Header=BB14_16 Depth=2
	movq	56(%rdx), %rdx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdx, %rdx
	jne	.LBB14_16
.LBB14_18:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB14_19:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
                                        # kill: def $ax killed $ax killed $eax
	retq
.LBB14_5:
	xorl	%eax, %eax
	jmp	.LBB14_19
.Lfunc_end14:
	.size	tcp_new_port, .Lfunc_end14-tcp_new_port
                                        # -- End function
	.globl	tcp_bind_netif          # -- Begin function tcp_bind_netif
	.p2align	4, 0x90
	.type	tcp_bind_netif,@function
tcp_bind_netif:                         # @tcp_bind_netif
# %bb.0:
	movl	$42, __A_VARIABLE(%rip)
	testq	%rsi, %rsi
	je	.LBB15_1
# %bb.2:
	movb	264(%rsi), %al
	addb	$1, %al
	jmp	.LBB15_3
.LBB15_1:
	xorl	%eax, %eax
.LBB15_3:
	movl	$42, __A_VARIABLE(%rip)
	movb	%al, 48(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end15:
	.size	tcp_bind_netif, .Lfunc_end15-tcp_bind_netif
                                        # -- End function
	.globl	tcp_listen_with_backlog # -- Begin function tcp_listen_with_backlog
	.p2align	4, 0x90
	.type	tcp_listen_with_backlog,@function
tcp_listen_with_backlog:                # @tcp_listen_with_backlog
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	xorl	%esi, %esi
	xorl	%edx, %edx
	callq	tcp_listen_with_backlog_and_err
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end16:
	.size	tcp_listen_with_backlog, .Lfunc_end16-tcp_listen_with_backlog
                                        # -- End function
	.globl	tcp_listen_with_backlog_and_err # -- Begin function tcp_listen_with_backlog_and_err
	.p2align	4, 0x90
	.type	tcp_listen_with_backlog_and_err,@function
tcp_listen_with_backlog_and_err:        # @tcp_listen_with_backlog_and_err
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB17_36
# %bb.1:
	movq	%rdi, %rbx
	cmpl	$0, 72(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB17_37
# %bb.2:
	movq	%rdx, %r14
	movl	$42, __A_VARIABLE(%rip)
	testb	$4, 49(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB17_16
# %bb.3:
	movq	tcp_listen_pcbs(%rip), %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB17_16
# %bb.4:
	movzwl	78(%rbx), %ecx
	xorl	%r15d, %r15d
	jmp	.LBB17_7
.LBB17_5:                               #   in Loop: Header=BB17_7 Depth=1
	cmpl	%edi, %esi
	je	.LBB17_15
	.p2align	4, 0x90
.LBB17_6:                               #   in Loop: Header=BB17_7 Depth=1
	movq	56(%rax), %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB17_16
.LBB17_7:                               # =>This Inner Loop Header: Depth=1
	cmpw	%cx, 78(%rax)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB17_6
# %bb.8:                                #   in Loop: Header=BB17_7 Depth=1
	movzbl	20(%rax), %edx
	cmpb	20(%rbx), %dl
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB17_6
# %bb.9:                                #   in Loop: Header=BB17_7 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	(%rax), %esi
	movl	(%rbx), %edi
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$6, %dl
	jne	.LBB17_5
# %bb.10:                               #   in Loop: Header=BB17_7 Depth=1
	cmpl	%edi, %esi
	jne	.LBB17_6
# %bb.11:                               #   in Loop: Header=BB17_7 Depth=1
	movl	4(%rax), %edx
	cmpl	4(%rbx), %edx
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB17_6
# %bb.12:                               #   in Loop: Header=BB17_7 Depth=1
	movl	8(%rax), %edx
	cmpl	8(%rbx), %edx
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB17_6
# %bb.13:                               #   in Loop: Header=BB17_7 Depth=1
	movl	12(%rax), %edx
	cmpl	12(%rbx), %edx
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB17_6
# %bb.14:                               #   in Loop: Header=BB17_7 Depth=1
	movzbl	16(%rax), %edx
	cmpb	16(%rbx), %dl
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB17_6
.LBB17_15:
	movb	$-8, %al
	jmp	.LBB17_32
.LBB17_16:
	movl	$2, %edi
	callq	memp_malloc
	movq	%rax, %r15
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB17_19
# %bb.17:
	movq	64(%rbx), %rax
	movq	%rax, 64(%r15)
	movzwl	78(%rbx), %eax
	movw	%ax, 78(%r15)
	movl	$1, 72(%r15)
	movb	76(%rbx), %al
	movb	%al, 76(%r15)
	movb	49(%rbx), %al
	movb	%al, 49(%r15)
	movb	$0, 48(%r15)
	movb	51(%rbx), %al
	movb	%al, 51(%r15)
	movb	50(%rbx), %al
	movb	%al, 50(%r15)
	movb	20(%rbx), %al
	movb	%al, 44(%r15)
	movb	%al, 20(%r15)
	movl	$42, __A_VARIABLE(%rip)
	movl	(%rbx), %ecx
	movl	%ecx, (%r15)
	cmpb	$6, %al
	jne	.LBB17_20
# %bb.18:
	movl	4(%rbx), %eax
	movl	%eax, 4(%r15)
	movl	8(%rbx), %eax
	movl	%eax, 8(%r15)
	movl	12(%rbx), %eax
	movl	%eax, 12(%r15)
	movb	16(%rbx), %al
	jmp	.LBB17_21
.LBB17_19:
	movb	$-1, %al
	jmp	.LBB17_32
.LBB17_20:
	movl	$0, 12(%r15)
	movq	$0, 4(%r15)
	xorl	%eax, %eax
.LBB17_21:
	movl	$42, __A_VARIABLE(%rip)
	movb	%al, 16(%r15)
	cmpw	$0, 78(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB17_30
# %bb.22:
	movq	tcp_bound_pcbs(%rip), %rax
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rbx, %rax
	je	.LBB17_26
# %bb.23:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB17_28
	.p2align	4, 0x90
.LBB17_24:                              # =>This Inner Loop Header: Depth=1
	movq	56(%rax), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rbx, %rcx
	je	.LBB17_27
# %bb.25:                               #   in Loop: Header=BB17_24 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rcx, %rax
	testq	%rcx, %rcx
	jne	.LBB17_24
	jmp	.LBB17_28
.LBB17_26:
	leaq	56(%rbx), %rax
	movq	56(%rbx), %rcx
	movq	%rcx, tcp_bound_pcbs(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB17_29
.LBB17_27:
	movq	56(%rbx), %rcx
	movq	%rcx, 56(%rax)
	movl	$42, __A_VARIABLE(%rip)
.LBB17_28:
	movl	$42, __A_VARIABLE(%rip)
	leaq	56(%rbx), %rax
.LBB17_29:
	movq	$0, (%rax)
	movl	$42, __A_VARIABLE(%rip)
.LBB17_30:
	cmpl	$1, 72(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB17_38
# %bb.31:
	movl	$1, %edi
	movq	%rbx, %rsi
	callq	memp_free
	movl	$42, __A_VARIABLE(%rip)
	movq	$tcp_accept_null, 80(%r15)
	movq	tcp_listen_pcbs(%rip), %rax
	movq	%rax, 56(%r15)
	movq	%r15, tcp_listen_pcbs(%rip)
	callq	tcp_timer_needed
	xorl	%eax, %eax
.LBB17_32:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%r14, %r14
	je	.LBB17_34
# %bb.33:
	movb	%al, (%r14)
	movl	$42, __A_VARIABLE(%rip)
.LBB17_34:
	movl	$42, __A_VARIABLE(%rip)
	movq	%r15, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB17_36:
	movl	$.L.str.9, %edi
	jmp	.LBB17_39
.LBB17_37:
	movl	$.L.str.10, %edi
	jmp	.LBB17_39
.LBB17_38:
	movl	$.L.str, %edi
.LBB17_39:
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$.L.str.1, %edi
	movl	$.L.str.2, %esi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$3, %edi
	callq	ukplat_terminate
.Lfunc_end17:
	.size	tcp_listen_with_backlog_and_err, .Lfunc_end17-tcp_listen_with_backlog_and_err
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function tcp_accept_null
	.type	tcp_accept_null,@function
tcp_accept_null:                        # @tcp_accept_null
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$42, __A_VARIABLE(%rip)
	testq	%rsi, %rsi
	je	.LBB18_2
# %bb.1:
	movq	%rsi, %rdi
	movl	$1, %esi
	callq	tcp_abandon
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movb	$-13, %al
	popq	%rbp
	retq
.LBB18_2:
	movl	$.L.str.51, %edi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$.L.str.1, %edi
	movl	$.L.str.2, %esi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$3, %edi
	callq	ukplat_terminate
.Lfunc_end18:
	.size	tcp_accept_null, .Lfunc_end18-tcp_accept_null
                                        # -- End function
	.globl	tcp_update_rcv_ann_wnd  # -- Begin function tcp_update_rcv_ann_wnd
	.p2align	4, 0x90
	.type	tcp_update_rcv_ann_wnd,@function
tcp_update_rcv_ann_wnd:                 # @tcp_update_rcv_ann_wnd
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB19_4
# %bb.1:
	movl	92(%rdi), %r8d
	movl	96(%rdi), %esi
	leal	(%rsi,%r8), %eax
	movl	104(%rdi), %ecx
	movzwl	110(%rdi), %edx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	subl	%ecx, %eax
	cmpl	%edx, %eax
	movl	$42, __A_VARIABLE(%rip)
	jns	.LBB19_3
# %bb.2:
	movl	%r8d, %edx
	subl	%ecx, %edx
	subl	%r8d, %ecx
	xorl	%eax, %eax
	testl	%edx, %edx
	movl	$42, __A_VARIABLE(%rip)
	cmovgl	%eax, %ecx
	movl	$42, __A_VARIABLE(%rip)
	movl	%ecx, %esi
.LBB19_3:
	movl	%esi, 100(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.LBB19_4:
	movl	$.L.str.11, %edi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$.L.str.1, %edi
	movl	$.L.str.2, %esi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$3, %edi
	callq	ukplat_terminate
.Lfunc_end19:
	.size	tcp_update_rcv_ann_wnd, .Lfunc_end19-tcp_update_rcv_ann_wnd
                                        # -- End function
	.globl	tcp_recved              # -- Begin function tcp_recved
	.p2align	4, 0x90
	.type	tcp_recved,@function
tcp_recved:                             # @tcp_recved
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB20_1
# %bb.3:
	cmpl	$1, 72(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB20_4
# %bb.5:
	movl	96(%rdi), %eax
	movzwl	%si, %edx
	addl	%eax, %edx
	movzwl	82(%rdi), %r8d
	testl	$256, %r8d              # imm = 0x100
	movl	$65535, %esi            # imm = 0xFFFF
	movl	$262142, %ecx           # imm = 0x3FFFE
	cmovel	%esi, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%ecx, %edx
	ja	.LBB20_7
# %bb.6:
	cmpl	%eax, %edx
	movl	$42, __A_VARIABLE(%rip)
	cmovael	%edx, %ecx
.LBB20_7:
	movl	%ecx, 96(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	92(%rdi), %r9d
	movl	104(%rdi), %edx
	leal	(%rcx,%r9), %eax
	movzwl	110(%rdi), %esi
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	subl	%edx, %eax
	cmpl	%esi, %eax
	movl	$42, __A_VARIABLE(%rip)
	js	.LBB20_8
# %bb.9:
	movl	%ecx, 100(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$5840, %eax             # imm = 0x16D0
	jb	.LBB20_12
# %bb.10:
	orl	$2, %r8d
	movw	%r8w, 82(%rdi)
	callq	tcp_output
	jmp	.LBB20_11
.LBB20_8:
	movl	%r9d, %eax
	subl	%edx, %eax
	subl	%r9d, %edx
	xorl	%ecx, %ecx
	testl	%eax, %eax
	movl	$42, __A_VARIABLE(%rip)
	cmovlel	%edx, %ecx
	movl	$42, __A_VARIABLE(%rip)
	movl	%ecx, 100(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB20_11:
	movl	$42, __A_VARIABLE(%rip)
.LBB20_12:
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.LBB20_1:
	movl	$.L.str.12, %edi
	jmp	.LBB20_2
.LBB20_4:
	movl	$.L.str.13, %edi
.LBB20_2:
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$.L.str.1, %edi
	movl	$.L.str.2, %esi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$3, %edi
	callq	ukplat_terminate
.Lfunc_end20:
	.size	tcp_recved, .Lfunc_end20-tcp_recved
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4               # -- Begin function tcp_connect
.LCPI21_0:
	.long	0                       # 0x0
	.long	65535                   # 0xffff
	.long	65535                   # 0xffff
	.long	0                       # 0x0
	.text
	.globl	tcp_connect
	.p2align	4, 0x90
	.type	tcp_connect,@function
tcp_connect:                            # @tcp_connect
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
	testq	%rdi, %rdi
	je	.LBB21_1
# %bb.3:
	movq	%rsi, %r12
	movl	$42, __A_VARIABLE(%rip)
	testq	%rsi, %rsi
	je	.LBB21_4
# %bb.5:
	movq	%rdi, %r15
	cmpl	$0, 72(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB21_6
# %bb.7:
	movq	%rcx, %r13
	movl	%edx, %ebx
	movl	$42, __A_VARIABLE(%rip)
	movb	20(%r12), %al
	movb	%al, 44(%r15)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$6, 20(%r12)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	(%r12), %ecx
	movl	$42, __A_VARIABLE(%rip)
	movl	%ecx, 24(%r15)
	jne	.LBB21_9
# %bb.8:
	movl	$42, __A_VARIABLE(%rip)
	movl	4(%r12), %ecx
	movl	$42, __A_VARIABLE(%rip)
	movl	%ecx, 28(%r15)
	movl	$42, __A_VARIABLE(%rip)
	movl	8(%r12), %ecx
	movl	$42, __A_VARIABLE(%rip)
	movl	%ecx, 32(%r15)
	movl	$42, __A_VARIABLE(%rip)
	movl	12(%r12), %ecx
	movl	$42, __A_VARIABLE(%rip)
	movl	%ecx, 36(%r15)
	movl	$42, __A_VARIABLE(%rip)
	movb	16(%r12), %cl
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB21_10
.LBB21_9:
	movl	$0, 36(%r15)
	movq	$0, 28(%r15)
	xorl	%ecx, %ecx
.LBB21_10:
	leaq	24(%r15), %rsi
	movl	$42, __A_VARIABLE(%rip)
	movb	%cl, 40(%r15)
	movw	%bx, 80(%r15)
	movb	48(%r15), %cl
	movl	$42, __A_VARIABLE(%rip)
	testb	%cl, %cl
	movq	%rsi, -48(%rbp)         # 8-byte Spill
	je	.LBB21_12
# %bb.11:
	movzbl	%cl, %edi
	callq	netif_get_by_index
	movq	%rax, %r14
	jmp	.LBB21_16
.LBB21_12:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$6, %al
	jne	.LBB21_14
# %bb.13:
	movq	%r15, %rdi
	callq	ip6_route
	jmp	.LBB21_15
.LBB21_14:
	movq	%rsi, %rdi
	callq	ip4_route
.LBB21_15:
	movq	%rax, %r14
	movl	$42, __A_VARIABLE(%rip)
.LBB21_16:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%r14, %r14
	je	.LBB21_17
# %bb.18:
	movl	$42, __A_VARIABLE(%rip)
	movb	20(%r15), %cl
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	(%r15), %r9d
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$6, %cl
	jne	.LBB21_23
# %bb.19:
	movb	$6, %cl
	testl	%r9d, %r9d
	jne	.LBB21_32
# %bb.20:
	xorl	%r9d, %r9d
	cmpl	$0, 4(%r15)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB21_32
# %bb.21:
	cmpl	$0, 8(%r15)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB21_32
# %bb.22:
	cmpl	$0, 12(%r15)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB21_32
	jmp	.LBB21_24
.LBB21_17:
	movb	$-4, %bl
	jmp	.LBB21_88
.LBB21_23:
	testl	%r9d, %r9d
	jne	.LBB21_32
.LBB21_24:
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$6, 20(%r12)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB21_25
# %bb.28:
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %rdi
	movq	%r12, %rsi
	callq	ip6_select_source_address
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	jne	.LBB21_26
# %bb.29:
	movl	$42, __A_VARIABLE(%rip)
	movb	$-4, %bl
	jmp	.LBB21_87
.LBB21_25:
	leaq	8(%r14), %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB21_26:
	movb	20(%rax), %cl
	movb	%cl, 20(%r15)
	cmpb	$6, 20(%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	(%rax), %r9d
	movl	%r9d, (%r15)
	jne	.LBB21_30
# %bb.27:
	movl	4(%rax), %edx
	movl	%edx, 4(%r15)
	movl	8(%rax), %edx
	movl	%edx, 8(%r15)
	movl	12(%rax), %edx
	movl	%edx, 12(%r15)
	movb	16(%rax), %al
	jmp	.LBB21_31
.LBB21_30:
	movl	$0, 12(%r15)
	movq	$0, 4(%r15)
	xorl	%eax, %eax
.LBB21_31:
	movl	$42, __A_VARIABLE(%rip)
	movb	%al, 16(%r15)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB21_32:
	movq	%r13, -56(%rbp)         # 8-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	movb	44(%r15), %r8b
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$6, %r8b
	jne	.LBB21_36
# %bb.33:
	cmpb	$0, 40(%r15)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB21_36
# %bb.34:
	movl	$49407, %eax            # imm = 0xC0FF
	movq	-48(%rbp), %rdx         # 8-byte Reload
	andl	(%rdx), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$33022, %eax            # imm = 0x80FE
	jne	.LBB21_36
# %bb.35:
	movl	$42, __A_VARIABLE(%rip)
	movb	264(%r14), %al
	movl	$42, __A_VARIABLE(%rip)
	addb	$1, %al
	movb	%al, 40(%r15)
	movl	$42, __A_VARIABLE(%rip)
.LBB21_36:
	movzwl	78(%r15), %r13d
	movl	$42, __A_VARIABLE(%rip)
	testw	%r13w, %r13w
	je	.LBB21_37
# %bb.39:
	testb	$4, 49(%r15)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB21_66
# %bb.40:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$2, %esi
	jmp	.LBB21_41
	.p2align	4, 0x90
.LBB21_63:                              #   in Loop: Header=BB21_41 Depth=1
	addq	$1, %rsi
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$4, %rsi
	jae	.LBB21_64
.LBB21_41:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB21_42 Depth 2
	movq	tcp_pcb_lists(,%rsi,8), %rax
	movq	(%rax), %rdi
	jmp	.LBB21_42
.LBB21_61:                              #   in Loop: Header=BB21_42 Depth=2
	cmpl	%edx, %r10d
	je	.LBB21_60
	.p2align	4, 0x90
.LBB21_62:                              #   in Loop: Header=BB21_42 Depth=2
	movq	56(%rdi), %rdi
.LBB21_42:                              #   Parent Loop BB21_41 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB21_63
# %bb.43:                               #   in Loop: Header=BB21_42 Depth=2
	cmpw	%r13w, 78(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB21_62
# %bb.44:                               #   in Loop: Header=BB21_42 Depth=2
	cmpw	%bx, 80(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB21_62
# %bb.45:                               #   in Loop: Header=BB21_42 Depth=2
	cmpb	%cl, 20(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB21_62
# %bb.46:                               #   in Loop: Header=BB21_42 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	(%rdi), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$6, %cl
	jne	.LBB21_52
# %bb.47:                               #   in Loop: Header=BB21_42 Depth=2
	cmpl	%r9d, %eax
	jne	.LBB21_62
# %bb.48:                               #   in Loop: Header=BB21_42 Depth=2
	movl	4(%rdi), %eax
	cmpl	4(%r15), %eax
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB21_62
# %bb.49:                               #   in Loop: Header=BB21_42 Depth=2
	movl	8(%rdi), %eax
	cmpl	8(%r15), %eax
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB21_62
# %bb.50:                               #   in Loop: Header=BB21_42 Depth=2
	movl	12(%rdi), %eax
	cmpl	12(%r15), %eax
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB21_62
# %bb.51:                               #   in Loop: Header=BB21_42 Depth=2
	movzbl	16(%rdi), %eax
	cmpb	16(%r15), %al
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB21_62
	jmp	.LBB21_53
.LBB21_52:                              #   in Loop: Header=BB21_42 Depth=2
	cmpl	%r9d, %eax
	jne	.LBB21_62
.LBB21_53:                              #   in Loop: Header=BB21_42 Depth=2
	movzbl	44(%rdi), %eax
	cmpb	20(%r12), %al
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB21_62
# %bb.54:                               #   in Loop: Header=BB21_42 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	24(%rdi), %r10d
	movl	(%r12), %edx
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$6, %al
	jne	.LBB21_61
# %bb.55:                               #   in Loop: Header=BB21_42 Depth=2
	cmpl	%edx, %r10d
	jne	.LBB21_62
# %bb.56:                               #   in Loop: Header=BB21_42 Depth=2
	movl	28(%rdi), %eax
	cmpl	4(%r12), %eax
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB21_62
# %bb.57:                               #   in Loop: Header=BB21_42 Depth=2
	movl	32(%rdi), %eax
	cmpl	8(%r12), %eax
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB21_62
# %bb.58:                               #   in Loop: Header=BB21_42 Depth=2
	movl	36(%rdi), %eax
	cmpl	12(%r12), %eax
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB21_62
# %bb.59:                               #   in Loop: Header=BB21_42 Depth=2
	movzbl	40(%rdi), %eax
	cmpb	16(%r12), %al
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB21_62
.LBB21_60:
	movl	$42, __A_VARIABLE(%rip)
	movb	$-8, %bl
	jmp	.LBB21_87
.LBB21_37:
	callq	tcp_new_port
	movw	%ax, 78(%r15)
	movl	$42, __A_VARIABLE(%rip)
	testw	%ax, %ax
	je	.LBB21_38
# %bb.65:
	movb	44(%r15), %r8b
	jmp	.LBB21_66
.LBB21_64:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB21_66:
	movl	$42, __A_VARIABLE(%rip)
	movl	tcp_ticks(%rip), %eax
	movl	tcp_next_iss.iss(%rip), %ecx
	leal	(%rcx,%rax), %edx
	movl	%edx, tcp_next_iss.iss(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%edx, 144(%r15)
	leal	-1(%rcx,%rax), %eax
	movl	%eax, 128(%r15)
	movl	%eax, 152(%r15)
	movl	%eax, 156(%r15)
	movaps	.LCPI21_0(%rip), %xmm0  # xmm0 = [0,65535,65535,0]
	movups	%xmm0, 92(%r15)
	movl	$262142, 160(%r15)      # imm = 0x3FFFE
	movw	$536, 110(%r15)         # imm = 0x218
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$6, %r8b
	jne	.LBB21_68
# %bb.67:
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%r14, %rsi
	callq	nd6_get_destination_mtu
	jmp	.LBB21_69
.LBB21_68:
	movl	$42, __A_VARIABLE(%rip)
	movzwl	250(%r14), %eax
.LBB21_69:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testw	%ax, %ax
	je	.LBB21_70
# %bb.71:
	movzwl	%ax, %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$6, 44(%r15)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$60, %edx
	movl	$40, %ecx
	cmovel	%edx, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%eax, %ecx
	jae	.LBB21_72
# %bb.73:
	subl	%ecx, %eax
	movl	$42, __A_VARIABLE(%rip)
	movzwl	%ax, %ecx
	cmpl	$536, %ecx              # imm = 0x218
	movl	$536, %ecx              # imm = 0x218
	cmovbl	%eax, %ecx
	jmp	.LBB21_74
.LBB21_70:
	movw	$536, %cx               # imm = 0x218
	jmp	.LBB21_75
.LBB21_72:
	xorl	%ecx, %ecx
.LBB21_74:
	movl	$42, __A_VARIABLE(%rip)
.LBB21_75:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	%cx, 110(%r15)
	movl	$1, 132(%r15)
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	%rax, 240(%r15)
	movq	%r15, %rdi
	movl	$2, %esi
	callq	tcp_enqueue_flags
	movl	%eax, %ebx
	movl	$42, __A_VARIABLE(%rip)
	testb	%al, %al
	jne	.LBB21_87
# %bb.76:
	movl	$2, 72(%r15)
	movl	$42, __A_VARIABLE(%rip)
	testw	%r13w, %r13w
	je	.LBB21_77
# %bb.78:
	movq	tcp_bound_pcbs(%rip), %rax
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r15, %rax
	je	.LBB21_79
# %bb.80:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB21_84
	.p2align	4, 0x90
.LBB21_81:                              # =>This Inner Loop Header: Depth=1
	movq	56(%rax), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r15, %rcx
	je	.LBB21_82
# %bb.83:                               #   in Loop: Header=BB21_81 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rcx, %rax
	testq	%rcx, %rcx
	jne	.LBB21_81
	jmp	.LBB21_84
.LBB21_38:
	movb	$-2, %bl
	jmp	.LBB21_87
.LBB21_77:
	leaq	56(%r15), %rax
	jmp	.LBB21_86
.LBB21_79:
	leaq	56(%r15), %rax
	movq	56(%r15), %rcx
	movq	%rcx, tcp_bound_pcbs(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB21_85
.LBB21_82:
	movq	56(%r15), %rcx
	movq	%rcx, 56(%rax)
	movl	$42, __A_VARIABLE(%rip)
.LBB21_84:
	movl	$42, __A_VARIABLE(%rip)
	leaq	56(%r15), %rax
.LBB21_85:
	movq	$0, (%rax)
	movl	$42, __A_VARIABLE(%rip)
.LBB21_86:
	movq	tcp_active_pcbs(%rip), %rcx
	movq	%rcx, (%rax)
	movq	%r15, tcp_active_pcbs(%rip)
	callq	tcp_timer_needed
	movb	$1, tcp_active_pcbs_changed(%rip)
	movq	%r15, %rdi
	callq	tcp_output
	movl	$42, __A_VARIABLE(%rip)
.LBB21_87:
	movl	$42, __A_VARIABLE(%rip)
.LBB21_88:
	movl	$42, __A_VARIABLE(%rip)
	movl	%ebx, %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB21_1:
	movl	$.L.str.14, %edi
	jmp	.LBB21_2
.LBB21_4:
	movl	$.L.str.15, %edi
	jmp	.LBB21_2
.LBB21_6:
	movl	$.L.str.16, %edi
.LBB21_2:
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$.L.str.1, %edi
	movl	$.L.str.2, %esi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$3, %edi
	callq	ukplat_terminate
.Lfunc_end21:
	.size	tcp_connect, .Lfunc_end21-tcp_connect
                                        # -- End function
	.globl	tcp_next_iss            # -- Begin function tcp_next_iss
	.p2align	4, 0x90
	.type	tcp_next_iss,@function
tcp_next_iss:                           # @tcp_next_iss
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB22_2
# %bb.1:
	movl	tcp_next_iss.iss(%rip), %eax
	addl	tcp_ticks(%rip), %eax
	movl	%eax, tcp_next_iss.iss(%rip)
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.LBB22_2:
	movl	$.L.str.42, %edi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$.L.str.1, %edi
	movl	$.L.str.2, %esi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$3, %edi
	callq	ukplat_terminate
.Lfunc_end22:
	.size	tcp_next_iss, .Lfunc_end22-tcp_next_iss
                                        # -- End function
	.globl	tcp_eff_send_mss_netif  # -- Begin function tcp_eff_send_mss_netif
	.p2align	4, 0x90
	.type	tcp_eff_send_mss_netif,@function
tcp_eff_send_mss_netif:                 # @tcp_eff_send_mss_netif
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdx, %rdx
	je	.LBB23_10
# %bb.1:
	movq	%rdx, %rbx
	movl	%edi, %r14d
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$6, 20(%rdx)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB23_3
# %bb.2:
	movq	%rbx, %rdi
	callq	nd6_get_destination_mtu
	jmp	.LBB23_5
.LBB23_3:
	movl	$42, __A_VARIABLE(%rip)
	testq	%rsi, %rsi
	je	.LBB23_9
# %bb.4:
	movzwl	250(%rsi), %eax
.LBB23_5:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testw	%ax, %ax
	je	.LBB23_9
# %bb.6:
	movzwl	%ax, %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$6, 20(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$60, %ecx
	movl	$40, %edx
	cmovel	%ecx, %edx
	movl	$42, __A_VARIABLE(%rip)
	xorl	%ecx, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%eax, %edx
	jae	.LBB23_8
# %bb.7:
	subl	%edx, %eax
	movl	$42, __A_VARIABLE(%rip)
	movzwl	%ax, %ecx
.LBB23_8:
	movzwl	%r14w, %r14d
	cmpl	%r14d, %ecx
	cmovbel	%ecx, %r14d
	movl	$42, __A_VARIABLE(%rip)
.LBB23_9:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%r14d, %eax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.LBB23_10:
	movl	$.L.str.43, %edi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$.L.str.1, %edi
	movl	$.L.str.2, %esi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$3, %edi
	callq	ukplat_terminate
.Lfunc_end23:
	.size	tcp_eff_send_mss_netif, .Lfunc_end23-tcp_eff_send_mss_netif
                                        # -- End function
	.globl	tcp_free_ooseq          # -- Begin function tcp_free_ooseq
	.p2align	4, 0x90
	.type	tcp_free_ooseq,@function
tcp_free_ooseq:                         # @tcp_free_ooseq
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movq	200(%rdi), %rbx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	je	.LBB24_6
# %bb.1:
	movq	%rdi, %r14
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB24_2
	.p2align	4, 0x90
.LBB24_4:                               #   in Loop: Header=BB24_2 Depth=1
	movl	$3, %edi
	movq	%rbx, %rsi
	callq	memp_free
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r15, %rbx
	testq	%r15, %r15
	je	.LBB24_5
.LBB24_2:                               # =>This Inner Loop Header: Depth=1
	movq	(%rbx), %r15
	movl	$42, __A_VARIABLE(%rip)
	movq	8(%rbx), %rdi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB24_4
# %bb.3:                                #   in Loop: Header=BB24_2 Depth=1
	callq	pbuf_free
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB24_4
.LBB24_5:
	movl	$42, __A_VARIABLE(%rip)
	movq	$0, 200(%r14)
	movl	$42, __A_VARIABLE(%rip)
.LBB24_6:
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end24:
	.size	tcp_free_ooseq, .Lfunc_end24-tcp_free_ooseq
                                        # -- End function
	.globl	tcp_pcb_purge           # -- Begin function tcp_pcb_purge
	.p2align	4, 0x90
	.type	tcp_pcb_purge,@function
tcp_pcb_purge:                          # @tcp_pcb_purge
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB25_22
# %bb.1:
	movq	%rdi, %r14
	movl	72(%rdi), %eax
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB25_21
# %bb.2:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$10, %eax
	je	.LBB25_21
# %bb.3:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1, %eax
	je	.LBB25_21
# %bb.4:
	movq	208(%r14), %rdi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB25_6
# %bb.5:
	callq	pbuf_free
	movq	$0, 208(%r14)
	movl	$42, __A_VARIABLE(%rip)
.LBB25_6:
	movq	200(%r14), %rbx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	je	.LBB25_12
# %bb.7:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB25_8
	.p2align	4, 0x90
.LBB25_10:                              #   in Loop: Header=BB25_8 Depth=1
	movl	$3, %edi
	movq	%rbx, %rsi
	callq	memp_free
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r15, %rbx
	testq	%r15, %r15
	je	.LBB25_11
.LBB25_8:                               # =>This Inner Loop Header: Depth=1
	movq	(%rbx), %r15
	movl	$42, __A_VARIABLE(%rip)
	movq	8(%rbx), %rdi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB25_10
# %bb.9:                                #   in Loop: Header=BB25_8 Depth=1
	callq	pbuf_free
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB25_10
.LBB25_11:
	movl	$42, __A_VARIABLE(%rip)
	movq	$0, 200(%r14)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB25_12:
	movw	$-1, 108(%r14)
	movq	184(%r14), %rbx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	jne	.LBB25_13
.LBB25_16:
	movl	$42, __A_VARIABLE(%rip)
	movq	192(%r14), %rbx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	jne	.LBB25_17
.LBB25_20:
	movl	$42, __A_VARIABLE(%rip)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 184(%r14)
	movw	$0, 174(%r14)
	movl	$42, __A_VARIABLE(%rip)
.LBB25_21:
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
	.p2align	4, 0x90
.LBB25_15:                              #   in Loop: Header=BB25_13 Depth=1
	movl	$3, %edi
	movq	%rbx, %rsi
	callq	memp_free
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r15, %rbx
	testq	%r15, %r15
	je	.LBB25_16
.LBB25_13:                              # =>This Inner Loop Header: Depth=1
	movq	(%rbx), %r15
	movl	$42, __A_VARIABLE(%rip)
	movq	8(%rbx), %rdi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB25_15
# %bb.14:                               #   in Loop: Header=BB25_13 Depth=1
	callq	pbuf_free
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB25_15
	.p2align	4, 0x90
.LBB25_19:                              #   in Loop: Header=BB25_17 Depth=1
	movl	$3, %edi
	movq	%rbx, %rsi
	callq	memp_free
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r15, %rbx
	testq	%r15, %r15
	je	.LBB25_20
.LBB25_17:                              # =>This Inner Loop Header: Depth=1
	movq	(%rbx), %r15
	movl	$42, __A_VARIABLE(%rip)
	movq	8(%rbx), %rdi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB25_19
# %bb.18:                               #   in Loop: Header=BB25_17 Depth=1
	callq	pbuf_free
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB25_19
.LBB25_22:
	movl	$.L.str.36, %edi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$.L.str.1, %edi
	movl	$.L.str.2, %esi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$3, %edi
	callq	ukplat_terminate
.Lfunc_end25:
	.size	tcp_pcb_purge, .Lfunc_end25-tcp_pcb_purge
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function tcp_close_shutdown_fin
	.type	tcp_close_shutdown_fin,@function
tcp_close_shutdown_fin:                 # @tcp_close_shutdown_fin
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB26_14
# %bb.1:
	movq	%rdi, %rbx
	movl	72(%rdi), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$7, %eax
	je	.LBB26_7
# %bb.2:
	cmpl	$4, %eax
	je	.LBB26_4
# %bb.3:
	cmpl	$3, %eax
	jne	.LBB26_12
.LBB26_4:
	movq	%rbx, %rdi
	callq	tcp_send_fin
                                        # kill: def $al killed $al def $eax
	movl	$42, __A_VARIABLE(%rip)
	testb	%al, %al
	jne	.LBB26_8
# %bb.5:
	movl	$5, %eax
	jmp	.LBB26_11
.LBB26_7:
	movq	%rbx, %rdi
	callq	tcp_send_fin
                                        # kill: def $al killed $al def $eax
	movl	$42, __A_VARIABLE(%rip)
	testb	%al, %al
	je	.LBB26_10
.LBB26_8:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$-1, %al
	jne	.LBB26_13
# %bb.9:
	orb	$8, 82(%rbx)
	jmp	.LBB26_12
.LBB26_10:
	movl	$9, %eax
.LBB26_11:
	movl	%eax, 72(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rdi
	callq	tcp_output
	movl	$42, __A_VARIABLE(%rip)
.LBB26_12:
	xorl	%eax, %eax
.LBB26_13:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
                                        # kill: def $al killed $al killed $eax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.LBB26_14:
	movl	$.L.str.47, %edi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$.L.str.1, %edi
	movl	$.L.str.2, %esi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$3, %edi
	callq	ukplat_terminate
.Lfunc_end26:
	.size	tcp_close_shutdown_fin, .Lfunc_end26-tcp_close_shutdown_fin
                                        # -- End function
	.globl	tcp_process_refused_data # -- Begin function tcp_process_refused_data
	.p2align	4, 0x90
	.type	tcp_process_refused_data,@function
tcp_process_refused_data:               # @tcp_process_refused_data
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB27_22
# %bb.1:
	movq	%rdi, %r15
	movq	208(%rdi), %rbx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	je	.LBB27_13
# %bb.2:
	leaq	-48(%rbp), %r14
	movl	$65535, %r12d           # imm = 0xFFFF
	jmp	.LBB27_3
.LBB27_11:                              #   in Loop: Header=BB27_3 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	.p2align	4, 0x90
.LBB27_12:                              #   in Loop: Header=BB27_3 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	208(%r15), %rbx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	je	.LBB27_13
.LBB27_3:                               # =>This Inner Loop Header: Depth=1
	movzbl	21(%rbx), %r13d
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	pbuf_split_64k
	movq	-48(%rbp), %rax
	movq	%rax, 208(%r15)
	movq	232(%r15), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB27_4
# %bb.5:                                #   in Loop: Header=BB27_3 Depth=1
	movq	64(%r15), %rdi
	movq	%r15, %rsi
	movq	%rbx, %rdx
	xorl	%ecx, %ecx
	callq	*%rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testb	%al, %al
	je	.LBB27_6
	jmp	.LBB27_16
	.p2align	4, 0x90
.LBB27_4:                               #   in Loop: Header=BB27_3 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	16(%rbx), %esi
	movq	%r15, %rdi
	callq	tcp_recved
	movq	%rbx, %rdi
	callq	pbuf_free
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB27_6:                               #   in Loop: Header=BB27_3 Depth=1
	movq	-48(%rbp), %rax
	movl	$42, __A_VARIABLE(%rip)
	testb	$32, %r13b
	je	.LBB27_12
# %bb.7:                                #   in Loop: Header=BB27_3 Depth=1
	testq	%rax, %rax
	jne	.LBB27_12
# %bb.8:                                #   in Loop: Header=BB27_3 Depth=1
	movl	96(%r15), %eax
	movzwl	82(%r15), %ecx
	testl	$256, %ecx              # imm = 0x100
	movl	$262142, %ecx           # imm = 0x3FFFE
	cmovel	%r12d, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%ecx, %eax
	je	.LBB27_10
# %bb.9:                                #   in Loop: Header=BB27_3 Depth=1
	addl	$1, %eax
	movl	%eax, 96(%r15)
	movl	$42, __A_VARIABLE(%rip)
.LBB27_10:                              #   in Loop: Header=BB27_3 Depth=1
	movq	232(%r15), %rbx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	je	.LBB27_11
# %bb.14:                               #   in Loop: Header=BB27_3 Depth=1
	movq	64(%r15), %rdi
	movq	%r15, %rsi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	callq	*%rbx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$-13, %al
	jne	.LBB27_12
# %bb.15:
	movb	$-13, %al
	jmp	.LBB27_20
.LBB27_13:
	xorl	%eax, %eax
	jmp	.LBB27_21
.LBB27_16:
	movl	%eax, %ecx
	movl	$42, __A_VARIABLE(%rip)
	movb	$-13, %al
	cmpb	$-13, %cl
	je	.LBB27_20
# %bb.17:
	movq	-48(%rbp), %rsi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rsi, %rsi
	je	.LBB27_19
# %bb.18:
	movq	%rbx, %rdi
	callq	pbuf_cat
	movl	$42, __A_VARIABLE(%rip)
.LBB27_19:
	movq	%rbx, 208(%r15)
	movb	$-5, %al
.LBB27_20:
	movl	$42, __A_VARIABLE(%rip)
.LBB27_21:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
                                        # kill: def $al killed $al killed $eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB27_22:
	movl	$.L.str.27, %edi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$.L.str.1, %edi
	movl	$.L.str.2, %esi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$3, %edi
	callq	ukplat_terminate
.Lfunc_end27:
	.size	tcp_process_refused_data, .Lfunc_end27-tcp_process_refused_data
                                        # -- End function
	.globl	tcp_txnow               # -- Begin function tcp_txnow
	.p2align	4, 0x90
	.type	tcp_txnow,@function
tcp_txnow:                              # @tcp_txnow
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	tcp_active_pcbs(%rip), %rbx
	jmp	.LBB28_1
	.p2align	4, 0x90
.LBB28_4:                               #   in Loop: Header=BB28_1 Depth=1
	movq	56(%rbx), %rbx
.LBB28_1:                               # =>This Inner Loop Header: Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	je	.LBB28_5
# %bb.2:                                #   in Loop: Header=BB28_1 Depth=1
	cmpb	$0, 82(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	jns	.LBB28_4
# %bb.3:                                #   in Loop: Header=BB28_1 Depth=1
	movq	%rbx, %rdi
	callq	tcp_output
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB28_4
.LBB28_5:
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end28:
	.size	tcp_txnow, .Lfunc_end28-tcp_txnow
                                        # -- End function
	.globl	tcp_recv_null           # -- Begin function tcp_recv_null
	.p2align	4, 0x90
	.type	tcp_recv_null,@function
tcp_recv_null:                          # @tcp_recv_null
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rsi, %rsi
	je	.LBB29_10
# %bb.1:
	movq	%rdx, %rbx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdx, %rdx
	je	.LBB29_3
# %bb.2:
	movzwl	16(%rbx), %eax
	movq	%rsi, %rdi
	movl	%eax, %esi
	callq	tcp_recved
	movq	%rbx, %rdi
	callq	pbuf_free
	xorl	%eax, %eax
.LBB29_8:
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB29_9
.LBB29_3:
	movl	$42, __A_VARIABLE(%rip)
	testb	%cl, %cl
	je	.LBB29_5
# %bb.4:
	xorl	%eax, %eax
.LBB29_9:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
                                        # kill: def $al killed $al killed $eax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.LBB29_5:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1, 72(%rsi)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB29_7
# %bb.6:
	orb	$16, 82(%rsi)
	movl	$42, __A_VARIABLE(%rip)
.LBB29_7:
	movq	%rsi, %rdi
	movl	$1, %esi
	callq	tcp_close_shutdown
                                        # kill: def $al killed $al def $eax
	jmp	.LBB29_8
.LBB29_10:
	movl	$.L.str.30, %edi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$.L.str.1, %edi
	movl	$.L.str.2, %esi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$3, %edi
	callq	ukplat_terminate
.Lfunc_end29:
	.size	tcp_recv_null, .Lfunc_end29-tcp_recv_null
                                        # -- End function
	.globl	tcp_seg_free            # -- Begin function tcp_seg_free
	.p2align	4, 0x90
	.type	tcp_seg_free,@function
tcp_seg_free:                           # @tcp_seg_free
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB30_4
# %bb.1:
	movq	%rdi, %rbx
	movq	8(%rdi), %rdi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB30_3
# %bb.2:
	callq	pbuf_free
	movl	$42, __A_VARIABLE(%rip)
.LBB30_3:
	movl	$3, %edi
	movq	%rbx, %rsi
	callq	memp_free
	movl	$42, __A_VARIABLE(%rip)
.LBB30_4:
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end30:
	.size	tcp_seg_free, .Lfunc_end30-tcp_seg_free
                                        # -- End function
	.globl	tcp_setprio             # -- Begin function tcp_setprio
	.p2align	4, 0x90
	.type	tcp_setprio,@function
tcp_setprio:                            # @tcp_setprio
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB31_2
# %bb.1:
	movb	%sil, 76(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.LBB31_2:
	movl	$.L.str.28, %edi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$.L.str.1, %edi
	movl	$.L.str.2, %esi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$3, %edi
	callq	ukplat_terminate
.Lfunc_end31:
	.size	tcp_setprio, .Lfunc_end31-tcp_setprio
                                        # -- End function
	.globl	tcp_seg_copy            # -- Begin function tcp_seg_copy
	.p2align	4, 0x90
	.type	tcp_seg_copy,@function
tcp_seg_copy:                           # @tcp_seg_copy
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB32_5
# %bb.1:
	movq	%rdi, %r14
	movl	$3, %edi
	callq	memp_malloc
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB32_2
# %bb.3:
	movq	%rax, %rbx
	movl	$32, %edx
	movq	%rax, %rdi
	movq	%r14, %rsi
	callq	memcpy
	movq	8(%rbx), %rdi
	callq	pbuf_ref
	jmp	.LBB32_4
.LBB32_2:
	xorl	%ebx, %ebx
.LBB32_4:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.LBB32_5:
	movl	$.L.str.29, %edi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$.L.str.1, %edi
	movl	$.L.str.2, %esi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$3, %edi
	callq	ukplat_terminate
.Lfunc_end32:
	.size	tcp_seg_copy, .Lfunc_end32-tcp_seg_copy
                                        # -- End function
	.globl	tcp_alloc               # -- Begin function tcp_alloc
	.p2align	4, 0x90
	.type	tcp_alloc,@function
tcp_alloc:                              # @tcp_alloc
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movl	%edi, %r14d
	movl	$1, %edi
	callq	memp_malloc
	movq	%rax, %rbx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	jne	.LBB33_26
# %bb.1:
	movq	tcp_active_pcbs(%rip), %rdi
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	jne	.LBB33_2
.LBB33_5:
	movl	$42, __A_VARIABLE(%rip)
	movq	tcp_tw_pcbs(%rip), %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB33_12
# %bb.6:
	xorl	%edx, %edx
	movl	tcp_ticks(%rip), %ecx
	xorl	%edi, %edi
	jmp	.LBB33_7
	.p2align	4, 0x90
.LBB33_4:                               #   in Loop: Header=BB33_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rdi
	testq	%rbx, %rbx
	je	.LBB33_5
.LBB33_2:                               # =>This Inner Loop Header: Depth=1
	movq	56(%rdi), %rbx
	movzwl	82(%rdi), %eax
	movl	$42, __A_VARIABLE(%rip)
	testb	$8, %al
	je	.LBB33_4
# %bb.3:                                #   in Loop: Header=BB33_2 Depth=1
	andl	$65527, %eax            # imm = 0xFFF7
	movw	%ax, 82(%rdi)
	callq	tcp_close_shutdown_fin
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB33_4
	.p2align	4, 0x90
.LBB33_9:                               #   in Loop: Header=BB33_7 Depth=1
	movq	56(%rax), %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB33_10
.LBB33_7:                               # =>This Inner Loop Header: Depth=1
	movl	%ecx, %esi
	subl	88(%rax), %esi
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%edx, %esi
	jb	.LBB33_9
# %bb.8:                                #   in Loop: Header=BB33_7 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, %rdi
	movl	%esi, %edx
	jmp	.LBB33_9
.LBB33_10:
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB33_13
# %bb.11:
	movl	$1, %esi
	callq	tcp_abandon
	movl	$42, __A_VARIABLE(%rip)
.LBB33_12:
	movl	$42, __A_VARIABLE(%rip)
.LBB33_13:
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %edi
	callq	memp_malloc
	movq	%rax, %rbx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	jne	.LBB33_26
# %bb.14:
	movq	tcp_active_pcbs(%rip), %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB33_22
# %bb.15:
	xorl	%edx, %edx
	movl	tcp_ticks(%rip), %ecx
	xorl	%edi, %edi
	jmp	.LBB33_16
	.p2align	4, 0x90
.LBB33_19:                              #   in Loop: Header=BB33_16 Depth=1
	movq	56(%rax), %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB33_20
.LBB33_16:                              # =>This Inner Loop Header: Depth=1
	cmpl	$9, 72(%rax)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB33_19
# %bb.17:                               #   in Loop: Header=BB33_16 Depth=1
	movl	%ecx, %esi
	subl	88(%rax), %esi
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%edx, %esi
	jb	.LBB33_19
# %bb.18:                               #   in Loop: Header=BB33_16 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, %rdi
	movl	%esi, %edx
	jmp	.LBB33_19
.LBB33_20:
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB33_23
# %bb.21:
	xorl	%esi, %esi
	callq	tcp_abandon
.LBB33_22:
	movl	$42, __A_VARIABLE(%rip)
.LBB33_23:
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %edi
	callq	memp_malloc
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB33_27
# %bb.24:
	movq	%rax, %rbx
	jmp	.LBB33_25
.LBB33_27:
	movq	tcp_active_pcbs(%rip), %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB33_35
# %bb.28:
	xorl	%edx, %edx
	movl	tcp_ticks(%rip), %ecx
	xorl	%edi, %edi
	jmp	.LBB33_29
	.p2align	4, 0x90
.LBB33_32:                              #   in Loop: Header=BB33_29 Depth=1
	movq	56(%rax), %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB33_33
.LBB33_29:                              # =>This Inner Loop Header: Depth=1
	cmpl	$8, 72(%rax)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB33_32
# %bb.30:                               #   in Loop: Header=BB33_29 Depth=1
	movl	%ecx, %esi
	subl	88(%rax), %esi
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%edx, %esi
	jb	.LBB33_32
# %bb.31:                               #   in Loop: Header=BB33_29 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, %rdi
	movl	%esi, %edx
	jmp	.LBB33_32
.LBB33_33:
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB33_36
# %bb.34:
	xorl	%esi, %esi
	callq	tcp_abandon
.LBB33_35:
	movl	$42, __A_VARIABLE(%rip)
.LBB33_36:
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %edi
	callq	memp_malloc
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB33_38
# %bb.37:
	movq	%rax, %rbx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB33_25:
	movl	$42, __A_VARIABLE(%rip)
.LBB33_26:
	movl	$42, __A_VARIABLE(%rip)
.LBB33_51:
	movl	$280, %edx              # imm = 0x118
	movq	%rbx, %rdi
	xorl	%esi, %esi
	callq	memset
	movb	%r14b, 76(%rbx)
	movl	$1048576, 168(%rbx)     # imm = 0x100000
	movabsq	$281470681808895, %rax  # imm = 0xFFFF0000FFFF
	movq	%rax, 96(%rbx)
	movb	$-1, 51(%rbx)
	movl	$393222, 122(%rbx)      # imm = 0x60006
	movl	$35192831, 108(%rbx)    # imm = 0x218FFFF
	movl	$1, 132(%rbx)
	movl	tcp_ticks(%rip), %eax
	movl	%eax, 88(%rbx)
	movb	tcp_timer_ctr(%rip), %al
	movb	%al, 86(%rbx)
	movl	$1048576, 136(%rbx)     # imm = 0x100000
	movq	$tcp_recv_null, 232(%rbx)
	movl	$7200000, 264(%rbx)     # imm = 0x6DDD00
	movl	$42, __A_VARIABLE(%rip)
.LBB33_52:
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.LBB33_38:
	cmpb	$127, %r14b
	movzbl	%r14b, %eax
	movl	$127, %ecx
	cmovbl	%eax, %ecx
	movl	$42, __A_VARIABLE(%rip)
	testb	%cl, %cl
	je	.LBB33_50
# %bb.39:
	movq	tcp_active_pcbs(%rip), %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB33_49
# %bb.40:
	addb	$-1, %cl
	xorl	%esi, %esi
	movl	tcp_ticks(%rip), %r8d
	xorl	%edi, %edi
	jmp	.LBB33_41
.LBB33_42:                              #   in Loop: Header=BB33_41 Depth=1
	movl	%r8d, %edx
	subl	88(%rax), %edx
.LBB33_45:                              #   in Loop: Header=BB33_41 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, %rdi
	movl	%edx, %esi
	movl	%ebx, %ecx
.LBB33_46:                              #   in Loop: Header=BB33_41 Depth=1
	movq	56(%rax), %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB33_47
.LBB33_41:                              # =>This Inner Loop Header: Depth=1
	movzbl	76(%rax), %ebx
	movl	$42, __A_VARIABLE(%rip)
	cmpb	%cl, %bl
	jb	.LBB33_42
# %bb.43:                               #   in Loop: Header=BB33_41 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB33_46
# %bb.44:                               #   in Loop: Header=BB33_41 Depth=1
	movl	%r8d, %edx
	subl	88(%rax), %edx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%esi, %edx
	jae	.LBB33_45
	jmp	.LBB33_46
.LBB33_47:
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB33_50
# %bb.48:
	movl	$1, %esi
	callq	tcp_abandon
	movl	$42, __A_VARIABLE(%rip)
.LBB33_49:
	movl	$42, __A_VARIABLE(%rip)
.LBB33_50:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %edi
	callq	memp_malloc
	movq	%rax, %rbx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	jne	.LBB33_51
	jmp	.LBB33_52
.Lfunc_end33:
	.size	tcp_alloc, .Lfunc_end33-tcp_alloc
                                        # -- End function
	.globl	tcp_new                 # -- Begin function tcp_new
	.p2align	4, 0x90
	.type	tcp_new,@function
tcp_new:                                # @tcp_new
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$64, %edi
	callq	tcp_alloc
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end34:
	.size	tcp_new, .Lfunc_end34-tcp_new
                                        # -- End function
	.globl	tcp_new_ip_type         # -- Begin function tcp_new_ip_type
	.p2align	4, 0x90
	.type	tcp_new_ip_type,@function
tcp_new_ip_type:                        # @tcp_new_ip_type
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movl	%edi, %ebx
	movl	$64, %edi
	callq	tcp_alloc
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB35_2
# %bb.1:
	movb	%bl, 20(%rax)
	movb	%bl, 44(%rax)
	movl	$42, __A_VARIABLE(%rip)
.LBB35_2:
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end35:
	.size	tcp_new_ip_type, .Lfunc_end35-tcp_new_ip_type
                                        # -- End function
	.globl	tcp_arg                 # -- Begin function tcp_arg
	.p2align	4, 0x90
	.type	tcp_arg,@function
tcp_arg:                                # @tcp_arg
# %bb.0:
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB36_2
# %bb.1:
	movq	%rsi, 64(%rdi)
	movl	$42, __A_VARIABLE(%rip)
.LBB36_2:
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end36:
	.size	tcp_arg, .Lfunc_end36-tcp_arg
                                        # -- End function
	.globl	tcp_recv                # -- Begin function tcp_recv
	.p2align	4, 0x90
	.type	tcp_recv,@function
tcp_recv:                               # @tcp_recv
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB37_3
# %bb.1:
	cmpl	$1, 72(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB37_4
# %bb.2:
	movq	%rsi, 232(%rdi)
	movl	$42, __A_VARIABLE(%rip)
.LBB37_3:
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.LBB37_4:
	movl	$.L.str.31, %edi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$.L.str.1, %edi
	movl	$.L.str.2, %esi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$3, %edi
	callq	ukplat_terminate
.Lfunc_end37:
	.size	tcp_recv, .Lfunc_end37-tcp_recv
                                        # -- End function
	.globl	tcp_sent                # -- Begin function tcp_sent
	.p2align	4, 0x90
	.type	tcp_sent,@function
tcp_sent:                               # @tcp_sent
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB38_3
# %bb.1:
	cmpl	$1, 72(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB38_4
# %bb.2:
	movq	%rsi, 224(%rdi)
	movl	$42, __A_VARIABLE(%rip)
.LBB38_3:
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.LBB38_4:
	movl	$.L.str.32, %edi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$.L.str.1, %edi
	movl	$.L.str.2, %esi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$3, %edi
	callq	ukplat_terminate
.Lfunc_end38:
	.size	tcp_sent, .Lfunc_end38-tcp_sent
                                        # -- End function
	.globl	tcp_err                 # -- Begin function tcp_err
	.p2align	4, 0x90
	.type	tcp_err,@function
tcp_err:                                # @tcp_err
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB39_3
# %bb.1:
	cmpl	$1, 72(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB39_4
# %bb.2:
	movq	%rsi, 256(%rdi)
	movl	$42, __A_VARIABLE(%rip)
.LBB39_3:
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.LBB39_4:
	movl	$.L.str.33, %edi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$.L.str.1, %edi
	movl	$.L.str.2, %esi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$3, %edi
	callq	ukplat_terminate
.Lfunc_end39:
	.size	tcp_err, .Lfunc_end39-tcp_err
                                        # -- End function
	.globl	tcp_accept              # -- Begin function tcp_accept
	.p2align	4, 0x90
	.type	tcp_accept,@function
tcp_accept:                             # @tcp_accept
# %bb.0:
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB40_3
# %bb.1:
	cmpl	$1, 72(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB40_3
# %bb.2:
	movq	%rsi, 80(%rdi)
	movl	$42, __A_VARIABLE(%rip)
.LBB40_3:
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end40:
	.size	tcp_accept, .Lfunc_end40-tcp_accept
                                        # -- End function
	.globl	tcp_poll                # -- Begin function tcp_poll
	.p2align	4, 0x90
	.type	tcp_poll,@function
tcp_poll:                               # @tcp_poll
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB41_1
# %bb.3:
	cmpl	$1, 72(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB41_4
# %bb.5:
	movq	%rsi, 248(%rdi)
	movb	%dl, 85(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.LBB41_1:
	movl	$.L.str.34, %edi
	jmp	.LBB41_2
.LBB41_4:
	movl	$.L.str.35, %edi
.LBB41_2:
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$.L.str.1, %edi
	movl	$.L.str.2, %esi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$3, %edi
	callq	ukplat_terminate
.Lfunc_end41:
	.size	tcp_poll, .Lfunc_end41-tcp_poll
                                        # -- End function
	.globl	tcp_netif_ip_addr_changed # -- Begin function tcp_netif_ip_addr_changed
	.p2align	4, 0x90
	.type	tcp_netif_ip_addr_changed,@function
tcp_netif_ip_addr_changed:              # @tcp_netif_ip_addr_changed
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB42_6
# %bb.1:
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$6, 20(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	(%rdi), %eax
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB42_7
# %bb.2:
	testl	%eax, %eax
	jne	.LBB42_8
# %bb.3:
	cmpl	$0, 4(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB42_8
# %bb.4:
	cmpl	$0, 8(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB42_8
# %bb.5:
	cmpl	$0, 12(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB42_8
	jmp	.LBB42_6
.LBB42_7:
	testl	%eax, %eax
	je	.LBB42_6
.LBB42_8:
	movq	tcp_active_pcbs(%rip), %rsi
	movq	%rbx, %rdi
	callq	tcp_netif_ip_addr_changed_pcblist
	movq	tcp_bound_pcbs(%rip), %rsi
	movq	%rbx, %rdi
	callq	tcp_netif_ip_addr_changed_pcblist
	movl	$42, __A_VARIABLE(%rip)
	testq	%r14, %r14
	je	.LBB42_6
# %bb.9:
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$6, 20(%r14)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	(%r14), %eax
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB42_14
# %bb.10:
	testl	%eax, %eax
	jne	.LBB42_15
# %bb.11:
	cmpl	$0, 4(%r14)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB42_15
# %bb.12:
	cmpl	$0, 8(%r14)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB42_15
# %bb.13:
	cmpl	$0, 12(%r14)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB42_15
	jmp	.LBB42_6
.LBB42_14:
	testl	%eax, %eax
	je	.LBB42_6
.LBB42_15:
	movq	tcp_listen_pcbs(%rip), %rax
	jmp	.LBB42_16
.LBB42_27:                              #   in Loop: Header=BB42_16 Depth=1
	movl	$0, 12(%rax)
	movq	$0, 4(%rax)
	movb	$0, 16(%rax)
.LBB42_28:                              #   in Loop: Header=BB42_16 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	.p2align	4, 0x90
.LBB42_29:                              #   in Loop: Header=BB42_16 Depth=1
	movq	56(%rax), %rax
.LBB42_16:                              # =>This Inner Loop Header: Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB42_6
# %bb.17:                               #   in Loop: Header=BB42_16 Depth=1
	movzbl	20(%rax), %ecx
	cmpb	20(%rbx), %cl
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB42_29
# %bb.18:                               #   in Loop: Header=BB42_16 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	(%rax), %edx
	movl	(%rbx), %esi
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$6, %cl
	jne	.LBB42_24
# %bb.19:                               #   in Loop: Header=BB42_16 Depth=1
	cmpl	%esi, %edx
	jne	.LBB42_29
# %bb.20:                               #   in Loop: Header=BB42_16 Depth=1
	movl	4(%rax), %ecx
	cmpl	4(%rbx), %ecx
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB42_29
# %bb.21:                               #   in Loop: Header=BB42_16 Depth=1
	movl	8(%rax), %ecx
	cmpl	8(%rbx), %ecx
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB42_29
# %bb.22:                               #   in Loop: Header=BB42_16 Depth=1
	movl	12(%rax), %ecx
	cmpl	12(%rbx), %ecx
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB42_29
# %bb.23:                               #   in Loop: Header=BB42_16 Depth=1
	movzbl	16(%rax), %ecx
	cmpb	16(%rbx), %cl
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB42_29
	jmp	.LBB42_25
	.p2align	4, 0x90
.LBB42_24:                              #   in Loop: Header=BB42_16 Depth=1
	cmpl	%esi, %edx
	jne	.LBB42_29
.LBB42_25:                              #   in Loop: Header=BB42_16 Depth=1
	movzbl	20(%r14), %ecx
	movb	%cl, 20(%rax)
	cmpb	$6, 20(%r14)
	movl	$42, __A_VARIABLE(%rip)
	movl	(%r14), %ecx
	movl	%ecx, (%rax)
	jne	.LBB42_27
# %bb.26:                               #   in Loop: Header=BB42_16 Depth=1
	movl	4(%r14), %ecx
	movl	%ecx, 4(%rax)
	movl	8(%r14), %ecx
	movl	%ecx, 8(%rax)
	movl	12(%r14), %ecx
	movl	%ecx, 12(%rax)
	movzbl	16(%r14), %ecx
	movb	%cl, 16(%rax)
	jmp	.LBB42_28
.LBB42_6:
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end42:
	.size	tcp_netif_ip_addr_changed, .Lfunc_end42-tcp_netif_ip_addr_changed
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function tcp_netif_ip_addr_changed_pcblist
	.type	tcp_netif_ip_addr_changed_pcblist,@function
tcp_netif_ip_addr_changed_pcblist:      # @tcp_netif_ip_addr_changed_pcblist
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB43_15
# %bb.1:
	movl	$42, __A_VARIABLE(%rip)
	testq	%rsi, %rsi
	je	.LBB43_14
# %bb.2:
	movq	%rdi, %rbx
	jmp	.LBB43_3
	.p2align	4, 0x90
.LBB43_10:                              #   in Loop: Header=BB43_3 Depth=1
	movq	56(%rsi), %rsi
.LBB43_13:                              #   in Loop: Header=BB43_3 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rsi, %rsi
	je	.LBB43_14
.LBB43_3:                               # =>This Inner Loop Header: Depth=1
	movzbl	20(%rsi), %eax
	cmpb	20(%rbx), %al
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB43_10
# %bb.4:                                #   in Loop: Header=BB43_3 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	(%rsi), %ecx
	movl	(%rbx), %edx
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$6, %al
	jne	.LBB43_11
# %bb.5:                                #   in Loop: Header=BB43_3 Depth=1
	cmpl	%edx, %ecx
	jne	.LBB43_10
# %bb.6:                                #   in Loop: Header=BB43_3 Depth=1
	movl	4(%rsi), %eax
	cmpl	4(%rbx), %eax
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB43_10
# %bb.7:                                #   in Loop: Header=BB43_3 Depth=1
	movl	8(%rsi), %eax
	cmpl	8(%rbx), %eax
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB43_10
# %bb.8:                                #   in Loop: Header=BB43_3 Depth=1
	movl	12(%rsi), %eax
	cmpl	12(%rbx), %eax
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB43_10
# %bb.9:                                #   in Loop: Header=BB43_3 Depth=1
	movzbl	16(%rsi), %eax
	cmpb	16(%rbx), %al
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB43_10
	jmp	.LBB43_12
	.p2align	4, 0x90
.LBB43_11:                              #   in Loop: Header=BB43_3 Depth=1
	cmpl	%edx, %ecx
	jne	.LBB43_10
.LBB43_12:                              #   in Loop: Header=BB43_3 Depth=1
	movq	56(%rsi), %r14
	movq	%rsi, %rdi
	movl	$1, %esi
	callq	tcp_abandon
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %rsi
	jmp	.LBB43_13
.LBB43_14:
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.LBB43_15:
	movl	$.L.str.53, %edi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$.L.str.1, %edi
	movl	$.L.str.2, %esi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$3, %edi
	callq	ukplat_terminate
.Lfunc_end43:
	.size	tcp_netif_ip_addr_changed_pcblist, .Lfunc_end43-tcp_netif_ip_addr_changed_pcblist
                                        # -- End function
	.globl	tcp_debug_state_str     # -- Begin function tcp_debug_state_str
	.p2align	4, 0x90
	.type	tcp_debug_state_str,@function
tcp_debug_state_str:                    # @tcp_debug_state_str
# %bb.0:
	movl	%edi, %eax
	movq	tcp_state_str(,%rax,8), %rax
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end44:
	.size	tcp_debug_state_str, .Lfunc_end44-tcp_debug_state_str
                                        # -- End function
	.globl	tcp_tcp_get_tcp_addrinfo # -- Begin function tcp_tcp_get_tcp_addrinfo
	.p2align	4, 0x90
	.type	tcp_tcp_get_tcp_addrinfo,@function
tcp_tcp_get_tcp_addrinfo:               # @tcp_tcp_get_tcp_addrinfo
# %bb.0:
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB45_1
# %bb.2:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%esi, %esi
	je	.LBB45_7
# %bb.3:
	testq	%rdx, %rdx
	je	.LBB45_5
# %bb.4:
	movq	16(%rdi), %rax
	movq	%rax, 16(%rdx)
	movups	(%rdi), %xmm0
	movups	%xmm0, (%rdx)
	movl	$42, __A_VARIABLE(%rip)
.LBB45_5:
	movl	$42, __A_VARIABLE(%rip)
	testq	%rcx, %rcx
	je	.LBB45_12
# %bb.6:
	movzwl	78(%rdi), %eax
	jmp	.LBB45_11
.LBB45_1:
	movb	$-6, %al
	jmp	.LBB45_13
.LBB45_7:
	testq	%rdx, %rdx
	je	.LBB45_9
# %bb.8:
	movq	40(%rdi), %rax
	movq	%rax, 16(%rdx)
	movups	24(%rdi), %xmm0
	movups	%xmm0, (%rdx)
	movl	$42, __A_VARIABLE(%rip)
.LBB45_9:
	movl	$42, __A_VARIABLE(%rip)
	testq	%rcx, %rcx
	je	.LBB45_12
# %bb.10:
	movzwl	80(%rdi), %eax
.LBB45_11:
	movw	%ax, (%rcx)
	movl	$42, __A_VARIABLE(%rip)
.LBB45_12:
	xorl	%eax, %eax
.LBB45_13:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
                                        # kill: def $al killed $al killed $eax
	retq
.Lfunc_end45:
	.size	tcp_tcp_get_tcp_addrinfo, .Lfunc_end45-tcp_tcp_get_tcp_addrinfo
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
	movl	$42, __A_VARIABLE(%rip)
	movl	%ebx, %eax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end46:
	.size	uk_swrand_randr, .Lfunc_end46-uk_swrand_randr
                                        # -- End function
	.type	tcp_listen_pcbs,@object # @tcp_listen_pcbs
	.comm	tcp_listen_pcbs,8,8
	.type	tcp_bound_pcbs,@object  # @tcp_bound_pcbs
	.comm	tcp_bound_pcbs,8,8
	.type	tcp_active_pcbs,@object # @tcp_active_pcbs
	.comm	tcp_active_pcbs,8,8
	.type	tcp_tw_pcbs,@object     # @tcp_tw_pcbs
	.comm	tcp_tw_pcbs,8,8
	.type	tcp_pcb_lists,@object   # @tcp_pcb_lists
	.section	.rodata,"a",@progbits
	.globl	tcp_pcb_lists
	.p2align	4
tcp_pcb_lists:
	.quad	tcp_listen_pcbs
	.quad	tcp_bound_pcbs
	.quad	tcp_active_pcbs
	.quad	tcp_tw_pcbs
	.size	tcp_pcb_lists, 32

	.type	tcp_port,@object        # @tcp_port
	.data
	.p2align	1
tcp_port:
	.short	49152                   # 0xc000
	.size	tcp_port, 2

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"tcp_free: LISTEN"
	.size	.L.str, 17

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Assertion failure: %s\n"
	.size	.L.str.1, 23

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"!(1)"
	.size	.L.str.2, 5

	.type	tcp_timer,@object       # @tcp_timer
	.local	tcp_timer
	.comm	tcp_timer,1,1
	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"tcp_close: invalid pcb"
	.size	.L.str.3, 23

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"tcp_shutdown: invalid pcb"
	.size	.L.str.4, 26

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"tcp_abandon: invalid pcb"
	.size	.L.str.5, 25

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"don't call tcp_abort/tcp_abandon for listen-pcbs"
	.size	.L.str.6, 49

	.type	tcp_active_pcbs_changed,@object # @tcp_active_pcbs_changed
	.comm	tcp_active_pcbs_changed,1,1
	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"tcp_bind: invalid pcb"
	.size	.L.str.7, 22

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"tcp_bind: can only bind in state CLOSED"
	.size	.L.str.8, 40

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"tcp_listen_with_backlog_and_err: invalid pcb"
	.size	.L.str.9, 45

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"tcp_listen_with_backlog_and_err: pcb already connected"
	.size	.L.str.10, 55

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"tcp_update_rcv_ann_wnd: invalid pcb"
	.size	.L.str.11, 36

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"tcp_recved: invalid pcb"
	.size	.L.str.12, 24

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"don't call tcp_recved for listen-pcbs"
	.size	.L.str.13, 38

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"tcp_connect: invalid pcb"
	.size	.L.str.14, 25

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"tcp_connect: invalid ipaddr"
	.size	.L.str.15, 28

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"tcp_connect: can only connect from state CLOSED"
	.size	.L.str.16, 48

	.type	tcp_ticks,@object       # @tcp_ticks
	.comm	tcp_ticks,4,4
	.type	tcp_timer_ctr,@object   # @tcp_timer_ctr
	.local	tcp_timer_ctr
	.comm	tcp_timer_ctr,1,1
	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"tcp_slowtmr: active pcb->state != CLOSED\n"
	.size	.L.str.17, 42

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"tcp_slowtmr: active pcb->state != LISTEN\n"
	.size	.L.str.18, 42

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"tcp_slowtmr: active pcb->state != TIME-WAIT\n"
	.size	.L.str.19, 45

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"tcp_slowtimr: persist ticking with in-flight data"
	.size	.L.str.20, 50

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"tcp_slowtimr: persist ticking with empty send buffer"
	.size	.L.str.21, 53

	.type	tcp_persist_backoff,@object # @tcp_persist_backoff
	.section	.rodata,"a",@progbits
tcp_persist_backoff:
	.ascii	"\003\006\f\0300`x"
	.size	tcp_persist_backoff, 7

	.type	tcp_backoff,@object     # @tcp_backoff
tcp_backoff:
	.ascii	"\001\002\003\004\005\006\007\007\007\007\007\007\007"
	.size	tcp_backoff, 13

	.type	.L.str.22,@object       # @.str.22
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.22:
	.asciz	"tcp_slowtmr: middle tcp != tcp_active_pcbs"
	.size	.L.str.22, 43

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"tcp_slowtmr: first pcb == tcp_active_pcbs"
	.size	.L.str.23, 42

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"tcp_slowtmr: TIME-WAIT pcb->state == TIME-WAIT"
	.size	.L.str.24, 47

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"tcp_slowtmr: middle tcp != tcp_tw_pcbs"
	.size	.L.str.25, 39

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"tcp_slowtmr: first pcb == tcp_tw_pcbs"
	.size	.L.str.26, 38

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"tcp_process_refused_data: invalid pcb"
	.size	.L.str.27, 38

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"tcp_setprio: invalid pcb"
	.size	.L.str.28, 25

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"tcp_seg_copy: invalid seg"
	.size	.L.str.29, 26

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"tcp_recv_null: invalid pcb"
	.size	.L.str.30, 27

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"invalid socket state for recv callback"
	.size	.L.str.31, 39

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"invalid socket state for sent callback"
	.size	.L.str.32, 39

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"invalid socket state for err callback"
	.size	.L.str.33, 38

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"tcp_poll: invalid pcb"
	.size	.L.str.34, 22

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"invalid socket state for poll"
	.size	.L.str.35, 30

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"tcp_pcb_purge: invalid pcb"
	.size	.L.str.36, 27

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"tcp_pcb_remove: invalid pcb"
	.size	.L.str.37, 28

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"tcp_pcb_remove: invalid pcblist"
	.size	.L.str.38, 32

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"unsent segments leaking"
	.size	.L.str.39, 24

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"unacked segments leaking"
	.size	.L.str.40, 25

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"ooseq segments leaking"
	.size	.L.str.41, 23

	.type	tcp_next_iss.iss,@object # @tcp_next_iss.iss
	.data
	.p2align	2
tcp_next_iss.iss:
	.long	6510                    # 0x196e
	.size	tcp_next_iss.iss, 4

	.type	.L.str.42,@object       # @.str.42
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.42:
	.asciz	"tcp_next_iss: invalid pcb"
	.size	.L.str.42, 26

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"tcp_eff_send_mss_netif: invalid dst_ip"
	.size	.L.str.43, 39

	.type	tcp_state_str,@object   # @tcp_state_str
	.section	.rodata,"a",@progbits
	.p2align	4
tcp_state_str:
	.quad	.L.str.54
	.quad	.L.str.55
	.quad	.L.str.56
	.quad	.L.str.57
	.quad	.L.str.58
	.quad	.L.str.59
	.quad	.L.str.60
	.quad	.L.str.61
	.quad	.L.str.62
	.quad	.L.str.63
	.quad	.L.str.64
	.size	tcp_state_str, 88

	.type	uk_pr_crit.__str,@object # @uk_pr_crit.__str
	.section	.data_shared,"aw",@progbits
uk_pr_crit.__str:
	.asciz	"liblwip"
	.size	uk_pr_crit.__str, 8

	.type	uk_pr_crit.__str.44,@object # @uk_pr_crit.__str.44
uk_pr_crit.__str.44:
	.asciz	"tcp.c"
	.size	uk_pr_crit.__str.44, 6

	.type	.L.str.45,@object       # @.str.45
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.45:
	.asciz	"tcp_close_shutdown: invalid pcb"
	.size	.L.str.45, 32

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"pcb->flags & TF_RXCLOSED"
	.size	.L.str.46, 25

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"pcb != NULL"
	.size	.L.str.47, 12

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	"tcp_free_listen: !LISTEN"
	.size	.L.str.50, 25

	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"tcp_accept_null: invalid pcb"
	.size	.L.str.51, 29

	.type	.L.str.53,@object       # @.str.53
.L.str.53:
	.asciz	"tcp_netif_ip_addr_changed_pcblist: invalid old_addr"
	.size	.L.str.53, 52

	.type	.L.str.54,@object       # @.str.54
.L.str.54:
	.asciz	"CLOSED"
	.size	.L.str.54, 7

	.type	.L.str.55,@object       # @.str.55
.L.str.55:
	.asciz	"LISTEN"
	.size	.L.str.55, 7

	.type	.L.str.56,@object       # @.str.56
.L.str.56:
	.asciz	"SYN_SENT"
	.size	.L.str.56, 9

	.type	.L.str.57,@object       # @.str.57
.L.str.57:
	.asciz	"SYN_RCVD"
	.size	.L.str.57, 9

	.type	.L.str.58,@object       # @.str.58
.L.str.58:
	.asciz	"ESTABLISHED"
	.size	.L.str.58, 12

	.type	.L.str.59,@object       # @.str.59
.L.str.59:
	.asciz	"FIN_WAIT_1"
	.size	.L.str.59, 11

	.type	.L.str.60,@object       # @.str.60
.L.str.60:
	.asciz	"FIN_WAIT_2"
	.size	.L.str.60, 11

	.type	.L.str.61,@object       # @.str.61
.L.str.61:
	.asciz	"CLOSE_WAIT"
	.size	.L.str.61, 11

	.type	.L.str.62,@object       # @.str.62
.L.str.62:
	.asciz	"CLOSING"
	.size	.L.str.62, 8

	.type	.L.str.63,@object       # @.str.63
.L.str.63:
	.asciz	"LAST_ACK"
	.size	.L.str.63, 9

	.type	.L.str.64,@object       # @.str.64
.L.str.64:
	.asciz	"TIME_WAIT"
	.size	.L.str.64, 10

	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
