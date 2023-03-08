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
	movl	$_intrstack_start, %ecx
	cmpq	%rcx, %rax
	jb	.LBB0_3
# %bb.1:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$_end, %ecx
	cmpq	%rcx, %rax
	jbe	.LBB0_2
.LBB0_3:
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
	movl	%r11d, -28(%rbp)

	#NO_APP
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
	movl	%ebx, -28(%rbp)
.LBB0_4:
	orl	$49152, %ebx            # imm = 0xC000
	movw	%bx, tcp_port(%rip)
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
	je	.LBB1_1
# %bb.2:
	movq	%rdi, %rsi
	movl	$1, %edi
	popq	%rbp
	jmp	memp_free               # TAILCALL
.LBB1_1:
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
	testb	$1, %al
	jne	.LBB3_2
# %bb.1:
	popq	%rbp
	retq
.LBB3_2:
	popq	%rbp
	jmp	tcp_slowtmr             # TAILCALL
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
.LBB4_9:                                #   in Loop: Header=BB4_2 Depth=2
	movq	56(%rbx), %r14
.LBB4_10:                               #   in Loop: Header=BB4_2 Depth=2
	movq	%r14, %rbx
	testq	%r14, %r14
	je	.LBB4_11
.LBB4_2:                                #   Parent Loop BB4_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	tcp_timer_ctr(%rip), %eax
	cmpb	%al, 86(%rbx)
	je	.LBB4_9
# %bb.3:                                #   in Loop: Header=BB4_2 Depth=2
	movb	%al, 86(%rbx)
	movzwl	82(%rbx), %eax
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
.LBB4_5:                                #   in Loop: Header=BB4_2 Depth=2
	testb	$8, %al
	je	.LBB4_7
# %bb.6:                                #   in Loop: Header=BB4_2 Depth=2
	andl	$65527, %eax            # imm = 0xFFF7
	movw	%ax, 82(%rbx)
	movq	%rbx, %rdi
	callq	tcp_close_shutdown_fin
.LBB4_7:                                #   in Loop: Header=BB4_2 Depth=2
	movq	56(%rbx), %r14
	cmpq	$0, 208(%rbx)
	je	.LBB4_10
# %bb.8:                                #   in Loop: Header=BB4_2 Depth=2
	movb	$0, tcp_active_pcbs_changed(%rip)
	movq	%rbx, %rdi
	callq	tcp_process_refused_data
	cmpb	$0, tcp_active_pcbs_changed(%rip)
	je	.LBB4_10
.LBB4_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_2 Depth 2
	movq	tcp_active_pcbs(%rip), %rbx
	testq	%rbx, %rbx
	jne	.LBB4_2
.LBB4_11:
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
	movq	tcp_active_pcbs(%rip), %r14
	testq	%r14, %r14
	je	.LBB5_14
# %bb.1:                                # %.preheader2
	xorl	%r15d, %r15d
	movabsq	$2361183241434822607, %r12 # imm = 0x20C49BA5E353F7CF
	jmp	.LBB5_3
	.p2align	4, 0x90
.LBB5_11:                               #   in Loop: Header=BB5_3 Depth=1
	movq	56(%r14), %rbx
.LBB5_12:                               #   in Loop: Header=BB5_3 Depth=1
	movq	%r14, %r15
.LBB5_13:                               #   in Loop: Header=BB5_3 Depth=1
	movq	%rbx, %r14
	testq	%rbx, %rbx
	je	.LBB5_14
.LBB5_3:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_62 Depth 2
	movl	72(%r14), %eax
	cmpl	$10, %eax
	je	.LBB5_9
# %bb.4:                                #   in Loop: Header=BB5_3 Depth=1
	cmpl	$1, %eax
	je	.LBB5_8
# %bb.5:                                #   in Loop: Header=BB5_3 Depth=1
	testl	%eax, %eax
	je	.LBB5_6
# %bb.10:                               #   in Loop: Header=BB5_3 Depth=1
	movb	tcp_timer_ctr(%rip), %cl
	cmpb	%cl, 86(%r14)
	je	.LBB5_11
# %bb.18:                               #   in Loop: Header=BB5_3 Depth=1
	movb	%cl, 86(%r14)
	movb	126(%r14), %cl
	movb	$1, %r13b
	cmpl	$2, %eax
	jne	.LBB5_20
# %bb.19:                               #   in Loop: Header=BB5_3 Depth=1
	cmpb	$5, %cl
	jbe	.LBB5_21
	jmp	.LBB5_47
	.p2align	4, 0x90
.LBB5_20:                               #   in Loop: Header=BB5_3 Depth=1
	cmpb	$11, %cl
	ja	.LBB5_47
.LBB5_21:                               #   in Loop: Header=BB5_3 Depth=1
	movzbl	269(%r14), %eax
	testq	%rax, %rax
	je	.LBB5_36
# %bb.22:                               #   in Loop: Header=BB5_3 Depth=1
	cmpq	$0, 192(%r14)
	jne	.LBB5_23
# %bb.24:                               #   in Loop: Header=BB5_3 Depth=1
	cmpq	$0, 184(%r14)
	je	.LBB5_25
# %bb.26:                               #   in Loop: Header=BB5_3 Depth=1
	movb	$1, %r13b
	cmpb	$11, 270(%r14)
	ja	.LBB5_47
# %bb.27:                               #   in Loop: Header=BB5_3 Depth=1
	movb	tcp_persist_backoff-1(%rax), %al
	movb	268(%r14), %cl
	cmpb	%al, %cl
	jae	.LBB5_29
# %bb.28:                               #   in Loop: Header=BB5_3 Depth=1
	addb	$1, %cl
	movb	%cl, 268(%r14)
.LBB5_29:                               #   in Loop: Header=BB5_3 Depth=1
	cmpb	%al, %cl
	jb	.LBB5_46
# %bb.30:                               #   in Loop: Header=BB5_3 Depth=1
	movl	160(%r14), %eax
	testl	%eax, %eax
	je	.LBB5_31
# %bb.32:                               #   in Loop: Header=BB5_3 Depth=1
	movzwl	%ax, %esi
	movq	%r14, %rdi
	callq	tcp_split_unsent_seg
	testb	%al, %al
	jne	.LBB5_34
# %bb.33:                               #   in Loop: Header=BB5_3 Depth=1
	movq	%r14, %rdi
	callq	tcp_output
	testb	%al, %al
	jne	.LBB5_34
	jmp	.LBB5_46
.LBB5_36:                               #   in Loop: Header=BB5_3 Depth=1
	movzwl	108(%r14), %eax
	testw	%ax, %ax
	js	.LBB5_39
# %bb.37:                               #   in Loop: Header=BB5_3 Depth=1
	movzwl	%ax, %ecx
	cmpl	$32767, %ecx            # imm = 0x7FFF
	je	.LBB5_39
# %bb.38:                               #   in Loop: Header=BB5_3 Depth=1
	addl	$1, %eax
	movw	%ax, 108(%r14)
.LBB5_39:                               #   in Loop: Header=BB5_3 Depth=1
	cmpw	124(%r14), %ax
	jl	.LBB5_46
# %bb.40:                               #   in Loop: Header=BB5_3 Depth=1
	movq	%r14, %rdi
	callq	tcp_rexmit_rto_prepare
	testb	%al, %al
	je	.LBB5_43
# %bb.41:                               #   in Loop: Header=BB5_3 Depth=1
	cmpq	$0, 192(%r14)
	jne	.LBB5_46
# %bb.42:                               #   in Loop: Header=BB5_3 Depth=1
	cmpq	$0, 184(%r14)
	je	.LBB5_46
.LBB5_43:                               #   in Loop: Header=BB5_3 Depth=1
	cmpl	$2, 72(%r14)
	je	.LBB5_45
# %bb.44:                               #   in Loop: Header=BB5_3 Depth=1
	movzbl	126(%r14), %eax
	cmpb	$12, %al
	movl	$12, %ecx
	cmovael	%ecx, %eax
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
.LBB5_45:                               #   in Loop: Header=BB5_3 Depth=1
	movw	$0, 108(%r14)
	movl	132(%r14), %eax
	movl	160(%r14), %ecx
	cmpl	%ecx, %eax
	cmovbl	%eax, %ecx
	shrl	%ecx
	movzwl	110(%r14), %eax
	leal	(%rax,%rax), %edx
	cmpl	%edx, %ecx
	cmovbl	%edx, %ecx
	movl	%ecx, 136(%r14)
	movl	%eax, 132(%r14)
	movl	$0, 176(%r14)
	movq	%r14, %rdi
	callq	tcp_rexmit_rto_commit
	jmp	.LBB5_46
.LBB5_31:                               #   in Loop: Header=BB5_3 Depth=1
	movq	%r14, %rdi
	callq	tcp_zero_window_probe
	testb	%al, %al
	jne	.LBB5_46
.LBB5_34:                               #   in Loop: Header=BB5_3 Depth=1
	movb	$0, 268(%r14)
	movb	269(%r14), %al
	cmpb	$6, %al
	ja	.LBB5_46
# %bb.35:                               #   in Loop: Header=BB5_3 Depth=1
	addb	$1, %al
	movb	%al, 269(%r14)
.LBB5_46:                               #   in Loop: Header=BB5_3 Depth=1
	xorl	%r13d, %r13d
.LBB5_47:                               #   in Loop: Header=BB5_3 Depth=1
	movl	72(%r14), %eax
	cmpl	$6, %eax
	jne	.LBB5_50
# %bb.48:                               #   in Loop: Header=BB5_3 Depth=1
	testb	$16, 82(%r14)
	je	.LBB5_50
# %bb.49:                               #   in Loop: Header=BB5_3 Depth=1
	movl	tcp_ticks(%rip), %ecx
	subl	88(%r14), %ecx
	cmpl	$40, %ecx
	seta	%cl
	addb	%cl, %r13b
.LBB5_50:                               #   in Loop: Header=BB5_3 Depth=1
	testb	$8, 49(%r14)
	je	.LBB5_58
# %bb.51:                               #   in Loop: Header=BB5_3 Depth=1
	cmpl	$7, %eax
	je	.LBB5_53
# %bb.52:                               #   in Loop: Header=BB5_3 Depth=1
	cmpl	$4, %eax
	jne	.LBB5_58
.LBB5_53:                               #   in Loop: Header=BB5_3 Depth=1
	movl	tcp_ticks(%rip), %ecx
	subl	88(%r14), %ecx
	movl	264(%r14), %esi
	leaq	675000(%rsi), %rax
	shrq	$2, %rax
	mulq	%r12
	shrq	$4, %rdx
	cmpq	%rcx, %rdx
	jae	.LBB5_55
# %bb.54:                               #   in Loop: Header=BB5_3 Depth=1
	addb	$1, %r13b
	movb	$1, %al
	movl	%eax, -44(%rbp)         # 4-byte Spill
	jmp	.LBB5_59
.LBB5_55:                               #   in Loop: Header=BB5_3 Depth=1
	movzbl	271(%r14), %eax
	imulq	$75000, %rax, %rax      # imm = 0x124F8
	addq	%rsi, %rax
	shrq	$2, %rax
	mulq	%r12
	shrq	$4, %rdx
	cmpq	%rcx, %rdx
	jae	.LBB5_58
# %bb.56:                               #   in Loop: Header=BB5_3 Depth=1
	movq	%r14, %rdi
	callq	tcp_keepalive
	testb	%al, %al
	jne	.LBB5_58
# %bb.57:                               #   in Loop: Header=BB5_3 Depth=1
	addb	$1, 271(%r14)
	.p2align	4, 0x90
.LBB5_58:                               #   in Loop: Header=BB5_3 Depth=1
	movl	$0, -44(%rbp)           # 4-byte Folded Spill
.LBB5_59:                               #   in Loop: Header=BB5_3 Depth=1
	movq	200(%r14), %rbx
	testq	%rbx, %rbx
	je	.LBB5_66
# %bb.60:                               #   in Loop: Header=BB5_3 Depth=1
	movl	tcp_ticks(%rip), %eax
	subl	88(%r14), %eax
	movswl	124(%r14), %ecx
	addl	%ecx, %ecx
	leal	(%rcx,%rcx,2), %ecx
	cmpl	%ecx, %eax
	jb	.LBB5_66
# %bb.61:                               # %.preheader1
                                        #   in Loop: Header=BB5_3 Depth=1
	movq	%r15, -56(%rbp)         # 8-byte Spill
	movq	%r12, %r15
	jmp	.LBB5_62
	.p2align	4, 0x90
.LBB5_64:                               #   in Loop: Header=BB5_62 Depth=2
	movl	$3, %edi
	movq	%rbx, %rsi
	callq	memp_free
	movq	%r12, %rbx
	testq	%r12, %r12
	je	.LBB5_65
.LBB5_62:                               #   Parent Loop BB5_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%rbx), %r12
	movq	8(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB5_64
# %bb.63:                               #   in Loop: Header=BB5_62 Depth=2
	callq	pbuf_free
	jmp	.LBB5_64
.LBB5_65:                               #   in Loop: Header=BB5_3 Depth=1
	movq	$0, 200(%r14)
	movq	%r15, %r12
	movq	-56(%rbp), %r15         # 8-byte Reload
.LBB5_66:                               #   in Loop: Header=BB5_3 Depth=1
	movl	72(%r14), %eax
	cmpl	$3, %eax
	je	.LBB5_67
# %bb.68:                               #   in Loop: Header=BB5_3 Depth=1
	cmpl	$9, %eax
	jne	.LBB5_71
# %bb.69:                               #   in Loop: Header=BB5_3 Depth=1
	movl	$240, %eax
	jmp	.LBB5_70
.LBB5_67:                               #   in Loop: Header=BB5_3 Depth=1
	movl	$40, %eax
.LBB5_70:                               #   in Loop: Header=BB5_3 Depth=1
	movl	tcp_ticks(%rip), %ecx
	subl	88(%r14), %ecx
	cmpl	%ecx, %eax
	adcb	$0, %r13b
.LBB5_71:                               #   in Loop: Header=BB5_3 Depth=1
	testb	%r13b, %r13b
	je	.LBB5_85
# %bb.72:                               #   in Loop: Header=BB5_3 Depth=1
	movq	256(%r14), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	%r14, %rdi
	callq	tcp_pcb_purge
	movq	tcp_active_pcbs(%rip), %rax
	testq	%r15, %r15
	je	.LBB5_76
# %bb.73:                               #   in Loop: Header=BB5_3 Depth=1
	cmpq	%rax, %r14
	je	.LBB5_74
# %bb.75:                               #   in Loop: Header=BB5_3 Depth=1
	movq	56(%r14), %rax
	movq	%rax, 56(%r15)
	cmpb	$0, -44(%rbp)           # 1-byte Folded Reload
	je	.LBB5_81
.LBB5_80:                               #   in Loop: Header=BB5_3 Depth=1
	movl	92(%r14), %edx
	movl	144(%r14), %esi
	leaq	24(%r14), %r8
	movzwl	78(%r14), %r9d
	movzwl	80(%r14), %eax
	movl	%eax, (%rsp)
	movq	%r14, %rdi
	movq	%r14, %rcx
	callq	tcp_rst
.LBB5_81:                               #   in Loop: Header=BB5_3 Depth=1
	cmpl	$1, 72(%r14)
	je	.LBB5_82
# %bb.83:                               #   in Loop: Header=BB5_3 Depth=1
	movq	56(%r14), %rbx
	movq	64(%r14), %r13
	movl	$1, %edi
	movq	%r14, %rsi
	callq	memp_free
	movb	$0, tcp_active_pcbs_changed(%rip)
	movq	-56(%rbp), %rax         # 8-byte Reload
	testq	%rax, %rax
	je	.LBB5_13
# %bb.84:                               #   in Loop: Header=BB5_3 Depth=1
	movq	%r13, %rdi
	movl	$-13, %esi
	callq	*%rax
	cmpb	$0, tcp_active_pcbs_changed(%rip)
	jne	.LBB5_2
	jmp	.LBB5_13
.LBB5_85:                               #   in Loop: Header=BB5_3 Depth=1
	movq	56(%r14), %rbx
	movb	84(%r14), %al
	addb	$1, %al
	movb	%al, 84(%r14)
	cmpb	85(%r14), %al
	jb	.LBB5_12
# %bb.86:                               #   in Loop: Header=BB5_3 Depth=1
	movb	$0, 84(%r14)
	movb	$0, tcp_active_pcbs_changed(%rip)
	movq	248(%r14), %rax
	testq	%rax, %rax
	je	.LBB5_89
# %bb.87:                               #   in Loop: Header=BB5_3 Depth=1
	movq	64(%r14), %rdi
	movq	%r14, %rsi
	callq	*%rax
	cmpb	$0, tcp_active_pcbs_changed(%rip)
	je	.LBB5_88
.LBB5_2:                                #   in Loop: Header=BB5_3 Depth=1
	movq	tcp_active_pcbs(%rip), %r14
	movl	$0, %r15d
	testq	%r14, %r14
	jne	.LBB5_3
	jmp	.LBB5_14
.LBB5_76:                               #   in Loop: Header=BB5_3 Depth=1
	cmpq	%r14, %rax
	jne	.LBB5_77
# %bb.78:                               #   in Loop: Header=BB5_3 Depth=1
	movq	56(%r14), %rax
	movq	%rax, tcp_active_pcbs(%rip)
	cmpb	$0, -44(%rbp)           # 1-byte Folded Reload
	jne	.LBB5_80
	jmp	.LBB5_81
.LBB5_88:                               #   in Loop: Header=BB5_3 Depth=1
	testb	%al, %al
	jne	.LBB5_12
.LBB5_89:                               #   in Loop: Header=BB5_3 Depth=1
	movq	%r14, %rdi
	callq	tcp_output
	jmp	.LBB5_12
.LBB5_14:
	movq	tcp_tw_pcbs(%rip), %rbx
	testq	%rbx, %rbx
	je	.LBB5_102
# %bb.15:                               # %.preheader
	xorl	%r14d, %r14d
	jmp	.LBB5_16
	.p2align	4, 0x90
.LBB5_100:                              #   in Loop: Header=BB5_16 Depth=1
	movq	%rbx, %r14
	movq	56(%rbx), %rbx
	testq	%rbx, %rbx
	je	.LBB5_102
.LBB5_16:                               # =>This Inner Loop Header: Depth=1
	cmpl	$10, 72(%rbx)
	jne	.LBB5_17
# %bb.90:                               #   in Loop: Header=BB5_16 Depth=1
	movl	tcp_ticks(%rip), %eax
	subl	88(%rbx), %eax
	cmpl	$241, %eax
	jb	.LBB5_100
# %bb.91:                               #   in Loop: Header=BB5_16 Depth=1
	movq	%rbx, %rdi
	callq	tcp_pcb_purge
	movq	tcp_tw_pcbs(%rip), %rax
	testq	%r14, %r14
	je	.LBB5_95
# %bb.92:                               #   in Loop: Header=BB5_16 Depth=1
	cmpq	%rax, %rbx
	je	.LBB5_93
# %bb.94:                               #   in Loop: Header=BB5_16 Depth=1
	movq	56(%rbx), %rax
	movq	%rax, 56(%r14)
	cmpl	$1, 72(%rbx)
	jne	.LBB5_99
	jmp	.LBB5_82
.LBB5_95:                               #   in Loop: Header=BB5_16 Depth=1
	cmpq	%rbx, %rax
	jne	.LBB5_96
# %bb.97:                               #   in Loop: Header=BB5_16 Depth=1
	movq	56(%rbx), %rax
	movq	%rax, tcp_tw_pcbs(%rip)
	cmpl	$1, 72(%rbx)
	je	.LBB5_82
.LBB5_99:                               #   in Loop: Header=BB5_16 Depth=1
	movq	56(%rbx), %r15
	movl	$1, %edi
	movq	%rbx, %rsi
	callq	memp_free
	movq	%r15, %rbx
	testq	%rbx, %rbx
	jne	.LBB5_16
.LBB5_102:
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB5_9:
	movl	$.L.str.19, %edi
	jmp	.LBB5_7
.LBB5_8:
	movl	$.L.str.18, %edi
	jmp	.LBB5_7
.LBB5_6:
	movl	$.L.str.17, %edi
	jmp	.LBB5_7
.LBB5_17:
	movl	$.L.str.24, %edi
	jmp	.LBB5_7
.LBB5_82:
	movl	$.L.str, %edi
	jmp	.LBB5_7
.LBB5_93:
	movl	$.L.str.25, %edi
	jmp	.LBB5_7
.LBB5_74:
	movl	$.L.str.22, %edi
	jmp	.LBB5_7
.LBB5_96:
	movl	$.L.str.26, %edi
	jmp	.LBB5_7
.LBB5_23:
	movl	$.L.str.20, %edi
	jmp	.LBB5_7
.LBB5_25:
	movl	$.L.str.21, %edi
	jmp	.LBB5_7
.LBB5_77:
	movl	$.L.str.23, %edi
.LBB5_7:
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
	testq	%rdi, %rdi
	je	.LBB6_4
# %bb.1:
	cmpl	$1, 72(%rdi)
	je	.LBB6_3
# %bb.2:
	orb	$16, 82(%rdi)
.LBB6_3:
	movl	$1, %esi
	popq	%rbp
	jmp	tcp_close_shutdown      # TAILCALL
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
	testq	%rdi, %rdi
	je	.LBB7_1
# %bb.3:
	movq	%rdi, %rbx
	movl	72(%rdi), %eax
	testb	%sil, %sil
	je	.LBB7_24
# %bb.4:
	cmpl	$7, %eax
	ja	.LBB7_53
# %bb.5:
	movl	%eax, %ecx
	jmpq	*.LJTI7_0(,%rcx,8)
.LBB7_6:
	cmpq	$0, 208(%rbx)
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
	jne	.LBB7_9
.LBB7_24:
	cmpl	$2, %eax
	je	.LBB7_19
# %bb.25:
	cmpl	$1, %eax
	je	.LBB7_35
# %bb.26:
	testl	%eax, %eax
	jne	.LBB7_53
.LBB7_27:
	cmpw	$0, 78(%rbx)
	je	.LBB7_22
# %bb.28:
	movq	tcp_bound_pcbs(%rip), %rax
	cmpq	%rbx, %rax
	je	.LBB7_29
	.p2align	4, 0x90
.LBB7_30:                               # =>This Inner Loop Header: Depth=1
	testq	%rax, %rax
	je	.LBB7_33
# %bb.31:                               #   in Loop: Header=BB7_30 Depth=1
	movq	%rax, %rcx
	movq	56(%rax), %rax
	cmpq	%rbx, %rax
	jne	.LBB7_30
# %bb.32:
	leaq	56(%rbx), %rax
	movq	56(%rbx), %rdx
	movq	%rdx, 56(%rcx)
	movq	$0, (%rax)
	jmp	.LBB7_22
.LBB7_53:
	movq	%rbx, %rdi
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	jmp	tcp_close_shutdown_fin  # TAILCALL
.LBB7_35:
	movq	tcp_bound_pcbs(%rip), %rax
	jmp	.LBB7_36
	.p2align	4, 0x90
.LBB7_39:                               #   in Loop: Header=BB7_36 Depth=1
	movq	56(%rax), %rax
.LBB7_36:                               # =>This Inner Loop Header: Depth=1
	testq	%rax, %rax
	je	.LBB7_40
# %bb.37:                               #   in Loop: Header=BB7_36 Depth=1
	cmpq	%rbx, 216(%rax)
	jne	.LBB7_39
# %bb.38:                               #   in Loop: Header=BB7_36 Depth=1
	movq	$0, 216(%rax)
	jmp	.LBB7_39
.LBB7_40:
	movq	tcp_active_pcbs(%rip), %rax
	jmp	.LBB7_41
	.p2align	4, 0x90
.LBB7_44:                               #   in Loop: Header=BB7_41 Depth=1
	movq	56(%rax), %rax
.LBB7_41:                               # =>This Inner Loop Header: Depth=1
	testq	%rax, %rax
	je	.LBB7_45
# %bb.42:                               #   in Loop: Header=BB7_41 Depth=1
	cmpq	%rbx, 216(%rax)
	jne	.LBB7_44
# %bb.43:                               #   in Loop: Header=BB7_41 Depth=1
	movq	$0, 216(%rax)
	jmp	.LBB7_44
.LBB7_45:
	movq	tcp_tw_pcbs(%rip), %rax
	jmp	.LBB7_46
	.p2align	4, 0x90
.LBB7_49:                               #   in Loop: Header=BB7_46 Depth=1
	movq	56(%rax), %rax
.LBB7_46:                               # =>This Inner Loop Header: Depth=1
	testq	%rax, %rax
	je	.LBB7_50
# %bb.47:                               #   in Loop: Header=BB7_46 Depth=1
	cmpq	%rbx, 216(%rax)
	jne	.LBB7_49
# %bb.48:                               #   in Loop: Header=BB7_46 Depth=1
	movq	$0, 216(%rax)
	jmp	.LBB7_49
.LBB7_50:
	movl	$tcp_listen_pcbs, %edi
	movq	%rbx, %rsi
	callq	tcp_pcb_remove
	cmpl	$1, 72(%rbx)
	je	.LBB7_51
# %bb.52:
	movl	$2, %edi
	jmp	.LBB7_23
.LBB7_19:
	movl	$tcp_active_pcbs, %edi
	movq	%rbx, %rsi
	callq	tcp_pcb_remove
	movb	$1, tcp_active_pcbs_changed(%rip)
	jmp	.LBB7_20
.LBB7_9:
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
	movq	tcp_active_pcbs(%rip), %rcx
	cmpq	%rbx, %rcx
	je	.LBB7_12
	.p2align	4, 0x90
.LBB7_13:                               # =>This Inner Loop Header: Depth=1
	testq	%rcx, %rcx
	je	.LBB7_16
# %bb.14:                               #   in Loop: Header=BB7_13 Depth=1
	movq	%rcx, %rax
	movq	56(%rcx), %rcx
	cmpq	%rbx, %rcx
	jne	.LBB7_13
# %bb.15:
	movq	56(%rbx), %rcx
	movq	%rcx, 56(%rax)
	jmp	.LBB7_16
.LBB7_12:
	movq	56(%rbx), %rax
	movq	%rax, tcp_active_pcbs(%rip)
.LBB7_16:
	movq	$0, 56(%rbx)
	movb	$1, tcp_active_pcbs_changed(%rip)
	cmpq	%rbx, tcp_input_pcb(%rip)
	je	.LBB7_17
.LBB7_20:
	cmpl	$1, 72(%rbx)
	je	.LBB7_21
.LBB7_22:
	movl	$1, %edi
.LBB7_23:
	movq	%rbx, %rsi
	callq	memp_free
.LBB7_18:
	xorl	%eax, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.LBB7_17:
	callq	tcp_trigger_input_pcb_close
	jmp	.LBB7_18
.LBB7_29:
	leaq	56(%rbx), %rax
	movq	56(%rbx), %rcx
	movq	%rcx, tcp_bound_pcbs(%rip)
	movq	$0, (%rax)
	jmp	.LBB7_22
.LBB7_33:
	leaq	56(%rbx), %rax
	movq	$0, (%rax)
	jmp	.LBB7_22
.LBB7_1:
	movl	$.L.str.45, %edi
	jmp	.LBB7_2
.LBB7_21:
	movl	$.L.str, %edi
	jmp	.LBB7_2
.LBB7_51:
	movl	$.L.str.50, %edi
	jmp	.LBB7_2
.LBB7_10:
	movl	$.L.str.46, %edi
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
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI7_0:
	.quad	.LBB7_27
	.quad	.LBB7_35
	.quad	.LBB7_19
	.quad	.LBB7_53
	.quad	.LBB7_6
	.quad	.LBB7_53
	.quad	.LBB7_53
	.quad	.LBB7_6
                                        # -- End function
	.text
	.globl	tcp_shutdown            # -- Begin function tcp_shutdown
	.p2align	4, 0x90
	.type	tcp_shutdown,@function
tcp_shutdown:                           # @tcp_shutdown
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	testq	%rdi, %rdi
	je	.LBB8_14
# %bb.1:
	movq	%rdi, %rbx
	movl	72(%rdi), %ecx
	movb	$-11, %al
	cmpl	$1, %ecx
	je	.LBB8_9
# %bb.2:
	testl	%esi, %esi
	je	.LBB8_10
# %bb.3:
	orb	$16, 82(%rbx)
	testl	%edx, %edx
	je	.LBB8_6
# %bb.4:
	movq	%rbx, %rdi
	movl	$1, %esi
	jmp	.LBB8_5
.LBB8_10:
	testl	%edx, %edx
	je	.LBB8_8
# %bb.11:
	cmpl	$7, %ecx
	ja	.LBB8_9
# %bb.12:
	movl	$152, %edx
	btl	%ecx, %edx
	jae	.LBB8_9
# %bb.13:
	movq	%rbx, %rdi
	xorl	%esi, %esi
.LBB8_5:
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	jmp	tcp_close_shutdown      # TAILCALL
.LBB8_6:
	movq	208(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB8_8
# %bb.7:
	callq	pbuf_free
	movq	$0, 208(%rbx)
.LBB8_8:
	xorl	%eax, %eax
.LBB8_9:
                                        # kill: def $al killed $al killed $eax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.LBB8_14:
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
	testq	%rdi, %rdi
	je	.LBB9_34
# %bb.1:
	movq	%rdi, %r15
	movl	72(%rdi), %eax
	cmpl	$10, %eax
	je	.LBB9_5
# %bb.2:
	cmpl	$1, %eax
	je	.LBB9_35
# %bb.3:
	movl	%esi, %r13d
	movl	144(%r15), %edi
	movl	92(%r15), %ebx
	movq	256(%r15), %rdx
	movq	64(%r15), %rsi
	movzwl	78(%r15), %r12d
	testl	%eax, %eax
	movq	%rdx, -64(%rbp)         # 8-byte Spill
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	movl	%edi, -48(%rbp)         # 4-byte Spill
	movl	%ebx, -44(%rbp)         # 4-byte Spill
	je	.LBB9_7
# %bb.4:
	movl	$tcp_active_pcbs, %edi
	movq	%r15, %rsi
	callq	tcp_pcb_remove
	movb	$1, tcp_active_pcbs_changed(%rip)
	jmp	.LBB9_16
.LBB9_5:
	movl	$tcp_tw_pcbs, %edi
	movq	%r15, %rsi
	callq	tcp_pcb_remove
	cmpl	$1, 72(%r15)
	je	.LBB9_36
# %bb.6:
	movl	$1, %edi
	movq	%r15, %rsi
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	memp_free               # TAILCALL
.LBB9_7:
	testw	%r12w, %r12w
	je	.LBB9_15
# %bb.8:
	movq	tcp_bound_pcbs(%rip), %rax
	cmpq	%r15, %rax
	je	.LBB9_12
	.p2align	4, 0x90
.LBB9_9:                                # =>This Inner Loop Header: Depth=1
	testq	%rax, %rax
	je	.LBB9_13
# %bb.10:                               #   in Loop: Header=BB9_9 Depth=1
	movq	%rax, %rcx
	movq	56(%rax), %rax
	cmpq	%r15, %rax
	jne	.LBB9_9
# %bb.11:
	leaq	56(%r15), %rax
	movq	56(%r15), %rdx
	movq	%rdx, 56(%rcx)
	jmp	.LBB9_14
.LBB9_12:
	leaq	56(%r15), %rax
	movq	56(%r15), %rcx
	movq	%rcx, tcp_bound_pcbs(%rip)
	jmp	.LBB9_14
.LBB9_13:
	leaq	56(%r15), %rax
.LBB9_14:
	movq	$0, (%rax)
.LBB9_15:
	xorl	%r12d, %r12d
	xorl	%r13d, %r13d
.LBB9_16:
	movq	192(%r15), %r14
	testq	%r14, %r14
	jne	.LBB9_25
.LBB9_17:
	movq	184(%r15), %rbx
	testq	%rbx, %rbx
	jne	.LBB9_28
.LBB9_18:
	movq	200(%r15), %rbx
	testq	%rbx, %rbx
	jne	.LBB9_31
.LBB9_19:
	testl	%r13d, %r13d
	je	.LBB9_21
# %bb.20:
	leaq	24(%r15), %r8
	movzwl	80(%r15), %eax
	movl	%eax, (%rsp)
	movzwl	%r12w, %r9d
	movq	%r15, %rdi
	movl	-48(%rbp), %esi         # 4-byte Reload
	movl	-44(%rbp), %edx         # 4-byte Reload
	movq	%r15, %rcx
	callq	tcp_rst
.LBB9_21:
	cmpl	$1, 72(%r15)
	je	.LBB9_36
# %bb.22:
	movl	$1, %edi
	movq	%r15, %rsi
	callq	memp_free
	movq	-64(%rbp), %rax         # 8-byte Reload
	testq	%rax, %rax
	je	.LBB9_33
# %bb.23:
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movl	$-13, %esi
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmpq	*%rax                   # TAILCALL
	.p2align	4, 0x90
.LBB9_24:                               #   in Loop: Header=BB9_25 Depth=1
	movl	$3, %edi
	movq	%r14, %rsi
	callq	memp_free
	movq	%rbx, %r14
	testq	%rbx, %rbx
	je	.LBB9_17
.LBB9_25:                               # =>This Inner Loop Header: Depth=1
	movq	(%r14), %rbx
	movq	8(%r14), %rdi
	testq	%rdi, %rdi
	je	.LBB9_24
# %bb.26:                               #   in Loop: Header=BB9_25 Depth=1
	callq	pbuf_free
	jmp	.LBB9_24
	.p2align	4, 0x90
.LBB9_27:                               #   in Loop: Header=BB9_28 Depth=1
	movl	$3, %edi
	movq	%rbx, %rsi
	callq	memp_free
	movq	%r14, %rbx
	testq	%r14, %r14
	je	.LBB9_18
.LBB9_28:                               # =>This Inner Loop Header: Depth=1
	movq	(%rbx), %r14
	movq	8(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB9_27
# %bb.29:                               #   in Loop: Header=BB9_28 Depth=1
	callq	pbuf_free
	jmp	.LBB9_27
	.p2align	4, 0x90
.LBB9_30:                               #   in Loop: Header=BB9_31 Depth=1
	movl	$3, %edi
	movq	%rbx, %rsi
	callq	memp_free
	movq	%r14, %rbx
	testq	%r14, %r14
	je	.LBB9_19
.LBB9_31:                               # =>This Inner Loop Header: Depth=1
	movq	(%rbx), %r14
	movq	8(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB9_30
# %bb.32:                               #   in Loop: Header=BB9_31 Depth=1
	callq	pbuf_free
	jmp	.LBB9_30
.LBB9_33:
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB9_34:
	movl	$.L.str.5, %edi
	jmp	.LBB9_37
.LBB9_35:
	movl	$.L.str.6, %edi
	jmp	.LBB9_37
.LBB9_36:
	movl	$.L.str, %edi
.LBB9_37:
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
	testq	%rsi, %rsi
	je	.LBB10_1
# %bb.3:
	testq	%rdi, %rdi
	je	.LBB10_4
# %bb.5:
	movq	%rsi, %rbx
	movq	(%rdi), %rcx
	cmpq	%rsi, %rcx
	je	.LBB10_6
	.p2align	4, 0x90
.LBB10_7:                               # =>This Inner Loop Header: Depth=1
	testq	%rcx, %rcx
	je	.LBB10_10
# %bb.8:                                #   in Loop: Header=BB10_7 Depth=1
	movq	%rcx, %rax
	movq	56(%rcx), %rcx
	cmpq	%rbx, %rcx
	jne	.LBB10_7
# %bb.9:
	movq	56(%rbx), %rcx
	movq	%rcx, 56(%rax)
	jmp	.LBB10_10
.LBB10_6:
	movq	56(%rbx), %rax
	movq	%rax, (%rdi)
.LBB10_10:
	movq	$0, 56(%rbx)
	movq	%rbx, %rdi
	callq	tcp_pcb_purge
	movl	72(%rbx), %eax
	cmpl	$1, %eax
	je	.LBB10_14
# %bb.11:
	cmpl	$10, %eax
	je	.LBB10_14
# %bb.12:
	movzwl	82(%rbx), %eax
	testb	$1, %al
	je	.LBB10_15
# %bb.13:
	orl	$2, %eax
	movw	%ax, 82(%rbx)
	movq	%rbx, %rdi
	callq	tcp_output
	movl	72(%rbx), %eax
.LBB10_14:
	cmpl	$1, %eax
	je	.LBB10_21
.LBB10_15:
	cmpq	$0, 184(%rbx)
	jne	.LBB10_16
# %bb.17:
	cmpq	$0, 192(%rbx)
	jne	.LBB10_18
# %bb.19:
	cmpq	$0, 200(%rbx)
	jne	.LBB10_20
.LBB10_21:
	movl	$0, 72(%rbx)
	movw	$0, 78(%rbx)
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
.LBB10_16:
	movl	$.L.str.39, %edi
	jmp	.LBB10_2
.LBB10_18:
	movl	$.L.str.40, %edi
	jmp	.LBB10_2
.LBB10_20:
	movl	$.L.str.41, %edi
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
	movq	%r14, %rbx
	testq	%r14, %r14
	je	.LBB11_5
.LBB11_2:                               # =>This Inner Loop Header: Depth=1
	movq	(%rbx), %r14
	movq	8(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB11_4
# %bb.3:                                #   in Loop: Header=BB11_2 Depth=1
	callq	pbuf_free
	jmp	.LBB11_4
.LBB11_5:
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
	movl	$1, %esi
	jmp	tcp_abandon             # TAILCALL
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
	testq	%rsi, %rsi
	movl	$ip_addr_any, %r15d
	cmovneq	%rsi, %r15
	testq	%rdi, %rdi
	je	.LBB13_83
# %bb.1:
	movq	%rdi, %r14
	cmpl	$0, 72(%rdi)
	jne	.LBB13_84
# %bb.2:
	movl	%edx, %r13d
	movb	49(%r14), %r12b
	cmpb	$6, 20(%r15)
	jne	.LBB13_11
# %bb.3:
	cmpb	$0, 16(%r15)
	jne	.LBB13_11
# %bb.4:
	movl	(%r15), %eax
	movl	%eax, %ecx
	andl	$49407, %ecx            # imm = 0xC0FF
	cmpl	$33022, %ecx            # imm = 0x80FE
	jne	.LBB13_11
# %bb.5:
	movb	$6, -44(%rbp)
	movl	%eax, -64(%rbp)
	movl	4(%r15), %eax
	movl	%eax, -60(%rbp)
	movl	8(%r15), %eax
	movl	%eax, -56(%rbp)
	movl	12(%r15), %eax
	movl	%eax, -52(%rbp)
	movb	$0, -48(%rbp)
	leaq	-64(%rbp), %r15
	movq	%r15, %rdi
	movq	%r15, %rsi
	callq	ip6_route
	testq	%rax, %rax
	je	.LBB13_11
# %bb.6:
	movl	-64(%rbp), %ecx
	movl	%ecx, %edx
	andl	$49407, %edx            # imm = 0xC0FF
	cmpl	$33022, %edx            # imm = 0x80FE
	je	.LBB13_9
# %bb.7:
	andl	$36863, %ecx            # imm = 0x8FFF
	cmpl	$767, %ecx              # imm = 0x2FF
	je	.LBB13_9
# %bb.8:
	movzwl	%cx, %ecx
	cmpl	$511, %ecx              # imm = 0x1FF
	jne	.LBB13_82
.LBB13_9:
	movb	264(%rax), %al
	addb	$1, %al
.LBB13_10:
	movb	%al, -48(%rbp)
.LBB13_11:
	testw	%r13w, %r13w
	je	.LBB13_43
# %bb.12:
	andb	$4, %r12b
	cmpb	$1, %r12b
	movl	$3, %r8d
	adcq	$0, %r8
	xorl	%r9d, %r9d
	jmp	.LBB13_14
	.p2align	4, 0x90
.LBB13_13:                              #   in Loop: Header=BB13_14 Depth=1
	addq	$1, %r9
	cmpq	%r8, %r9
	jae	.LBB13_61
.LBB13_14:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB13_17 Depth 2
	movq	tcp_pcb_lists(,%r9,8), %rax
	movq	(%rax), %rdx
	jmp	.LBB13_17
.LBB13_15:                              #   in Loop: Header=BB13_17 Depth=2
	cmpl	%esi, %edi
	je	.LBB13_80
	.p2align	4, 0x90
.LBB13_16:                              #   in Loop: Header=BB13_17 Depth=2
	movq	56(%rdx), %rdx
.LBB13_17:                              #   Parent Loop BB13_14 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	testq	%rdx, %rdx
	je	.LBB13_13
# %bb.18:                               #   in Loop: Header=BB13_17 Depth=2
	cmpw	%r13w, 78(%rdx)
	jne	.LBB13_16
# %bb.19:                               #   in Loop: Header=BB13_17 Depth=2
	testb	$4, 49(%r14)
	je	.LBB13_21
# %bb.20:                               #   in Loop: Header=BB13_17 Depth=2
	testb	$4, 49(%rdx)
	jne	.LBB13_16
.LBB13_21:                              #   in Loop: Header=BB13_17 Depth=2
	movzbl	20(%r15), %r11d
	cmpb	$6, %r11b
	sete	%bl
	movzbl	20(%rdx), %ecx
	cmpb	$6, %cl
	sete	%al
	xorb	%bl, %al
	jne	.LBB13_16
# %bb.22:                               #   in Loop: Header=BB13_17 Depth=2
	movl	(%rdx), %edi
	cmpb	$6, %cl
	jne	.LBB13_27
# %bb.23:                               #   in Loop: Header=BB13_17 Depth=2
	movb	$1, %r10b
	testl	%edi, %edi
	jne	.LBB13_29
# %bb.24:                               #   in Loop: Header=BB13_17 Depth=2
	cmpl	$0, 4(%rdx)
	jne	.LBB13_29
# %bb.25:                               #   in Loop: Header=BB13_17 Depth=2
	cmpl	$0, 8(%rdx)
	jne	.LBB13_29
# %bb.26:                               #   in Loop: Header=BB13_17 Depth=2
	cmpl	$0, 12(%rdx)
	jne	.LBB13_29
	jmp	.LBB13_80
.LBB13_27:                              #   in Loop: Header=BB13_17 Depth=2
	testl	%edi, %edi
	je	.LBB13_80
# %bb.28:                               #   in Loop: Header=BB13_17 Depth=2
	xorl	%r10d, %r10d
.LBB13_29:                              #   in Loop: Header=BB13_17 Depth=2
	movl	(%r15), %esi
	cmpb	$6, %r11b
	jne	.LBB13_34
# %bb.30:                               #   in Loop: Header=BB13_17 Depth=2
	testl	%esi, %esi
	jne	.LBB13_35
# %bb.31:                               #   in Loop: Header=BB13_17 Depth=2
	cmpl	$0, 4(%r15)
	jne	.LBB13_35
# %bb.32:                               #   in Loop: Header=BB13_17 Depth=2
	cmpl	$0, 8(%r15)
	jne	.LBB13_35
# %bb.33:                               #   in Loop: Header=BB13_17 Depth=2
	cmpl	$0, 12(%r15)
	jne	.LBB13_35
	jmp	.LBB13_80
.LBB13_34:                              #   in Loop: Header=BB13_17 Depth=2
	testl	%esi, %esi
	je	.LBB13_80
.LBB13_35:                              #   in Loop: Header=BB13_17 Depth=2
	cmpb	%r11b, %cl
	jne	.LBB13_16
# %bb.36:                               #   in Loop: Header=BB13_17 Depth=2
	testb	%r10b, %r10b
	je	.LBB13_15
# %bb.37:                               #   in Loop: Header=BB13_17 Depth=2
	cmpl	%esi, %edi
	jne	.LBB13_16
# %bb.38:                               #   in Loop: Header=BB13_17 Depth=2
	movl	4(%rdx), %eax
	cmpl	4(%r15), %eax
	jne	.LBB13_16
# %bb.39:                               #   in Loop: Header=BB13_17 Depth=2
	movl	8(%rdx), %eax
	cmpl	8(%r15), %eax
	jne	.LBB13_16
# %bb.40:                               #   in Loop: Header=BB13_17 Depth=2
	movl	12(%rdx), %eax
	cmpl	12(%r15), %eax
	jne	.LBB13_16
# %bb.41:                               #   in Loop: Header=BB13_17 Depth=2
	movzbl	16(%rdx), %eax
	cmpb	16(%r15), %al
	jne	.LBB13_16
.LBB13_80:
	movb	$-8, %al
	jmp	.LBB13_79
.LBB13_43:
	movzwl	tcp_port(%rip), %r13d
	movq	tcp_listen_pcbs(%rip), %rsi
	movq	tcp_bound_pcbs(%rip), %rcx
	movq	tcp_active_pcbs(%rip), %rdx
	movq	tcp_tw_pcbs(%rip), %r9
	xorl	%edi, %edi
	movl	$49152, %r8d            # imm = 0xC000
	jmp	.LBB13_45
	.p2align	4, 0x90
.LBB13_44:                              #   in Loop: Header=BB13_45 Depth=1
	movzwl	%di, %eax
	addl	$1, %edi
                                        # kill: def $di killed $di killed $edi def $rdi
	cmpl	$16383, %eax            # imm = 0x3FFF
	jae	.LBB13_77
.LBB13_45:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB13_46 Depth 2
                                        #     Child Loop BB13_50 Depth 2
                                        #     Child Loop BB13_54 Depth 2
                                        #     Child Loop BB13_58 Depth 2
	addl	$1, %r13d
	cmpw	$-1, %r13w
	cmovel	%r8d, %r13d
	movq	%rsi, %rax
	testq	%rsi, %rsi
	je	.LBB13_48
	.p2align	4, 0x90
.LBB13_46:                              #   Parent Loop BB13_45 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpw	%r13w, 78(%rax)
	je	.LBB13_44
# %bb.47:                               #   in Loop: Header=BB13_46 Depth=2
	movq	56(%rax), %rax
	testq	%rax, %rax
	jne	.LBB13_46
.LBB13_48:                              #   in Loop: Header=BB13_45 Depth=1
	testq	%rcx, %rcx
	je	.LBB13_52
# %bb.49:                               # %.preheader5
                                        #   in Loop: Header=BB13_45 Depth=1
	movq	%rcx, %rax
	.p2align	4, 0x90
.LBB13_50:                              #   Parent Loop BB13_45 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpw	%r13w, 78(%rax)
	je	.LBB13_44
# %bb.51:                               #   in Loop: Header=BB13_50 Depth=2
	movq	56(%rax), %rax
	testq	%rax, %rax
	jne	.LBB13_50
.LBB13_52:                              #   in Loop: Header=BB13_45 Depth=1
	testq	%rdx, %rdx
	je	.LBB13_56
# %bb.53:                               # %.preheader2
                                        #   in Loop: Header=BB13_45 Depth=1
	movq	%rdx, %rax
	.p2align	4, 0x90
.LBB13_54:                              #   Parent Loop BB13_45 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpw	%r13w, 78(%rax)
	je	.LBB13_44
# %bb.55:                               #   in Loop: Header=BB13_54 Depth=2
	movq	56(%rax), %rax
	testq	%rax, %rax
	jne	.LBB13_54
.LBB13_56:                              #   in Loop: Header=BB13_45 Depth=1
	testq	%r9, %r9
	je	.LBB13_60
# %bb.57:                               # %.preheader
                                        #   in Loop: Header=BB13_45 Depth=1
	movq	%r9, %rax
	.p2align	4, 0x90
.LBB13_58:                              #   Parent Loop BB13_45 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpw	%r13w, 78(%rax)
	je	.LBB13_44
# %bb.59:                               #   in Loop: Header=BB13_58 Depth=2
	movq	56(%rax), %rax
	testq	%rax, %rax
	jne	.LBB13_58
.LBB13_60:
	movw	%r13w, tcp_port(%rip)
	testw	%r13w, %r13w
	je	.LBB13_78
.LBB13_61:
	movb	20(%r15), %al
	movl	(%r15), %ecx
	cmpb	$6, %al
	jne	.LBB13_68
# %bb.62:
	testl	%ecx, %ecx
	jne	.LBB13_70
# %bb.63:
	cmpl	$0, 4(%r15)
	jne	.LBB13_70
# %bb.64:
	cmpl	$0, 8(%r15)
	jne	.LBB13_70
# %bb.65:
	cmpl	$0, 12(%r15)
	jne	.LBB13_70
	jmp	.LBB13_69
.LBB13_68:
	testl	%ecx, %ecx
	jne	.LBB13_70
.LBB13_69:
	cmpb	20(%r14), %al
	je	.LBB13_74
.LBB13_70:
	movb	%al, 20(%r14)
	cmpb	$6, 20(%r15)
	movl	(%r15), %eax
	movl	%eax, (%r14)
	jne	.LBB13_72
# %bb.71:
	movl	4(%r15), %eax
	movl	%eax, 4(%r14)
	movl	8(%r15), %eax
	movl	%eax, 8(%r14)
	movl	12(%r15), %eax
	movl	%eax, 12(%r14)
	movb	16(%r15), %al
	jmp	.LBB13_73
.LBB13_72:
	movl	$0, 12(%r14)
	movq	$0, 4(%r14)
	xorl	%eax, %eax
.LBB13_73:
	movb	%al, 16(%r14)
.LBB13_74:
	movw	%r13w, 78(%r14)
	movq	tcp_bound_pcbs(%rip), %rax
	movq	%rax, 56(%r14)
	movq	%r14, tcp_bound_pcbs(%rip)
	callq	tcp_timer_needed
	xorl	%eax, %eax
	jmp	.LBB13_79
.LBB13_77:
	movw	%r13w, tcp_port(%rip)
.LBB13_78:
	movb	$-2, %al
.LBB13_79:
                                        # kill: def $al killed $al killed $eax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB13_82:
	xorl	%eax, %eax
	jmp	.LBB13_10
.LBB13_83:
	movl	$.L.str.7, %edi
	jmp	.LBB13_85
.LBB13_84:
	movl	$.L.str.8, %edi
.LBB13_85:
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
	.globl	tcp_bind_netif          # -- Begin function tcp_bind_netif
	.p2align	4, 0x90
	.type	tcp_bind_netif,@function
tcp_bind_netif:                         # @tcp_bind_netif
# %bb.0:
	testq	%rsi, %rsi
	je	.LBB14_1
# %bb.2:
	movb	264(%rsi), %al
	addb	$1, %al
	movb	%al, 48(%rdi)
	retq
.LBB14_1:
	xorl	%eax, %eax
	movb	%al, 48(%rdi)
	retq
.Lfunc_end14:
	.size	tcp_bind_netif, .Lfunc_end14-tcp_bind_netif
                                        # -- End function
	.globl	tcp_listen_with_backlog # -- Begin function tcp_listen_with_backlog
	.p2align	4, 0x90
	.type	tcp_listen_with_backlog,@function
tcp_listen_with_backlog:                # @tcp_listen_with_backlog
# %bb.0:
	xorl	%esi, %esi
	xorl	%edx, %edx
	jmp	tcp_listen_with_backlog_and_err # TAILCALL
.Lfunc_end15:
	.size	tcp_listen_with_backlog, .Lfunc_end15-tcp_listen_with_backlog
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
	testq	%rdi, %rdi
	je	.LBB16_34
# %bb.1:
	movq	%rdi, %rbx
	cmpl	$0, 72(%rdi)
	jne	.LBB16_35
# %bb.2:
	movq	%rdx, %r14
	testb	$4, 49(%rbx)
	je	.LBB16_16
# %bb.3:
	movq	tcp_listen_pcbs(%rip), %rax
	testq	%rax, %rax
	je	.LBB16_16
# %bb.4:
	movzwl	78(%rbx), %ecx
	xorl	%r15d, %r15d
	jmp	.LBB16_7
.LBB16_5:                               #   in Loop: Header=BB16_7 Depth=1
	cmpl	%edi, %esi
	je	.LBB16_15
	.p2align	4, 0x90
.LBB16_6:                               #   in Loop: Header=BB16_7 Depth=1
	movq	56(%rax), %rax
	testq	%rax, %rax
	je	.LBB16_16
.LBB16_7:                               # =>This Inner Loop Header: Depth=1
	cmpw	%cx, 78(%rax)
	jne	.LBB16_6
# %bb.8:                                #   in Loop: Header=BB16_7 Depth=1
	movzbl	20(%rax), %edx
	cmpb	20(%rbx), %dl
	jne	.LBB16_6
# %bb.9:                                #   in Loop: Header=BB16_7 Depth=1
	movl	(%rax), %esi
	movl	(%rbx), %edi
	cmpb	$6, %dl
	jne	.LBB16_5
# %bb.10:                               #   in Loop: Header=BB16_7 Depth=1
	cmpl	%edi, %esi
	jne	.LBB16_6
# %bb.11:                               #   in Loop: Header=BB16_7 Depth=1
	movl	4(%rax), %edx
	cmpl	4(%rbx), %edx
	jne	.LBB16_6
# %bb.12:                               #   in Loop: Header=BB16_7 Depth=1
	movl	8(%rax), %edx
	cmpl	8(%rbx), %edx
	jne	.LBB16_6
# %bb.13:                               #   in Loop: Header=BB16_7 Depth=1
	movl	12(%rax), %edx
	cmpl	12(%rbx), %edx
	jne	.LBB16_6
# %bb.14:                               #   in Loop: Header=BB16_7 Depth=1
	movzbl	16(%rax), %edx
	cmpb	16(%rbx), %dl
	jne	.LBB16_6
.LBB16_15:
	movb	$-8, %al
	testq	%r14, %r14
	jne	.LBB16_31
	jmp	.LBB16_32
.LBB16_16:
	movl	$2, %edi
	callq	memp_malloc
	movq	%rax, %r15
	testq	%rax, %rax
	je	.LBB16_19
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
	movl	(%rbx), %ecx
	movl	%ecx, (%r15)
	cmpb	$6, %al
	jne	.LBB16_20
# %bb.18:
	movl	4(%rbx), %eax
	movl	%eax, 4(%r15)
	movl	8(%rbx), %eax
	movl	%eax, 8(%r15)
	movl	12(%rbx), %eax
	movl	%eax, 12(%r15)
	movb	16(%rbx), %al
	jmp	.LBB16_21
.LBB16_19:
	movb	$-1, %al
	testq	%r14, %r14
	jne	.LBB16_31
	jmp	.LBB16_32
.LBB16_20:
	movl	$0, 12(%r15)
	movq	$0, 4(%r15)
	xorl	%eax, %eax
.LBB16_21:
	movb	%al, 16(%r15)
	cmpw	$0, 78(%rbx)
	je	.LBB16_29
# %bb.22:
	movq	tcp_bound_pcbs(%rip), %rax
	cmpq	%rbx, %rax
	je	.LBB16_26
	.p2align	4, 0x90
.LBB16_23:                              # =>This Inner Loop Header: Depth=1
	testq	%rax, %rax
	je	.LBB16_27
# %bb.24:                               #   in Loop: Header=BB16_23 Depth=1
	movq	%rax, %rcx
	movq	56(%rax), %rax
	cmpq	%rbx, %rax
	jne	.LBB16_23
# %bb.25:
	leaq	56(%rbx), %rax
	movq	56(%rbx), %rdx
	movq	%rdx, 56(%rcx)
	jmp	.LBB16_28
.LBB16_26:
	leaq	56(%rbx), %rax
	movq	56(%rbx), %rcx
	movq	%rcx, tcp_bound_pcbs(%rip)
	jmp	.LBB16_28
.LBB16_27:
	leaq	56(%rbx), %rax
.LBB16_28:
	movq	$0, (%rax)
.LBB16_29:
	cmpl	$1, 72(%rbx)
	je	.LBB16_36
# %bb.30:
	movl	$1, %edi
	movq	%rbx, %rsi
	callq	memp_free
	movq	$tcp_accept_null, 80(%r15)
	movq	tcp_listen_pcbs(%rip), %rax
	movq	%rax, 56(%r15)
	movq	%r15, tcp_listen_pcbs(%rip)
	callq	tcp_timer_needed
	xorl	%eax, %eax
	testq	%r14, %r14
	je	.LBB16_32
.LBB16_31:
	movb	%al, (%r14)
.LBB16_32:
	movq	%r15, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB16_34:
	movl	$.L.str.9, %edi
	jmp	.LBB16_37
.LBB16_35:
	movl	$.L.str.10, %edi
	jmp	.LBB16_37
.LBB16_36:
	movl	$.L.str, %edi
.LBB16_37:
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$.L.str.1, %edi
	movl	$.L.str.2, %esi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$3, %edi
	callq	ukplat_terminate
.Lfunc_end16:
	.size	tcp_listen_with_backlog_and_err, .Lfunc_end16-tcp_listen_with_backlog_and_err
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function tcp_accept_null
	.type	tcp_accept_null,@function
tcp_accept_null:                        # @tcp_accept_null
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	testq	%rsi, %rsi
	je	.LBB17_2
# %bb.1:
	movq	%rsi, %rdi
	movl	$1, %esi
	callq	tcp_abandon
	movb	$-13, %al
	popq	%rbp
	retq
.LBB17_2:
	movl	$.L.str.51, %edi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$.L.str.1, %edi
	movl	$.L.str.2, %esi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$3, %edi
	callq	ukplat_terminate
.Lfunc_end17:
	.size	tcp_accept_null, .Lfunc_end17-tcp_accept_null
                                        # -- End function
	.globl	tcp_update_rcv_ann_wnd  # -- Begin function tcp_update_rcv_ann_wnd
	.p2align	4, 0x90
	.type	tcp_update_rcv_ann_wnd,@function
tcp_update_rcv_ann_wnd:                 # @tcp_update_rcv_ann_wnd
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	testq	%rdi, %rdi
	je	.LBB18_4
# %bb.1:
	movl	92(%rdi), %r8d
	movl	96(%rdi), %esi
	leal	(%rsi,%r8), %eax
	movl	104(%rdi), %ecx
	movzwl	110(%rdi), %edx
	subl	%ecx, %eax
	cmpl	%edx, %eax
	jns	.LBB18_3
# %bb.2:
	movl	%r8d, %edx
	subl	%ecx, %edx
	subl	%r8d, %ecx
	xorl	%eax, %eax
	testl	%edx, %edx
	cmovgl	%eax, %ecx
	movl	%ecx, %esi
.LBB18_3:
	movl	%esi, 100(%rdi)
	popq	%rbp
	retq
.LBB18_4:
	movl	$.L.str.11, %edi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$.L.str.1, %edi
	movl	$.L.str.2, %esi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$3, %edi
	callq	ukplat_terminate
.Lfunc_end18:
	.size	tcp_update_rcv_ann_wnd, .Lfunc_end18-tcp_update_rcv_ann_wnd
                                        # -- End function
	.globl	tcp_recved              # -- Begin function tcp_recved
	.p2align	4, 0x90
	.type	tcp_recved,@function
tcp_recved:                             # @tcp_recved
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	testq	%rdi, %rdi
	je	.LBB19_1
# %bb.3:
	cmpl	$1, 72(%rdi)
	je	.LBB19_4
# %bb.5:
	movzwl	%si, %eax
	movl	96(%rdi), %edx
	leal	(%rax,%rdx), %ecx
	movzwl	82(%rdi), %r8d
	testl	$256, %r8d              # imm = 0x100
	movl	$65535, %r9d            # imm = 0xFFFF
	movl	$262142, %esi           # imm = 0x3FFFE
	cmovel	%r9d, %esi
	cmpl	%esi, %ecx
	cmoval	%esi, %ecx
	addl	%eax, %edx
	cmovbl	%esi, %ecx
	movl	%ecx, 96(%rdi)
	movl	92(%rdi), %r9d
	movl	104(%rdi), %r10d
	movzwl	110(%rdi), %esi
	movl	%r9d, %eax
	subl	%r10d, %eax
	leal	(%rax,%rcx), %edx
	cmpl	%esi, %edx
	js	.LBB19_6
# %bb.8:
	movl	%ecx, 100(%rdi)
	cmpl	$5840, %edx             # imm = 0x16D0
	jb	.LBB19_11
# %bb.9:
	orl	$2, %r8d
	movw	%r8w, 82(%rdi)
	popq	%rbp
	jmp	tcp_output              # TAILCALL
.LBB19_6:
	testl	%eax, %eax
	jle	.LBB19_10
# %bb.7:
	movl	$0, 100(%rdi)
	popq	%rbp
	retq
.LBB19_10:
	subl	%r9d, %r10d
	movl	%r10d, 100(%rdi)
.LBB19_11:
	popq	%rbp
	retq
.LBB19_1:
	movl	$.L.str.12, %edi
	jmp	.LBB19_2
.LBB19_4:
	movl	$.L.str.13, %edi
.LBB19_2:
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$.L.str.1, %edi
	movl	$.L.str.2, %esi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$3, %edi
	callq	ukplat_terminate
.Lfunc_end19:
	.size	tcp_recved, .Lfunc_end19-tcp_recved
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4               # -- Begin function tcp_connect
.LCPI20_0:
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
	testq	%rdi, %rdi
	je	.LBB20_113
# %bb.1:
	movq	%rsi, %r14
	testq	%rsi, %rsi
	je	.LBB20_114
# %bb.2:
	movq	%rdi, %rbx
	cmpl	$0, 72(%rdi)
	jne	.LBB20_115
# %bb.3:
	movq	%rcx, %r12
	movl	%edx, %r13d
	movb	20(%r14), %al
	movb	%al, 44(%rbx)
	cmpb	$6, 20(%r14)
	movl	(%r14), %ecx
	movl	%ecx, 24(%rbx)
	jne	.LBB20_5
# %bb.4:
	movl	4(%r14), %ecx
	movl	%ecx, 28(%rbx)
	movl	8(%r14), %ecx
	movl	%ecx, 32(%rbx)
	movl	12(%r14), %ecx
	movl	%ecx, 36(%rbx)
	movb	16(%r14), %cl
	jmp	.LBB20_6
.LBB20_5:
	movl	$0, 36(%rbx)
	movq	$0, 28(%rbx)
	xorl	%ecx, %ecx
.LBB20_6:
	leaq	24(%rbx), %rsi
	movb	%cl, 40(%rbx)
	movw	%r13w, 80(%rbx)
	movb	48(%rbx), %cl
	testb	%cl, %cl
	movq	%rsi, -48(%rbp)         # 8-byte Spill
	je	.LBB20_8
# %bb.7:
	movzbl	%cl, %edi
	callq	netif_get_by_index
	jmp	.LBB20_11
.LBB20_8:
	cmpb	$6, %al
	jne	.LBB20_10
# %bb.9:
	movq	%rbx, %rdi
	callq	ip6_route
	jmp	.LBB20_11
.LBB20_10:
	movq	%rsi, %rdi
	callq	ip4_route
.LBB20_11:
	movq	%rax, %r10
	movb	$-4, %r15b
	testq	%rax, %rax
	je	.LBB20_66
# %bb.12:
	movb	20(%rbx), %cl
	movl	(%rbx), %edx
	cmpb	$6, %cl
	jne	.LBB20_17
# %bb.13:
	movb	$6, %cl
	testl	%edx, %edx
	jne	.LBB20_24
# %bb.14:
	xorl	%edx, %edx
	cmpl	$0, 4(%rbx)
	jne	.LBB20_24
# %bb.15:
	cmpl	$0, 8(%rbx)
	jne	.LBB20_24
# %bb.16:
	cmpl	$0, 12(%rbx)
	jne	.LBB20_24
	jmp	.LBB20_18
.LBB20_17:
	testl	%edx, %edx
	jne	.LBB20_24
.LBB20_18:
	cmpb	$6, 20(%r14)
	jne	.LBB20_20
# %bb.19:
	movq	%r10, %rdi
	movq	%r14, %rsi
	movq	%r10, -56(%rbp)         # 8-byte Spill
	callq	ip6_select_source_address
	movq	-56(%rbp), %r10         # 8-byte Reload
	testq	%rax, %rax
	jne	.LBB20_21
	jmp	.LBB20_66
.LBB20_20:
	leaq	8(%r10), %rax
.LBB20_21:
	movb	20(%rax), %cl
	movb	%cl, 20(%rbx)
	cmpb	$6, 20(%rax)
	movl	(%rax), %edx
	movl	%edx, (%rbx)
	jne	.LBB20_23
# %bb.22:
	movl	4(%rax), %esi
	movl	%esi, 4(%rbx)
	movl	8(%rax), %esi
	movl	%esi, 8(%rbx)
	movl	12(%rax), %esi
	movl	%esi, 12(%rbx)
	movb	16(%rax), %al
	movb	%al, 16(%rbx)
	jmp	.LBB20_24
.LBB20_23:
	movl	$0, 12(%rbx)
	movq	$0, 4(%rbx)
	movb	$0, 16(%rbx)
.LBB20_24:
	movq	%r12, %r15
	movb	44(%rbx), %r8b
	cmpb	$6, %r8b
	jne	.LBB20_28
# %bb.25:
	cmpb	$0, 40(%rbx)
	jne	.LBB20_28
# %bb.26:
	movl	$49407, %eax            # imm = 0xC0FF
	movq	-48(%rbp), %rsi         # 8-byte Reload
	andl	(%rsi), %eax
	cmpl	$33022, %eax            # imm = 0x80FE
	jne	.LBB20_28
# %bb.27:
	movb	264(%r10), %al
	addb	$1, %al
	movb	%al, 40(%rbx)
.LBB20_28:
	movzwl	78(%rbx), %r12d
	testw	%r12w, %r12w
	je	.LBB20_31
# %bb.29:
	testb	$4, 49(%rbx)
	je	.LBB20_49
# %bb.30:
	movq	tcp_active_pcbs(%rip), %rsi
	jmp	.LBB20_70
.LBB20_31:
	movq	%r10, %r14
	movzwl	tcp_port(%rip), %ecx
	movq	tcp_listen_pcbs(%rip), %rdi
	movq	tcp_bound_pcbs(%rip), %rsi
	movq	tcp_active_pcbs(%rip), %r11
	movq	tcp_tw_pcbs(%rip), %r10
	xorl	%eax, %eax
	movl	$49152, %r9d            # imm = 0xC000
	jmp	.LBB20_33
	.p2align	4, 0x90
.LBB20_32:                              #   in Loop: Header=BB20_33 Depth=1
	movzwl	%ax, %edx
	addl	$1, %eax
                                        # kill: def $ax killed $ax killed $eax def $rax
	cmpl	$16383, %edx            # imm = 0x3FFF
	jae	.LBB20_67
.LBB20_33:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB20_34 Depth 2
                                        #     Child Loop BB20_38 Depth 2
                                        #     Child Loop BB20_42 Depth 2
                                        #     Child Loop BB20_46 Depth 2
	addl	$1, %ecx
	cmpw	$-1, %cx
	cmovel	%r9d, %ecx
	movq	%rdi, %rdx
	testq	%rdi, %rdi
	je	.LBB20_36
	.p2align	4, 0x90
.LBB20_34:                              #   Parent Loop BB20_33 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpw	%cx, 78(%rdx)
	je	.LBB20_32
# %bb.35:                               #   in Loop: Header=BB20_34 Depth=2
	movq	56(%rdx), %rdx
	testq	%rdx, %rdx
	jne	.LBB20_34
.LBB20_36:                              #   in Loop: Header=BB20_33 Depth=1
	testq	%rsi, %rsi
	je	.LBB20_40
# %bb.37:                               # %.preheader6
                                        #   in Loop: Header=BB20_33 Depth=1
	movq	%rsi, %rdx
	.p2align	4, 0x90
.LBB20_38:                              #   Parent Loop BB20_33 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpw	%cx, 78(%rdx)
	je	.LBB20_32
# %bb.39:                               #   in Loop: Header=BB20_38 Depth=2
	movq	56(%rdx), %rdx
	testq	%rdx, %rdx
	jne	.LBB20_38
.LBB20_40:                              #   in Loop: Header=BB20_33 Depth=1
	testq	%r11, %r11
	je	.LBB20_44
# %bb.41:                               # %.preheader3
                                        #   in Loop: Header=BB20_33 Depth=1
	movq	%r11, %rdx
	.p2align	4, 0x90
.LBB20_42:                              #   Parent Loop BB20_33 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpw	%cx, 78(%rdx)
	je	.LBB20_32
# %bb.43:                               #   in Loop: Header=BB20_42 Depth=2
	movq	56(%rdx), %rdx
	testq	%rdx, %rdx
	jne	.LBB20_42
.LBB20_44:                              #   in Loop: Header=BB20_33 Depth=1
	testq	%r10, %r10
	je	.LBB20_48
# %bb.45:                               # %.preheader1
                                        #   in Loop: Header=BB20_33 Depth=1
	movq	%r10, %rdx
	.p2align	4, 0x90
.LBB20_46:                              #   Parent Loop BB20_33 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpw	%cx, 78(%rdx)
	je	.LBB20_32
# %bb.47:                               #   in Loop: Header=BB20_46 Depth=2
	movq	56(%rdx), %rdx
	testq	%rdx, %rdx
	jne	.LBB20_46
.LBB20_48:
	movw	%cx, tcp_port(%rip)
	movw	%cx, 78(%rbx)
	testw	%cx, %cx
	movq	%r14, %r10
	je	.LBB20_60
.LBB20_49:
	movl	tcp_ticks(%rip), %eax
	movl	tcp_next_iss.iss(%rip), %ecx
	leal	(%rcx,%rax), %edx
	movl	%edx, tcp_next_iss.iss(%rip)
	movl	%edx, 144(%rbx)
	leal	-1(%rcx,%rax), %eax
	movl	%eax, 128(%rbx)
	movl	%eax, 152(%rbx)
	movl	%eax, 156(%rbx)
	movaps	.LCPI20_0(%rip), %xmm0  # xmm0 = [0,65535,65535,0]
	movups	%xmm0, 92(%rbx)
	movl	$262142, 160(%rbx)      # imm = 0x3FFFE
	movw	$536, 110(%rbx)         # imm = 0x218
	cmpb	$6, %r8b
	jne	.LBB20_52
# %bb.50:
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%r10, %rsi
	callq	nd6_get_destination_mtu
	testw	%ax, %ax
	je	.LBB20_53
.LBB20_51:
	movzwl	%ax, %eax
	cmpb	$6, 44(%rbx)
	movl	$60, %ecx
	movl	$40, %edx
	cmovel	%ecx, %edx
	xorl	%ecx, %ecx
	subl	%edx, %eax
	movzwl	%ax, %edx
	cmovbel	%ecx, %edx
	cmpl	$536, %edx              # imm = 0x218
	movl	$536, %eax              # imm = 0x218
	cmovbl	%edx, %eax
	jmp	.LBB20_54
.LBB20_52:
	movzwl	250(%r10), %eax
	testw	%ax, %ax
	jne	.LBB20_51
.LBB20_53:
	movw	$536, %ax               # imm = 0x218
.LBB20_54:
	movw	%ax, 110(%rbx)
	movl	$1, 132(%rbx)
	movq	%r15, 240(%rbx)
	movq	%rbx, %rdi
	movl	$2, %esi
	callq	tcp_enqueue_flags
	movl	%eax, %r15d
	testb	%al, %al
	jne	.LBB20_66
# %bb.55:
	movl	$2, 72(%rbx)
	testw	%r12w, %r12w
	je	.LBB20_61
# %bb.56:
	movq	tcp_bound_pcbs(%rip), %rax
	cmpq	%rbx, %rax
	je	.LBB20_62
	.p2align	4, 0x90
.LBB20_57:                              # =>This Inner Loop Header: Depth=1
	testq	%rax, %rax
	je	.LBB20_63
# %bb.58:                               #   in Loop: Header=BB20_57 Depth=1
	movq	%rax, %rcx
	movq	56(%rax), %rax
	cmpq	%rbx, %rax
	jne	.LBB20_57
# %bb.59:
	leaq	56(%rbx), %rax
	movq	56(%rbx), %rdx
	movq	%rdx, 56(%rcx)
	jmp	.LBB20_64
.LBB20_60:
	movb	$-2, %r15b
	jmp	.LBB20_66
.LBB20_61:
	leaq	56(%rbx), %rax
	jmp	.LBB20_65
.LBB20_62:
	leaq	56(%rbx), %rax
	movq	56(%rbx), %rcx
	movq	%rcx, tcp_bound_pcbs(%rip)
	jmp	.LBB20_64
.LBB20_63:
	leaq	56(%rbx), %rax
.LBB20_64:
	movq	$0, (%rax)
.LBB20_65:
	movq	tcp_active_pcbs(%rip), %rcx
	movq	%rcx, (%rax)
	movq	%rbx, tcp_active_pcbs(%rip)
	callq	tcp_timer_needed
	movb	$1, tcp_active_pcbs_changed(%rip)
	movq	%rbx, %rdi
	callq	tcp_output
	xorl	%r15d, %r15d
.LBB20_66:
	movl	%r15d, %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB20_67:
	movw	%cx, tcp_port(%rip)
	movw	$0, 78(%rbx)
	movb	$-2, %r15b
	jmp	.LBB20_66
.LBB20_68:                              #   in Loop: Header=BB20_70 Depth=1
	cmpl	%edi, %r9d
	je	.LBB20_88
	.p2align	4, 0x90
.LBB20_69:                              #   in Loop: Header=BB20_70 Depth=1
	movq	56(%rsi), %rsi
.LBB20_70:                              # =>This Inner Loop Header: Depth=1
	testq	%rsi, %rsi
	je	.LBB20_89
# %bb.71:                               #   in Loop: Header=BB20_70 Depth=1
	cmpw	%r12w, 78(%rsi)
	jne	.LBB20_69
# %bb.72:                               #   in Loop: Header=BB20_70 Depth=1
	cmpw	%r13w, 80(%rsi)
	jne	.LBB20_69
# %bb.73:                               #   in Loop: Header=BB20_70 Depth=1
	cmpb	%cl, 20(%rsi)
	jne	.LBB20_69
# %bb.74:                               #   in Loop: Header=BB20_70 Depth=1
	movl	(%rsi), %eax
	cmpb	$6, %cl
	jne	.LBB20_80
# %bb.75:                               #   in Loop: Header=BB20_70 Depth=1
	cmpl	%edx, %eax
	jne	.LBB20_69
# %bb.76:                               #   in Loop: Header=BB20_70 Depth=1
	movl	4(%rsi), %eax
	cmpl	4(%rbx), %eax
	jne	.LBB20_69
# %bb.77:                               #   in Loop: Header=BB20_70 Depth=1
	movl	8(%rsi), %eax
	cmpl	8(%rbx), %eax
	jne	.LBB20_69
# %bb.78:                               #   in Loop: Header=BB20_70 Depth=1
	movl	12(%rsi), %eax
	cmpl	12(%rbx), %eax
	jne	.LBB20_69
# %bb.79:                               #   in Loop: Header=BB20_70 Depth=1
	movzbl	16(%rsi), %eax
	cmpb	16(%rbx), %al
	jne	.LBB20_69
	jmp	.LBB20_81
.LBB20_80:                              #   in Loop: Header=BB20_70 Depth=1
	cmpl	%edx, %eax
	jne	.LBB20_69
.LBB20_81:                              #   in Loop: Header=BB20_70 Depth=1
	movzbl	44(%rsi), %eax
	cmpb	20(%r14), %al
	jne	.LBB20_69
# %bb.82:                               #   in Loop: Header=BB20_70 Depth=1
	movl	24(%rsi), %r9d
	movl	(%r14), %edi
	cmpb	$6, %al
	jne	.LBB20_68
# %bb.83:                               #   in Loop: Header=BB20_70 Depth=1
	cmpl	%edi, %r9d
	jne	.LBB20_69
# %bb.84:                               #   in Loop: Header=BB20_70 Depth=1
	movl	28(%rsi), %eax
	cmpl	4(%r14), %eax
	jne	.LBB20_69
# %bb.85:                               #   in Loop: Header=BB20_70 Depth=1
	movl	32(%rsi), %eax
	cmpl	8(%r14), %eax
	jne	.LBB20_69
# %bb.86:                               #   in Loop: Header=BB20_70 Depth=1
	movl	36(%rsi), %eax
	cmpl	12(%r14), %eax
	jne	.LBB20_69
# %bb.87:                               #   in Loop: Header=BB20_70 Depth=1
	movzbl	40(%rsi), %eax
	cmpb	16(%r14), %al
	jne	.LBB20_69
	jmp	.LBB20_88
.LBB20_89:
	movq	tcp_tw_pcbs(%rip), %rsi
	jmp	.LBB20_92
.LBB20_90:                              #   in Loop: Header=BB20_92 Depth=1
	cmpl	%edi, %r9d
	je	.LBB20_88
	.p2align	4, 0x90
.LBB20_91:                              #   in Loop: Header=BB20_92 Depth=1
	movq	56(%rsi), %rsi
.LBB20_92:                              # =>This Inner Loop Header: Depth=1
	testq	%rsi, %rsi
	je	.LBB20_49
# %bb.93:                               #   in Loop: Header=BB20_92 Depth=1
	cmpw	%r12w, 78(%rsi)
	jne	.LBB20_91
# %bb.94:                               #   in Loop: Header=BB20_92 Depth=1
	cmpw	%r13w, 80(%rsi)
	jne	.LBB20_91
# %bb.95:                               #   in Loop: Header=BB20_92 Depth=1
	cmpb	%cl, 20(%rsi)
	jne	.LBB20_91
# %bb.96:                               #   in Loop: Header=BB20_92 Depth=1
	movl	(%rsi), %eax
	cmpb	$6, %cl
	jne	.LBB20_102
# %bb.97:                               #   in Loop: Header=BB20_92 Depth=1
	cmpl	%edx, %eax
	jne	.LBB20_91
# %bb.98:                               #   in Loop: Header=BB20_92 Depth=1
	movl	4(%rsi), %eax
	cmpl	4(%rbx), %eax
	jne	.LBB20_91
# %bb.99:                               #   in Loop: Header=BB20_92 Depth=1
	movl	8(%rsi), %eax
	cmpl	8(%rbx), %eax
	jne	.LBB20_91
# %bb.100:                              #   in Loop: Header=BB20_92 Depth=1
	movl	12(%rsi), %eax
	cmpl	12(%rbx), %eax
	jne	.LBB20_91
# %bb.101:                              #   in Loop: Header=BB20_92 Depth=1
	movzbl	16(%rsi), %eax
	cmpb	16(%rbx), %al
	jne	.LBB20_91
	jmp	.LBB20_103
.LBB20_102:                             #   in Loop: Header=BB20_92 Depth=1
	cmpl	%edx, %eax
	jne	.LBB20_91
.LBB20_103:                             #   in Loop: Header=BB20_92 Depth=1
	movzbl	44(%rsi), %eax
	cmpb	20(%r14), %al
	jne	.LBB20_91
# %bb.104:                              #   in Loop: Header=BB20_92 Depth=1
	movl	24(%rsi), %r9d
	movl	(%r14), %edi
	cmpb	$6, %al
	jne	.LBB20_90
# %bb.105:                              #   in Loop: Header=BB20_92 Depth=1
	cmpl	%edi, %r9d
	jne	.LBB20_91
# %bb.106:                              #   in Loop: Header=BB20_92 Depth=1
	movl	28(%rsi), %eax
	cmpl	4(%r14), %eax
	jne	.LBB20_91
# %bb.107:                              #   in Loop: Header=BB20_92 Depth=1
	movl	32(%rsi), %eax
	cmpl	8(%r14), %eax
	jne	.LBB20_91
# %bb.108:                              #   in Loop: Header=BB20_92 Depth=1
	movl	36(%rsi), %eax
	cmpl	12(%r14), %eax
	jne	.LBB20_91
# %bb.109:                              #   in Loop: Header=BB20_92 Depth=1
	movzbl	40(%rsi), %eax
	cmpb	16(%r14), %al
	jne	.LBB20_91
.LBB20_88:
	movb	$-8, %r15b
	jmp	.LBB20_66
.LBB20_113:
	movl	$.L.str.14, %edi
	jmp	.LBB20_116
.LBB20_114:
	movl	$.L.str.15, %edi
	jmp	.LBB20_116
.LBB20_115:
	movl	$.L.str.16, %edi
.LBB20_116:
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$.L.str.1, %edi
	movl	$.L.str.2, %esi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$3, %edi
	callq	ukplat_terminate
.Lfunc_end20:
	.size	tcp_connect, .Lfunc_end20-tcp_connect
                                        # -- End function
	.globl	tcp_next_iss            # -- Begin function tcp_next_iss
	.p2align	4, 0x90
	.type	tcp_next_iss,@function
tcp_next_iss:                           # @tcp_next_iss
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	testq	%rdi, %rdi
	je	.LBB21_2
# %bb.1:
	movl	tcp_next_iss.iss(%rip), %eax
	addl	tcp_ticks(%rip), %eax
	movl	%eax, tcp_next_iss.iss(%rip)
	popq	%rbp
	retq
.LBB21_2:
	movl	$.L.str.42, %edi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$.L.str.1, %edi
	movl	$.L.str.2, %esi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$3, %edi
	callq	ukplat_terminate
.Lfunc_end21:
	.size	tcp_next_iss, .Lfunc_end21-tcp_next_iss
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
	testq	%rdx, %rdx
	je	.LBB22_8
# %bb.1:
	movq	%rdx, %rbx
	movl	%edi, %r14d
	cmpb	$6, 20(%rdx)
	jne	.LBB22_3
# %bb.2:
	movq	%rbx, %rdi
	callq	nd6_get_destination_mtu
	testw	%ax, %ax
	jne	.LBB22_6
	jmp	.LBB22_7
.LBB22_3:
	testq	%rsi, %rsi
	je	.LBB22_7
# %bb.4:
	movzwl	250(%rsi), %eax
	testw	%ax, %ax
	je	.LBB22_7
.LBB22_6:
	cmpb	$6, 20(%rbx)
	movl	$60, %ecx
	movl	$40, %edx
	cmovel	%ecx, %edx
	movzwl	%ax, %eax
	xorl	%ecx, %ecx
	subl	%edx, %eax
	movzwl	%ax, %eax
	cmovbel	%ecx, %eax
	movzwl	%r14w, %r14d
	cmpl	%r14d, %eax
	cmovbel	%eax, %r14d
.LBB22_7:
	movl	%r14d, %eax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.LBB22_8:
	movl	$.L.str.43, %edi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$.L.str.1, %edi
	movl	$.L.str.2, %esi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$3, %edi
	callq	ukplat_terminate
.Lfunc_end22:
	.size	tcp_eff_send_mss_netif, .Lfunc_end22-tcp_eff_send_mss_netif
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
	testq	%rbx, %rbx
	je	.LBB23_6
# %bb.1:                                # %.preheader
	movq	%rdi, %r14
	jmp	.LBB23_2
	.p2align	4, 0x90
.LBB23_4:                               #   in Loop: Header=BB23_2 Depth=1
	movl	$3, %edi
	movq	%rbx, %rsi
	callq	memp_free
	movq	%r15, %rbx
	testq	%r15, %r15
	je	.LBB23_5
.LBB23_2:                               # =>This Inner Loop Header: Depth=1
	movq	(%rbx), %r15
	movq	8(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB23_4
# %bb.3:                                #   in Loop: Header=BB23_2 Depth=1
	callq	pbuf_free
	jmp	.LBB23_4
.LBB23_5:
	movq	$0, 200(%r14)
.LBB23_6:
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end23:
	.size	tcp_free_ooseq, .Lfunc_end23-tcp_free_ooseq
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
	testq	%rdi, %rdi
	je	.LBB24_20
# %bb.1:
	movq	%rdi, %r14
	movl	72(%rdi), %eax
	cmpl	$10, %eax
	ja	.LBB24_3
# %bb.2:
	movl	$1027, %ecx             # imm = 0x403
	btl	%eax, %ecx
	jb	.LBB24_19
.LBB24_3:
	movq	208(%r14), %rdi
	testq	%rdi, %rdi
	je	.LBB24_5
# %bb.4:
	callq	pbuf_free
	movq	$0, 208(%r14)
.LBB24_5:
	movq	200(%r14), %rbx
	testq	%rbx, %rbx
	jne	.LBB24_6
	jmp	.LBB24_10
	.p2align	4, 0x90
.LBB24_8:                               #   in Loop: Header=BB24_6 Depth=1
	movl	$3, %edi
	movq	%rbx, %rsi
	callq	memp_free
	movq	%r15, %rbx
	testq	%r15, %r15
	je	.LBB24_9
.LBB24_6:                               # =>This Inner Loop Header: Depth=1
	movq	(%rbx), %r15
	movq	8(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB24_8
# %bb.7:                                #   in Loop: Header=BB24_6 Depth=1
	callq	pbuf_free
	jmp	.LBB24_8
.LBB24_9:
	movq	$0, 200(%r14)
.LBB24_10:
	movw	$-1, 108(%r14)
	movq	184(%r14), %rbx
	testq	%rbx, %rbx
	jne	.LBB24_11
.LBB24_14:
	movq	192(%r14), %rbx
	testq	%rbx, %rbx
	jne	.LBB24_15
.LBB24_18:
	xorps	%xmm0, %xmm0
	movups	%xmm0, 184(%r14)
	movw	$0, 174(%r14)
.LBB24_19:
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
	.p2align	4, 0x90
.LBB24_13:                              #   in Loop: Header=BB24_11 Depth=1
	movl	$3, %edi
	movq	%rbx, %rsi
	callq	memp_free
	movq	%r15, %rbx
	testq	%r15, %r15
	je	.LBB24_14
.LBB24_11:                              # =>This Inner Loop Header: Depth=1
	movq	(%rbx), %r15
	movq	8(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB24_13
# %bb.12:                               #   in Loop: Header=BB24_11 Depth=1
	callq	pbuf_free
	jmp	.LBB24_13
	.p2align	4, 0x90
.LBB24_17:                              #   in Loop: Header=BB24_15 Depth=1
	movl	$3, %edi
	movq	%rbx, %rsi
	callq	memp_free
	movq	%r15, %rbx
	testq	%r15, %r15
	je	.LBB24_18
.LBB24_15:                              # =>This Inner Loop Header: Depth=1
	movq	(%rbx), %r15
	movq	8(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB24_17
# %bb.16:                               #   in Loop: Header=BB24_15 Depth=1
	callq	pbuf_free
	jmp	.LBB24_17
.LBB24_20:
	movl	$.L.str.36, %edi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$.L.str.1, %edi
	movl	$.L.str.2, %esi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$3, %edi
	callq	ukplat_terminate
.Lfunc_end24:
	.size	tcp_pcb_purge, .Lfunc_end24-tcp_pcb_purge
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function tcp_close_shutdown_fin
	.type	tcp_close_shutdown_fin,@function
tcp_close_shutdown_fin:                 # @tcp_close_shutdown_fin
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	testq	%rdi, %rdi
	je	.LBB25_15
# %bb.1:
	movq	%rdi, %rbx
	movl	72(%rdi), %eax
	cmpl	$7, %eax
	je	.LBB25_6
# %bb.2:
	cmpl	$4, %eax
	je	.LBB25_4
# %bb.3:
	cmpl	$3, %eax
	jne	.LBB25_13
.LBB25_4:
	movq	%rbx, %rdi
	callq	tcp_send_fin
                                        # kill: def $al killed $al def $eax
	testb	%al, %al
	jne	.LBB25_7
# %bb.5:
	movl	$5, %eax
	jmp	.LBB25_11
.LBB25_6:
	movq	%rbx, %rdi
	callq	tcp_send_fin
                                        # kill: def $al killed $al def $eax
	testb	%al, %al
	je	.LBB25_10
.LBB25_7:
	cmpb	$-1, %al
	je	.LBB25_9
# %bb.8:
	testb	%al, %al
	je	.LBB25_12
	jmp	.LBB25_14
.LBB25_9:
	orb	$8, 82(%rbx)
	jmp	.LBB25_13
.LBB25_10:
	movl	$9, %eax
.LBB25_11:
	movl	%eax, 72(%rbx)
.LBB25_12:
	movq	%rbx, %rdi
	callq	tcp_output
.LBB25_13:
	xorl	%eax, %eax
.LBB25_14:
                                        # kill: def $al killed $al killed $eax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.LBB25_15:
	movl	$.L.str.47, %edi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$.L.str.1, %edi
	movl	$.L.str.2, %esi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$3, %edi
	callq	ukplat_terminate
.Lfunc_end25:
	.size	tcp_close_shutdown_fin, .Lfunc_end25-tcp_close_shutdown_fin
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
	testq	%rdi, %rdi
	je	.LBB26_20
# %bb.1:
	movq	%rdi, %r15
	movq	208(%rdi), %rbx
	testq	%rbx, %rbx
	je	.LBB26_18
# %bb.2:
	leaq	-48(%rbp), %r14
	movl	$65535, %r12d           # imm = 0xFFFF
	jmp	.LBB26_3
	.p2align	4, 0x90
.LBB26_17:                              #   in Loop: Header=BB26_3 Depth=1
	movq	208(%r15), %rbx
	testq	%rbx, %rbx
	je	.LBB26_18
.LBB26_3:                               # =>This Inner Loop Header: Depth=1
	movzbl	21(%rbx), %r13d
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	pbuf_split_64k
	movq	-48(%rbp), %rax
	movq	%rax, 208(%r15)
	movq	232(%r15), %rax
	testq	%rax, %rax
	je	.LBB26_4
# %bb.12:                               #   in Loop: Header=BB26_3 Depth=1
	movq	64(%r15), %rdi
	movq	%r15, %rsi
	movq	%rbx, %rdx
	xorl	%ecx, %ecx
	callq	*%rax
                                        # kill: def $al killed $al def $eax
	testb	%al, %al
	jne	.LBB26_13
# %bb.5:                                #   in Loop: Header=BB26_3 Depth=1
	testb	$32, %r13b
	jne	.LBB26_6
	jmp	.LBB26_17
	.p2align	4, 0x90
.LBB26_4:                               #   in Loop: Header=BB26_3 Depth=1
	movzwl	16(%rbx), %esi
	movq	%r15, %rdi
	callq	tcp_recved
	movq	%rbx, %rdi
	callq	pbuf_free
	testb	$32, %r13b
	je	.LBB26_17
.LBB26_6:                               #   in Loop: Header=BB26_3 Depth=1
	cmpq	$0, -48(%rbp)
	jne	.LBB26_17
# %bb.7:                                #   in Loop: Header=BB26_3 Depth=1
	movl	96(%r15), %eax
	testb	$1, 83(%r15)
	movl	$262142, %ecx           # imm = 0x3FFFE
	cmovel	%r12d, %ecx
	cmpl	%ecx, %eax
	je	.LBB26_9
# %bb.8:                                #   in Loop: Header=BB26_3 Depth=1
	addl	$1, %eax
	movl	%eax, 96(%r15)
.LBB26_9:                               #   in Loop: Header=BB26_3 Depth=1
	movq	232(%r15), %rax
	testq	%rax, %rax
	je	.LBB26_17
# %bb.10:                               #   in Loop: Header=BB26_3 Depth=1
	movq	64(%r15), %rdi
	movq	%r15, %rsi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	callq	*%rax
	cmpb	$-13, %al
	jne	.LBB26_17
# %bb.11:
	movb	$-13, %al
	jmp	.LBB26_19
.LBB26_18:
	xorl	%eax, %eax
.LBB26_19:
                                        # kill: def $al killed $al killed $eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB26_13:
	cmpb	$-13, %al
	je	.LBB26_19
# %bb.14:
	movq	-48(%rbp), %rsi
	testq	%rsi, %rsi
	je	.LBB26_16
# %bb.15:
	movq	%rbx, %rdi
	callq	pbuf_cat
.LBB26_16:
	movq	%rbx, 208(%r15)
	movb	$-5, %al
	jmp	.LBB26_19
.LBB26_20:
	movl	$.L.str.27, %edi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$.L.str.1, %edi
	movl	$.L.str.2, %esi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$3, %edi
	callq	ukplat_terminate
.Lfunc_end26:
	.size	tcp_process_refused_data, .Lfunc_end26-tcp_process_refused_data
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
	jmp	.LBB27_1
	.p2align	4, 0x90
.LBB27_4:                               #   in Loop: Header=BB27_1 Depth=1
	movq	56(%rbx), %rbx
.LBB27_1:                               # =>This Inner Loop Header: Depth=1
	testq	%rbx, %rbx
	je	.LBB27_5
# %bb.2:                                #   in Loop: Header=BB27_1 Depth=1
	cmpb	$0, 82(%rbx)
	jns	.LBB27_4
# %bb.3:                                #   in Loop: Header=BB27_1 Depth=1
	movq	%rbx, %rdi
	callq	tcp_output
	jmp	.LBB27_4
.LBB27_5:
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end27:
	.size	tcp_txnow, .Lfunc_end27-tcp_txnow
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
	testq	%rsi, %rsi
	je	.LBB28_8
# %bb.1:
	movq	%rdx, %rbx
	testq	%rdx, %rdx
	je	.LBB28_4
# %bb.2:
	movzwl	16(%rbx), %eax
	movq	%rsi, %rdi
	movl	%eax, %esi
	callq	tcp_recved
	movq	%rbx, %rdi
	callq	pbuf_free
	jmp	.LBB28_3
.LBB28_4:
	testb	%cl, %cl
	je	.LBB28_5
.LBB28_3:
	xorl	%eax, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.LBB28_5:
	cmpl	$1, 72(%rsi)
	je	.LBB28_7
# %bb.6:
	orb	$16, 82(%rsi)
.LBB28_7:
	movq	%rsi, %rdi
	movl	$1, %esi
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	jmp	tcp_close_shutdown      # TAILCALL
.LBB28_8:
	movl	$.L.str.30, %edi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$.L.str.1, %edi
	movl	$.L.str.2, %esi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$3, %edi
	callq	ukplat_terminate
.Lfunc_end28:
	.size	tcp_recv_null, .Lfunc_end28-tcp_recv_null
                                        # -- End function
	.globl	tcp_seg_free            # -- Begin function tcp_seg_free
	.p2align	4, 0x90
	.type	tcp_seg_free,@function
tcp_seg_free:                           # @tcp_seg_free
# %bb.0:
	testq	%rdi, %rdi
	je	.LBB29_4
# %bb.1:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	movq	8(%rdi), %rdi
	testq	%rdi, %rdi
	je	.LBB29_3
# %bb.2:
	callq	pbuf_free
.LBB29_3:
	movl	$3, %edi
	movq	%rbx, %rsi
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	jmp	memp_free               # TAILCALL
.LBB29_4:
	retq
.Lfunc_end29:
	.size	tcp_seg_free, .Lfunc_end29-tcp_seg_free
                                        # -- End function
	.globl	tcp_setprio             # -- Begin function tcp_setprio
	.p2align	4, 0x90
	.type	tcp_setprio,@function
tcp_setprio:                            # @tcp_setprio
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	testq	%rdi, %rdi
	je	.LBB30_2
# %bb.1:
	movb	%sil, 76(%rdi)
	popq	%rbp
	retq
.LBB30_2:
	movl	$.L.str.28, %edi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$.L.str.1, %edi
	movl	$.L.str.2, %esi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$3, %edi
	callq	ukplat_terminate
.Lfunc_end30:
	.size	tcp_setprio, .Lfunc_end30-tcp_setprio
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
	testq	%rdi, %rdi
	je	.LBB31_5
# %bb.1:
	movq	%rdi, %r14
	movl	$3, %edi
	callq	memp_malloc
	testq	%rax, %rax
	je	.LBB31_2
# %bb.3:
	movq	%rax, %rbx
	movl	$32, %edx
	movq	%rax, %rdi
	movq	%r14, %rsi
	callq	memcpy
	movq	8(%rbx), %rdi
	callq	pbuf_ref
	jmp	.LBB31_4
.LBB31_2:
	xorl	%ebx, %ebx
.LBB31_4:
	movq	%rbx, %rax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.LBB31_5:
	movl	$.L.str.29, %edi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$.L.str.1, %edi
	movl	$.L.str.2, %esi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$3, %edi
	callq	ukplat_terminate
.Lfunc_end31:
	.size	tcp_seg_copy, .Lfunc_end31-tcp_seg_copy
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
	testq	%rax, %rax
	jne	.LBB32_39
# %bb.1:
	movq	tcp_active_pcbs(%rip), %rdi
	testq	%rdi, %rdi
	jne	.LBB32_2
.LBB32_5:
	movq	tcp_tw_pcbs(%rip), %rax
	testq	%rax, %rax
	je	.LBB32_10
# %bb.6:
	xorl	%ecx, %ecx
	movl	tcp_ticks(%rip), %edx
	xorl	%edi, %edi
	.p2align	4, 0x90
.LBB32_7:                               # =>This Inner Loop Header: Depth=1
	movl	%edx, %esi
	subl	88(%rax), %esi
	cmpl	%ecx, %esi
	cmovaeq	%rax, %rdi
	cmovael	%esi, %ecx
	movq	56(%rax), %rax
	testq	%rax, %rax
	jne	.LBB32_7
# %bb.8:
	testq	%rdi, %rdi
	je	.LBB32_10
# %bb.9:
	movl	$1, %esi
	callq	tcp_abandon
.LBB32_10:
	movl	$1, %edi
	callq	memp_malloc
	movq	%rax, %rbx
	testq	%rax, %rax
	jne	.LBB32_39
# %bb.11:
	movq	tcp_active_pcbs(%rip), %rax
	testq	%rax, %rax
	je	.LBB32_18
# %bb.12:
	xorl	%ecx, %ecx
	movl	tcp_ticks(%rip), %edx
	xorl	%edi, %edi
	jmp	.LBB32_13
	.p2align	4, 0x90
.LBB32_4:                               #   in Loop: Header=BB32_2 Depth=1
	movq	%rbx, %rdi
	testq	%rbx, %rbx
	je	.LBB32_5
.LBB32_2:                               # =>This Inner Loop Header: Depth=1
	movq	56(%rdi), %rbx
	movzwl	82(%rdi), %eax
	testb	$8, %al
	je	.LBB32_4
# %bb.3:                                #   in Loop: Header=BB32_2 Depth=1
	andl	$65527, %eax            # imm = 0xFFF7
	movw	%ax, 82(%rdi)
	callq	tcp_close_shutdown_fin
	jmp	.LBB32_4
	.p2align	4, 0x90
.LBB32_15:                              #   in Loop: Header=BB32_13 Depth=1
	movq	56(%rax), %rax
	testq	%rax, %rax
	je	.LBB32_16
.LBB32_13:                              # =>This Inner Loop Header: Depth=1
	cmpl	$9, 72(%rax)
	jne	.LBB32_15
# %bb.14:                               #   in Loop: Header=BB32_13 Depth=1
	movl	%edx, %esi
	subl	88(%rax), %esi
	cmpl	%ecx, %esi
	cmovaeq	%rax, %rdi
	cmovael	%esi, %ecx
	jmp	.LBB32_15
.LBB32_16:
	testq	%rdi, %rdi
	je	.LBB32_18
# %bb.17:
	xorl	%esi, %esi
	callq	tcp_abandon
.LBB32_18:
	movl	$1, %edi
	callq	memp_malloc
	movq	%rax, %rbx
	testq	%rax, %rax
	jne	.LBB32_39
# %bb.19:
	movq	tcp_active_pcbs(%rip), %rax
	testq	%rax, %rax
	je	.LBB32_26
# %bb.20:
	xorl	%ecx, %ecx
	movl	tcp_ticks(%rip), %edx
	xorl	%edi, %edi
	jmp	.LBB32_21
	.p2align	4, 0x90
.LBB32_23:                              #   in Loop: Header=BB32_21 Depth=1
	movq	56(%rax), %rax
	testq	%rax, %rax
	je	.LBB32_24
.LBB32_21:                              # =>This Inner Loop Header: Depth=1
	cmpl	$8, 72(%rax)
	jne	.LBB32_23
# %bb.22:                               #   in Loop: Header=BB32_21 Depth=1
	movl	%edx, %esi
	subl	88(%rax), %esi
	cmpl	%ecx, %esi
	cmovaeq	%rax, %rdi
	cmovael	%esi, %ecx
	jmp	.LBB32_23
.LBB32_24:
	testq	%rdi, %rdi
	je	.LBB32_26
# %bb.25:
	xorl	%esi, %esi
	callq	tcp_abandon
.LBB32_26:
	movl	$1, %edi
	callq	memp_malloc
	movq	%rax, %rbx
	testq	%rax, %rax
	jne	.LBB32_39
# %bb.27:
	cmpb	$127, %r14b
	movzbl	%r14b, %eax
	movl	$127, %ecx
	cmovbl	%eax, %ecx
	testb	%cl, %cl
	je	.LBB32_38
# %bb.28:
	movq	tcp_active_pcbs(%rip), %rax
	testq	%rax, %rax
	je	.LBB32_38
# %bb.29:
	addb	$-1, %cl
	xorl	%esi, %esi
	movl	tcp_ticks(%rip), %r8d
	xorl	%edi, %edi
	jmp	.LBB32_30
.LBB32_31:                              #   in Loop: Header=BB32_30 Depth=1
	movl	%r8d, %edx
	subl	88(%rax), %edx
.LBB32_34:                              #   in Loop: Header=BB32_30 Depth=1
	movq	%rax, %rdi
	movl	%edx, %esi
	movl	%ebx, %ecx
.LBB32_35:                              #   in Loop: Header=BB32_30 Depth=1
	movq	56(%rax), %rax
	testq	%rax, %rax
	je	.LBB32_36
.LBB32_30:                              # =>This Inner Loop Header: Depth=1
	movzbl	76(%rax), %ebx
	cmpb	%cl, %bl
	jb	.LBB32_31
# %bb.32:                               #   in Loop: Header=BB32_30 Depth=1
	jne	.LBB32_35
# %bb.33:                               #   in Loop: Header=BB32_30 Depth=1
	movl	%r8d, %edx
	subl	88(%rax), %edx
	cmpl	%esi, %edx
	jae	.LBB32_34
	jmp	.LBB32_35
.LBB32_36:
	testq	%rdi, %rdi
	je	.LBB32_38
# %bb.37:
	movl	$1, %esi
	callq	tcp_abandon
.LBB32_38:
	movl	$1, %edi
	callq	memp_malloc
	movq	%rax, %rbx
	testq	%rax, %rax
	je	.LBB32_40
.LBB32_39:
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
.LBB32_40:
	movq	%rbx, %rax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end32:
	.size	tcp_alloc, .Lfunc_end32-tcp_alloc
                                        # -- End function
	.globl	tcp_new                 # -- Begin function tcp_new
	.p2align	4, 0x90
	.type	tcp_new,@function
tcp_new:                                # @tcp_new
# %bb.0:
	movl	$64, %edi
	jmp	tcp_alloc               # TAILCALL
.Lfunc_end33:
	.size	tcp_new, .Lfunc_end33-tcp_new
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
	testq	%rax, %rax
	je	.LBB34_2
# %bb.1:
	movb	%bl, 20(%rax)
	movb	%bl, 44(%rax)
.LBB34_2:
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end34:
	.size	tcp_new_ip_type, .Lfunc_end34-tcp_new_ip_type
                                        # -- End function
	.globl	tcp_arg                 # -- Begin function tcp_arg
	.p2align	4, 0x90
	.type	tcp_arg,@function
tcp_arg:                                # @tcp_arg
# %bb.0:
	testq	%rdi, %rdi
	je	.LBB35_2
# %bb.1:
	movq	%rsi, 64(%rdi)
.LBB35_2:
	retq
.Lfunc_end35:
	.size	tcp_arg, .Lfunc_end35-tcp_arg
                                        # -- End function
	.globl	tcp_recv                # -- Begin function tcp_recv
	.p2align	4, 0x90
	.type	tcp_recv,@function
tcp_recv:                               # @tcp_recv
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	testq	%rdi, %rdi
	je	.LBB36_3
# %bb.1:
	cmpl	$1, 72(%rdi)
	je	.LBB36_4
# %bb.2:
	movq	%rsi, 232(%rdi)
.LBB36_3:
	popq	%rbp
	retq
.LBB36_4:
	movl	$.L.str.31, %edi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$.L.str.1, %edi
	movl	$.L.str.2, %esi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$3, %edi
	callq	ukplat_terminate
.Lfunc_end36:
	.size	tcp_recv, .Lfunc_end36-tcp_recv
                                        # -- End function
	.globl	tcp_sent                # -- Begin function tcp_sent
	.p2align	4, 0x90
	.type	tcp_sent,@function
tcp_sent:                               # @tcp_sent
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	testq	%rdi, %rdi
	je	.LBB37_3
# %bb.1:
	cmpl	$1, 72(%rdi)
	je	.LBB37_4
# %bb.2:
	movq	%rsi, 224(%rdi)
.LBB37_3:
	popq	%rbp
	retq
.LBB37_4:
	movl	$.L.str.32, %edi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$.L.str.1, %edi
	movl	$.L.str.2, %esi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$3, %edi
	callq	ukplat_terminate
.Lfunc_end37:
	.size	tcp_sent, .Lfunc_end37-tcp_sent
                                        # -- End function
	.globl	tcp_err                 # -- Begin function tcp_err
	.p2align	4, 0x90
	.type	tcp_err,@function
tcp_err:                                # @tcp_err
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	testq	%rdi, %rdi
	je	.LBB38_3
# %bb.1:
	cmpl	$1, 72(%rdi)
	je	.LBB38_4
# %bb.2:
	movq	%rsi, 256(%rdi)
.LBB38_3:
	popq	%rbp
	retq
.LBB38_4:
	movl	$.L.str.33, %edi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$.L.str.1, %edi
	movl	$.L.str.2, %esi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$3, %edi
	callq	ukplat_terminate
.Lfunc_end38:
	.size	tcp_err, .Lfunc_end38-tcp_err
                                        # -- End function
	.globl	tcp_accept              # -- Begin function tcp_accept
	.p2align	4, 0x90
	.type	tcp_accept,@function
tcp_accept:                             # @tcp_accept
# %bb.0:
	testq	%rdi, %rdi
	je	.LBB39_3
# %bb.1:
	cmpl	$1, 72(%rdi)
	jne	.LBB39_3
# %bb.2:
	movq	%rsi, 80(%rdi)
.LBB39_3:
	retq
.Lfunc_end39:
	.size	tcp_accept, .Lfunc_end39-tcp_accept
                                        # -- End function
	.globl	tcp_poll                # -- Begin function tcp_poll
	.p2align	4, 0x90
	.type	tcp_poll,@function
tcp_poll:                               # @tcp_poll
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	testq	%rdi, %rdi
	je	.LBB40_1
# %bb.3:
	cmpl	$1, 72(%rdi)
	je	.LBB40_4
# %bb.5:
	movq	%rsi, 248(%rdi)
	movb	%dl, 85(%rdi)
	popq	%rbp
	retq
.LBB40_1:
	movl	$.L.str.34, %edi
	jmp	.LBB40_2
.LBB40_4:
	movl	$.L.str.35, %edi
.LBB40_2:
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$.L.str.1, %edi
	movl	$.L.str.2, %esi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$3, %edi
	callq	ukplat_terminate
.Lfunc_end40:
	.size	tcp_poll, .Lfunc_end40-tcp_poll
                                        # -- End function
	.globl	tcp_netif_ip_addr_changed # -- Begin function tcp_netif_ip_addr_changed
	.p2align	4, 0x90
	.type	tcp_netif_ip_addr_changed,@function
tcp_netif_ip_addr_changed:              # @tcp_netif_ip_addr_changed
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	testq	%rdi, %rdi
	je	.LBB41_6
# %bb.1:
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movb	20(%rdi), %al
	movl	(%rdi), %ecx
	cmpb	$6, %al
	jne	.LBB41_7
# %bb.2:
	testl	%ecx, %ecx
	jne	.LBB41_8
# %bb.3:
	cmpl	$0, 4(%rbx)
	jne	.LBB41_8
# %bb.4:
	cmpl	$0, 8(%rbx)
	jne	.LBB41_8
# %bb.5:
	cmpl	$0, 12(%rbx)
	jne	.LBB41_8
	jmp	.LBB41_6
.LBB41_7:
	testl	%ecx, %ecx
	je	.LBB41_6
.LBB41_8:
	movq	tcp_active_pcbs(%rip), %rdi
	testq	%rdi, %rdi
	je	.LBB41_21
	.p2align	4, 0x90
# %bb.9:
	cmpb	%al, 20(%rdi)
	jne	.LBB41_16
.LBB41_10:
	movl	(%rdi), %ecx
	movl	(%rbx), %edx
	cmpb	$6, %al
	jne	.LBB41_17
# %bb.11:
	cmpl	%edx, %ecx
	jne	.LBB41_16
# %bb.12:
	movl	4(%rdi), %eax
	cmpl	4(%rbx), %eax
	jne	.LBB41_16
# %bb.13:
	movl	8(%rdi), %eax
	cmpl	8(%rbx), %eax
	jne	.LBB41_16
# %bb.14:
	movl	12(%rdi), %eax
	cmpl	12(%rbx), %eax
	jne	.LBB41_16
# %bb.15:
	movb	16(%rdi), %al
	cmpb	16(%rbx), %al
	je	.LBB41_18
	.p2align	4, 0x90
.LBB41_16:
	movq	56(%rdi), %rdi
	testq	%rdi, %rdi
	je	.LBB41_21
.LBB41_20:
	movb	20(%rbx), %al
	cmpb	%al, 20(%rdi)
	je	.LBB41_10
	jmp	.LBB41_16
	.p2align	4, 0x90
.LBB41_17:
	cmpl	%edx, %ecx
	jne	.LBB41_16
.LBB41_18:
	movq	56(%rdi), %r15
	movl	$1, %esi
	callq	tcp_abandon
	movq	%r15, %rdi
	testq	%rdi, %rdi
	jne	.LBB41_20
.LBB41_21:
	movq	tcp_bound_pcbs(%rip), %rdi
	testq	%rdi, %rdi
	jne	.LBB41_23
	jmp	.LBB41_33
	.p2align	4, 0x90
.LBB41_30:                              #   in Loop: Header=BB41_23 Depth=1
	movq	56(%rdi), %rdi
	testq	%rdi, %rdi
	je	.LBB41_33
.LBB41_23:                              # =>This Inner Loop Header: Depth=1
	movzbl	20(%rdi), %eax
	cmpb	20(%rbx), %al
	jne	.LBB41_30
# %bb.24:                               #   in Loop: Header=BB41_23 Depth=1
	movl	(%rdi), %ecx
	movl	(%rbx), %edx
	cmpb	$6, %al
	jne	.LBB41_31
# %bb.25:                               #   in Loop: Header=BB41_23 Depth=1
	cmpl	%edx, %ecx
	jne	.LBB41_30
# %bb.26:                               #   in Loop: Header=BB41_23 Depth=1
	movl	4(%rdi), %eax
	cmpl	4(%rbx), %eax
	jne	.LBB41_30
# %bb.27:                               #   in Loop: Header=BB41_23 Depth=1
	movl	8(%rdi), %eax
	cmpl	8(%rbx), %eax
	jne	.LBB41_30
# %bb.28:                               #   in Loop: Header=BB41_23 Depth=1
	movl	12(%rdi), %eax
	cmpl	12(%rbx), %eax
	jne	.LBB41_30
# %bb.29:                               #   in Loop: Header=BB41_23 Depth=1
	movzbl	16(%rdi), %eax
	cmpb	16(%rbx), %al
	jne	.LBB41_30
	jmp	.LBB41_32
	.p2align	4, 0x90
.LBB41_31:                              #   in Loop: Header=BB41_23 Depth=1
	cmpl	%edx, %ecx
	jne	.LBB41_30
.LBB41_32:                              #   in Loop: Header=BB41_23 Depth=1
	movq	56(%rdi), %r15
	movl	$1, %esi
	callq	tcp_abandon
	movq	%r15, %rdi
	testq	%rdi, %rdi
	jne	.LBB41_23
.LBB41_33:
	testq	%r14, %r14
	je	.LBB41_6
# %bb.34:
	cmpb	$6, 20(%r14)
	movl	(%r14), %eax
	jne	.LBB41_39
# %bb.35:
	testl	%eax, %eax
	jne	.LBB41_40
# %bb.36:
	cmpl	$0, 4(%r14)
	jne	.LBB41_40
# %bb.37:
	cmpl	$0, 8(%r14)
	jne	.LBB41_40
# %bb.38:
	cmpl	$0, 12(%r14)
	jne	.LBB41_40
	jmp	.LBB41_6
.LBB41_39:
	testl	%eax, %eax
	je	.LBB41_6
.LBB41_40:
	movq	tcp_listen_pcbs(%rip), %rax
	testq	%rax, %rax
	jne	.LBB41_42
	jmp	.LBB41_6
.LBB41_52:                              #   in Loop: Header=BB41_42 Depth=1
	movl	$0, 12(%rax)
	movq	$0, 4(%rax)
	movb	$0, 16(%rax)
	.p2align	4, 0x90
.LBB41_53:                              #   in Loop: Header=BB41_42 Depth=1
	movq	56(%rax), %rax
	testq	%rax, %rax
	je	.LBB41_6
.LBB41_42:                              # =>This Inner Loop Header: Depth=1
	movzbl	20(%rax), %ecx
	cmpb	20(%rbx), %cl
	jne	.LBB41_53
# %bb.43:                               #   in Loop: Header=BB41_42 Depth=1
	movl	(%rax), %edx
	movl	(%rbx), %esi
	cmpb	$6, %cl
	jne	.LBB41_49
# %bb.44:                               #   in Loop: Header=BB41_42 Depth=1
	cmpl	%esi, %edx
	jne	.LBB41_53
# %bb.45:                               #   in Loop: Header=BB41_42 Depth=1
	movl	4(%rax), %ecx
	cmpl	4(%rbx), %ecx
	jne	.LBB41_53
# %bb.46:                               #   in Loop: Header=BB41_42 Depth=1
	movl	8(%rax), %ecx
	cmpl	8(%rbx), %ecx
	jne	.LBB41_53
# %bb.47:                               #   in Loop: Header=BB41_42 Depth=1
	movl	12(%rax), %ecx
	cmpl	12(%rbx), %ecx
	jne	.LBB41_53
# %bb.48:                               #   in Loop: Header=BB41_42 Depth=1
	movzbl	16(%rax), %ecx
	cmpb	16(%rbx), %cl
	jne	.LBB41_53
	jmp	.LBB41_50
	.p2align	4, 0x90
.LBB41_49:                              #   in Loop: Header=BB41_42 Depth=1
	cmpl	%esi, %edx
	jne	.LBB41_53
.LBB41_50:                              #   in Loop: Header=BB41_42 Depth=1
	movzbl	20(%r14), %ecx
	movb	%cl, 20(%rax)
	cmpb	$6, 20(%r14)
	movl	(%r14), %ecx
	movl	%ecx, (%rax)
	jne	.LBB41_52
# %bb.51:                               #   in Loop: Header=BB41_42 Depth=1
	movl	4(%r14), %ecx
	movl	%ecx, 4(%rax)
	movl	8(%r14), %ecx
	movl	%ecx, 8(%rax)
	movl	12(%r14), %ecx
	movl	%ecx, 12(%rax)
	movzbl	16(%r14), %ecx
	movb	%cl, 16(%rax)
	movq	56(%rax), %rax
	testq	%rax, %rax
	jne	.LBB41_42
.LBB41_6:
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end41:
	.size	tcp_netif_ip_addr_changed, .Lfunc_end41-tcp_netif_ip_addr_changed
                                        # -- End function
	.globl	tcp_debug_state_str     # -- Begin function tcp_debug_state_str
	.p2align	4, 0x90
	.type	tcp_debug_state_str,@function
tcp_debug_state_str:                    # @tcp_debug_state_str
# %bb.0:
	movl	%edi, %eax
	movq	tcp_state_str(,%rax,8), %rax
	retq
.Lfunc_end42:
	.size	tcp_debug_state_str, .Lfunc_end42-tcp_debug_state_str
                                        # -- End function
	.globl	tcp_tcp_get_tcp_addrinfo # -- Begin function tcp_tcp_get_tcp_addrinfo
	.p2align	4, 0x90
	.type	tcp_tcp_get_tcp_addrinfo,@function
tcp_tcp_get_tcp_addrinfo:               # @tcp_tcp_get_tcp_addrinfo
# %bb.0:
	testq	%rdi, %rdi
	je	.LBB43_1
# %bb.2:
	testl	%esi, %esi
	je	.LBB43_7
# %bb.3:
	testq	%rdx, %rdx
	je	.LBB43_5
# %bb.4:
	movq	16(%rdi), %rax
	movq	%rax, 16(%rdx)
	movups	(%rdi), %xmm0
	movups	%xmm0, (%rdx)
.LBB43_5:
	testq	%rcx, %rcx
	je	.LBB43_12
# %bb.6:
	movzwl	78(%rdi), %eax
	jmp	.LBB43_11
.LBB43_1:
	movb	$-6, %al
                                        # kill: def $al killed $al killed $eax
	retq
.LBB43_7:
	testq	%rdx, %rdx
	je	.LBB43_9
# %bb.8:
	movq	40(%rdi), %rax
	movq	%rax, 16(%rdx)
	movups	24(%rdi), %xmm0
	movups	%xmm0, (%rdx)
.LBB43_9:
	testq	%rcx, %rcx
	je	.LBB43_12
# %bb.10:
	movzwl	80(%rdi), %eax
.LBB43_11:
	movw	%ax, (%rcx)
.LBB43_12:
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	retq
.Lfunc_end43:
	.size	tcp_tcp_get_tcp_addrinfo, .Lfunc_end43-tcp_tcp_get_tcp_addrinfo
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
.Lfunc_end44:
	.size	uk_swrand_randr, .Lfunc_end44-uk_swrand_randr
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

	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
