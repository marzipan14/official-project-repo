	.text
	.file	"uknetdev.c"
	.globl	__uknetdev_input        # -- Begin function __uknetdev_input
	.p2align	4, 0x90
	.type	__uknetdev_input,@function
__uknetdev_input:                       # @__uknetdev_input
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
	je	.LBB0_1
# %bb.3:
	movq	%rdx, %r14
	testq	%rdx, %rdx
	je	.LBB0_4
# %bb.5:
	cmpq	$0, 184(%r14)
	je	.LBB0_42
# %bb.6:
	movq	%rdi, %r13
	.p2align	4, 0x90
.LBB0_7:                                # =>This Inner Loop Header: Depth=1
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$_intrstack_start, %ecx
	cmpq	%rcx, %rax
	jb	.LBB0_10
# %bb.8:                                #   in Loop: Header=BB0_7 Depth=1
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$_end, %ecx
	cmpq	%rcx, %rax
	jbe	.LBB0_9
.LBB0_10:                               #   in Loop: Header=BB0_7 Depth=1
	#APP
	movq	%rsp, %rax
	#NO_APP
	andq	$-65536, %rax           # imm = 0xFFFF0000
	movl	4096(%rax), %r15d
	movq	%r13, %rdi
	xorl	%esi, %esi
	leaq	65480(%rbp), %r12
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
	movq	%r12, %rdx
	movq	%r15, %rsp
	shlq	$4, %rsp
	addq	$tsb_comp0, %rsp
	movq	%rsp, %rbp
	movq	(%rsp), %rsp
	addq	$8, %rbp
	movq	(%rbp), %rbp
	andq	$-16, %rsp
	callq	uk_netdev_rx_one
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
	movl	%r11d, -44(%rbp)

	#NO_APP
	movl	-44(%rbp), %eax
	testl	%eax, %eax
	jns	.LBB0_17
	jmp	.LBB0_12
	.p2align	4, 0x90
.LBB0_9:                                #   in Loop: Header=BB0_7 Depth=1
	movq	%r13, %rdi
	xorl	%esi, %esi
	leaq	65480(%rbp), %rdx
	callq	uk_netdev_rx_one
	movl	%eax, -44(%rbp)
	testl	%eax, %eax
	js	.LBB0_12
.LBB0_17:                               #   in Loop: Header=BB0_7 Depth=1
	testl	$-2147483647, %eax      # imm = 0x80000001
	je	.LBB0_41
# %bb.18:                               #   in Loop: Header=BB0_7 Depth=1
	movq	65480(%rbp), %rax
	testq	%rax, %rax
	je	.LBB0_19
# %bb.20:                               #   in Loop: Header=BB0_7 Depth=1
	movq	32(%rax), %rbx
	testq	%rbx, %rbx
	je	.LBB0_21
# %bb.22:                               #   in Loop: Header=BB0_7 Depth=1
	testb	$2, 21(%rbx)
	je	.LBB0_23
# %bb.24:                               #   in Loop: Header=BB0_7 Depth=1
	movq	16(%rax), %rax
	movq	%rax, 8(%rbx)
	movq	65480(%rbp), %rax
	movzwl	24(%rax), %eax
	movw	%ax, 18(%rbx)
	movw	%ax, 16(%rbx)
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	*184(%r14)
	testb	%al, %al
	jne	.LBB0_25
.LBB0_40:                               #   in Loop: Header=BB0_7 Depth=1
	movl	-44(%rbp), %eax
	movl	$-2147483645, %ecx      # imm = 0x80000003
	andl	%ecx, %eax
	cmpl	$3, %eax
	je	.LBB0_7
	jmp	.LBB0_41
.LBB0_25:                               #   in Loop: Header=BB0_7 Depth=1
	cmpb	$-1, %al
	jne	.LBB0_35
# %bb.26:                               #   in Loop: Header=BB0_7 Depth=1
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$_intrstack_start, %ecx
	cmpq	%rcx, %rax
	jb	.LBB0_33
# %bb.27:                               #   in Loop: Header=BB0_7 Depth=1
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$_end, %ecx
	cmpq	%rcx, %rax
	jbe	.LBB0_28
.LBB0_33:                               #   in Loop: Header=BB0_7 Depth=1
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
.Ltmp2:
	movq	$1073741820, %rax       # imm = 0x3FFFFFFC
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741820, %rax       # imm = 0x3FFFFFFC
	jne	.Ltmp2
	movq	%r15, %rsp
	shlq	$4, %rsp
	addq	$tsb_comp0, %rsp
	movq	%rsp, %rbp
	movq	(%rsp), %rsp
	addq	$8, %rbp
	movq	(%rbp), %rbp
	andq	$-16, %rsp
	callq	uk_sched_yield
.Ltmp3:
	movq	$1073741811, %rax       # imm = 0x3FFFFFF3
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741811, %rax       # imm = 0x3FFFFFF3
	jne	.Ltmp3
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
	jmp	.LBB0_34
.LBB0_28:                               #   in Loop: Header=BB0_7 Depth=1
	#APP
	movq	%rsp, %rax
	#NO_APP
	andq	$-65536, %rax           # imm = 0xFFFF0000
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.LBB0_29
# %bb.30:                               #   in Loop: Header=BB0_7 Depth=1
	movq	88(%rax), %rdi
	testq	%rdi, %rdi
	je	.LBB0_31
# %bb.32:                               #   in Loop: Header=BB0_7 Depth=1
	callq	*(%rdi)
.LBB0_34:                               #   in Loop: Header=BB0_7 Depth=1
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	*184(%r14)
	testb	%al, %al
	je	.LBB0_40
.LBB0_35:                               #   in Loop: Header=BB0_7 Depth=1
	#APP
	movq	%rsp, %rcx
	#NO_APP
	movl	$_intrstack_start, %edx
	cmpq	%rdx, %rcx
	jb	.LBB0_38
# %bb.36:                               #   in Loop: Header=BB0_7 Depth=1
	#APP
	movq	%rsp, %rcx
	#NO_APP
	movl	$_end, %edx
	cmpq	%rdx, %rcx
	jbe	.LBB0_37
.LBB0_38:                               #   in Loop: Header=BB0_7 Depth=1
	#APP
	movq	%rsp, %rcx
	#NO_APP
	andq	$-65536, %rcx           # imm = 0xFFFF0000
	movl	4096(%rcx), %r15d
	movsbq	263(%r14), %r12
	movq	%r13, %rbx
	movzbl	264(%r14), %r13d
	movsbq	%al, %r8
	movsbq	262(%r14), %rsi
	movl	$__uknetdev_input.__str.6, %edi
	#APP
	pushq	%rsi
	pushq	%rdi
	pushq	%r8
	pushq	%r9
	pushq	%r10
	pushq	%r11
	pushq	%r12
	pushq	%r13
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
.Ltmp4:
	movq	$1073741820, %rax       # imm = 0x3FFFFFFC
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741820, %rax       # imm = 0x3FFFFFFC
	jne	.Ltmp4
	movq	%r12, %rdx
	movq	%r13, %rcx
	movq	%r15, %rsp
	shlq	$4, %rsp
	addq	$tsb_comp0, %rsp
	movq	%rsp, %rbp
	movq	(%rsp), %rsp
	addq	$8, %rbp
	movq	(%rbp), %rbp
	andq	$-16, %rsp
	callq	uk_pr_err
.Ltmp5:
	movq	$1073741811, %rax       # imm = 0x3FFFFFF3
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741811, %rax       # imm = 0x3FFFFFF3
	jne	.Ltmp5
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
	popq	%r13
	popq	%r12
	popq	%r11
	popq	%r10
	popq	%r9
	popq	%r8
	popq	%rdi
	popq	%rsi

	#NO_APP
	movq	%rbx, %r13
	jmp	.LBB0_39
.LBB0_37:                               #   in Loop: Header=BB0_7 Depth=1
	movsbl	262(%r14), %esi
	movsbl	263(%r14), %edx
	movzbl	264(%r14), %ecx
	movsbl	%al, %r8d
	movl	$__uknetdev_input.__str.5, %edi
	xorl	%eax, %eax
	callq	uk_pr_err
.LBB0_39:                               #   in Loop: Header=BB0_7 Depth=1
	movq	65480(%rbp), %rdi
	callq	uk_netbuf_free_single
	jmp	.LBB0_40
.LBB0_12:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$_intrstack_start, %ecx
	cmpq	%rcx, %rax
	jb	.LBB0_15
# %bb.13:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$_end, %ecx
	cmpq	%rcx, %rax
	jbe	.LBB0_14
.LBB0_15:
	#APP
	movq	%rsp, %rax
	#NO_APP
	andq	$-65536, %rax           # imm = 0xFFFF0000
	movl	4096(%rax), %r15d
	movsbq	263(%r14), %r12
	movzbl	264(%r14), %r13d
	movslq	-44(%rbp), %r8
	movsbq	262(%r14), %rsi
	movl	$__uknetdev_input.__str.4, %edi
	#APP
	pushq	%rsi
	pushq	%rdi
	pushq	%r8
	pushq	%r9
	pushq	%r10
	pushq	%r11
	pushq	%r12
	pushq	%r13
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
.Ltmp6:
	movq	$1073741820, %rax       # imm = 0x3FFFFFFC
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741820, %rax       # imm = 0x3FFFFFFC
	jne	.Ltmp6
	movq	%r12, %rdx
	movq	%r13, %rcx
	movq	%r15, %rsp
	shlq	$4, %rsp
	addq	$tsb_comp0, %rsp
	movq	%rsp, %rbp
	movq	(%rsp), %rsp
	addq	$8, %rbp
	movq	(%rbp), %rbp
	andq	$-16, %rsp
	callq	uk_pr_crit
.Ltmp7:
	movq	$1073741811, %rax       # imm = 0x3FFFFFF3
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741811, %rax       # imm = 0x3FFFFFF3
	jne	.Ltmp7
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
	popq	%r13
	popq	%r12
	popq	%r11
	popq	%r10
	popq	%r9
	popq	%r8
	popq	%rdi
	popq	%rsi

	#NO_APP
	jmp	.LBB0_16
.LBB0_14:
	movsbl	262(%r14), %esi
	movsbl	263(%r14), %edx
	movzbl	264(%r14), %ecx
	movl	-44(%rbp), %r8d
	movl	$__uknetdev_input.__str, %edi
	xorl	%eax, %eax
	callq	uk_pr_crit
.LBB0_16:
	movq	%r14, %rdi
	callq	netif_set_down
.LBB0_41:
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB0_19:
	movl	$.L.str, %edi
	movl	$.L.str.20, %esi
	jmp	.LBB0_2
.LBB0_21:
	movl	$.L.str, %edi
	movl	$.L.str.21, %esi
	jmp	.LBB0_2
.LBB0_23:
	movl	$.L.str, %edi
	movl	$.L.str.22, %esi
.LBB0_2:
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$3, %edi
	callq	ukplat_terminate
.LBB0_1:
	movl	$.L.str, %edi
	movl	$.L.str.1, %esi
	jmp	.LBB0_2
.LBB0_4:
	movl	$.L.str, %edi
	movl	$.L.str.2, %esi
	jmp	.LBB0_2
.LBB0_42:
	movl	$.L.str, %edi
	movl	$.L.str.3, %esi
	jmp	.LBB0_2
.LBB0_29:
	movl	$.L.str, %edi
	movl	$.L.str.24, %esi
	jmp	.LBB0_2
.LBB0_31:
	movl	$.L.str, %edi
	movl	$.L.str.25, %esi
	jmp	.LBB0_2
.Lfunc_end0:
	.size	__uknetdev_input, .Lfunc_end0-__uknetdev_input
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
	movl	$uk_pr_crit.__str.14, %edx
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
	.p2align	4, 0x90         # -- Begin function uk_netdev_rx_one
	.type	uk_netdev_rx_one,@function
uk_netdev_rx_one:                       # @uk_netdev_rx_one
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	testq	%rdi, %rdi
	je	.LBB2_1
# %bb.3:
	movq	8(%rdi), %rax
	testq	%rax, %rax
	je	.LBB2_4
# %bb.5:
	testw	%si, %si
	jne	.LBB2_6
# %bb.7:
	movq	16(%rdi), %rcx
	cmpl	$3, (%rcx)
	jne	.LBB2_8
# %bb.9:
	movq	32(%rdi), %rsi
	leaq	512(%rsi), %rcx
	cmpq	$512, %rcx              # imm = 0x200
	jbe	.LBB2_10
# %bb.11:
	testq	%rdx, %rdx
	je	.LBB2_12
# %bb.13:
	popq	%rbp
	jmpq	*%rax                   # TAILCALL
.LBB2_1:
	movl	$.L.str, %edi
	movl	$.L.str.1, %esi
	jmp	.LBB2_2
.LBB2_4:
	movl	$.L.str, %edi
	movl	$.L.str.15, %esi
	jmp	.LBB2_2
.LBB2_6:
	movl	$.L.str, %edi
	movl	$.L.str.16, %esi
	jmp	.LBB2_2
.LBB2_8:
	movl	$.L.str, %edi
	movl	$.L.str.17, %esi
	jmp	.LBB2_2
.LBB2_10:
	movl	$.L.str, %edi
	movl	$.L.str.18, %esi
	jmp	.LBB2_2
.LBB2_12:
	movl	$.L.str, %edi
	movl	$.L.str.19, %esi
.LBB2_2:
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$3, %edi
	callq	ukplat_terminate
.Lfunc_end2:
	.size	uk_netdev_rx_one, .Lfunc_end2-uk_netdev_rx_one
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function uk_sched_yield
	.type	uk_sched_yield,@function
uk_sched_yield:                         # @uk_sched_yield
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	#APP
	movq	%rsp, %rax
	#NO_APP
	andq	$-65536, %rax           # imm = 0xFFFF0000
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.LBB3_1
# %bb.3:
	movq	88(%rax), %rdi
	testq	%rdi, %rdi
	je	.LBB3_4
# %bb.5:
	popq	%rbp
	jmpq	*(%rdi)                 # TAILCALL
.LBB3_1:
	movl	$.L.str, %edi
	movl	$.L.str.24, %esi
	jmp	.LBB3_2
.LBB3_4:
	movl	$.L.str, %edi
	movl	$.L.str.25, %esi
.LBB3_2:
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$3, %edi
	callq	ukplat_terminate
.Lfunc_end3:
	.size	uk_sched_yield, .Lfunc_end3-uk_sched_yield
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function uk_pr_err
	.type	uk_pr_err,@function
uk_pr_err:                              # @uk_pr_err
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$208, %rsp
	movq	%rdi, %r10
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
	movl	$uk_pr_err.__str, %esi
	movl	$uk_pr_err.__str.26, %edx
	movl	$1, %edi
	movl	$190, %ecx
	movq	%r10, %r8
	callq	_uk_vprintk
	addq	$208, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	uk_pr_err, .Lfunc_end4-uk_pr_err
                                        # -- End function
	.globl	uknetdev_poll           # -- Begin function uknetdev_poll
	.p2align	4, 0x90
	.type	uknetdev_poll,@function
uknetdev_poll:                          # @uknetdev_poll
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	testq	%rdi, %rdi
	je	.LBB5_1
# %bb.3:
	movq	%rdi, %rdx
	cmpb	$101, 262(%rdi)
	jne	.LBB5_4
# %bb.5:
	cmpb	$110, 263(%rdx)
	jne	.LBB5_6
# %bb.7:
	movq	232(%rdx), %rdi
	testq	%rdi, %rdi
	je	.LBB5_8
# %bb.9:
	xorl	%esi, %esi
	popq	%rbp
	jmp	__uknetdev_input        # TAILCALL
.LBB5_1:
	movl	$.L.str, %edi
	movl	$.L.str.2, %esi
	jmp	.LBB5_2
.LBB5_4:
	movl	$.L.str, %edi
	movl	$.L.str.7, %esi
	jmp	.LBB5_2
.LBB5_6:
	movl	$.L.str, %edi
	movl	$.L.str.8, %esi
	jmp	.LBB5_2
.LBB5_8:
	movl	$.L.str, %edi
	movl	$.L.str.1, %esi
.LBB5_2:
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$3, %edi
	callq	ukplat_terminate
.Lfunc_end5:
	.size	uknetdev_poll, .Lfunc_end5-uknetdev_poll
                                        # -- End function
	.globl	___poll_netif           # -- Begin function ___poll_netif
	.p2align	4, 0x90
	.type	___poll_netif,@function
___poll_netif:                          # @___poll_netif
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	movq	%rdi, %rbx
	movl	$_intrstack_start, %r14d
	movl	$_end, %r12d
	jmp	.LBB6_1
	.p2align	4, 0x90
.LBB6_9:                                #   in Loop: Header=BB6_1 Depth=1
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
.Ltmp8:
	movq	$1073741820, %rax       # imm = 0x3FFFFFFC
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741820, %rax       # imm = 0x3FFFFFFC
	jne	.Ltmp8
	movq	%r15, %rsp
	shlq	$4, %rsp
	addq	$tsb_comp0, %rsp
	movq	%rsp, %rbp
	movq	(%rsp), %rsp
	addq	$8, %rbp
	movq	(%rbp), %rbp
	andq	$-16, %rsp
	callq	uk_sched_yield
.Ltmp9:
	movq	$1073741811, %rax       # imm = 0x3FFFFFF3
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741811, %rax       # imm = 0x3FFFFFF3
	jne	.Ltmp9
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
.LBB6_1:                                # =>This Inner Loop Header: Depth=1
	movq	%rbx, %rdi
	callq	uknetdev_poll
	#APP
	movq	%rsp, %rax
	#NO_APP
	cmpq	%r14, %rax
	jb	.LBB6_9
# %bb.2:                                #   in Loop: Header=BB6_1 Depth=1
	#APP
	movq	%rsp, %rax
	#NO_APP
	cmpq	%r12, %rax
	ja	.LBB6_9
# %bb.3:                                #   in Loop: Header=BB6_1 Depth=1
	#APP
	movq	%rsp, %rax
	#NO_APP
	andq	$-65536, %rax           # imm = 0xFFFF0000
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.LBB6_4
# %bb.6:                                #   in Loop: Header=BB6_1 Depth=1
	movq	88(%rax), %rdi
	testq	%rdi, %rdi
	je	.LBB6_7
# %bb.8:                                #   in Loop: Header=BB6_1 Depth=1
	callq	*(%rdi)
	jmp	.LBB6_1
.LBB6_4:
	movl	$.L.str, %edi
	movl	$.L.str.24, %esi
	jmp	.LBB6_5
.LBB6_7:
	movl	$.L.str, %edi
	movl	$.L.str.25, %esi
.LBB6_5:
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$3, %edi
	callq	ukplat_terminate
.Lfunc_end6:
	.size	___poll_netif, .Lfunc_end6-___poll_netif
                                        # -- End function
	.globl	uknetdev_init           # -- Begin function uknetdev_init
	.p2align	4, 0x90
	.type	uknetdev_init,@function
uknetdev_init:                          # @uknetdev_init
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$104, %rsp
	testq	%rdi, %rdi
	je	.LBB7_1
# %bb.3:
	movq	%rdi, %rbx
	movq	232(%rdi), %rax
	movq	%rax, 65480(%rbp)
	testq	%rax, %rax
	je	.LBB7_4
# %bb.5:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$_intrstack_start, %ecx
	cmpq	%rcx, %rax
	jb	.LBB7_8
# %bb.6:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$_end, %ecx
	cmpq	%rcx, %rax
	jbe	.LBB7_7
.LBB7_8:
	#APP
	movq	%rsp, %rax
	#NO_APP
	andq	$-65536, %rax           # imm = 0xFFFF0000
	movl	4096(%rax), %r15d
	movq	65480(%rbp), %rdi
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
.Ltmp10:
	movq	$1073741820, %rax       # imm = 0x3FFFFFFC
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741820, %rax       # imm = 0x3FFFFFFC
	jne	.Ltmp10
	movq	%r15, %rsp
	shlq	$4, %rsp
	addq	$tsb_comp0, %rsp
	movq	%rsp, %rbp
	movq	(%rsp), %rsp
	addq	$8, %rbp
	movq	(%rbp), %rbp
	andq	$-16, %rsp
	callq	_retrieve_scratchpad
	movq	%rax, %rsi
.Ltmp11:
	movq	$1073741811, %rax       # imm = 0x3FFFFFF3
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741811, %rax       # imm = 0x3FFFFFF3
	jne	.Ltmp11
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
	movq	%r11, -64(%rbp)

	#NO_APP
	cmpq	$0, 184(%rbx)
	je	.LBB7_10
.LBB7_11:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$_intrstack_start, %ecx
	cmpq	%rcx, %rax
	jb	.LBB7_14
# %bb.12:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$_end, %ecx
	cmpq	%rcx, %rax
	jbe	.LBB7_13
.LBB7_14:
	#APP
	movq	%rsp, %rax
	#NO_APP
	andq	$-65536, %rax           # imm = 0xFFFF0000
	movl	4096(%rax), %r15d
	movq	65480(%rbp), %rdi
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
.Ltmp12:
	movq	$1073741820, %rax       # imm = 0x3FFFFFFC
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741820, %rax       # imm = 0x3FFFFFFC
	jne	.Ltmp12
	movq	%r15, %rsp
	shlq	$4, %rsp
	addq	$tsb_comp0, %rsp
	movq	%rsp, %rbp
	movq	(%rsp), %rsp
	addq	$8, %rbp
	movq	(%rbp), %rbp
	andq	$-16, %rsp
	callq	uk_netdev_state_get
	movq	%rax, %rsi
.Ltmp13:
	movq	$1073741811, %rax       # imm = 0x3FFFFFF3
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741811, %rax       # imm = 0x3FFFFFF3
	jne	.Ltmp13
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
	movl	%r11d, -68(%rbp)

	#NO_APP
	movl	-68(%rbp), %eax
	jmp	.LBB7_15
.LBB7_7:
	movq	65480(%rbp), %rax
	movq	72(%rax), %rax
	movq	%rax, -64(%rbp)
	cmpq	$0, 184(%rbx)
	jne	.LBB7_11
.LBB7_10:
	movl	$.L.str.10, %edi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$.L.str, %edi
	movl	$.L.str.11, %esi
	jmp	.LBB7_2
.LBB7_13:
	movq	65480(%rbp), %rdi
	callq	uk_netdev_state_get
	movl	%eax, -68(%rbp)
.LBB7_15:
	movb	$-10, %r14b
	cmpl	$1, %eax
	jne	.LBB7_62
# %bb.16:
	movw	$28261, 262(%rbx)       # imm = 0x6E65
	movq	flexos_shared_alloc(%rip), %r12
	testq	%r12, %r12
	je	.LBB7_17
# %bb.18:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$_intrstack_start, %ecx
	cmpq	%rcx, %rax
	jb	.LBB7_21
# %bb.19:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$_end, %ecx
	cmpq	%rcx, %rax
	jbe	.LBB7_20
.LBB7_21:
	#APP
	movq	%rsp, %rax
	#NO_APP
	andq	$-65536, %rax           # imm = 0xFFFF0000
	movl	4096(%rax), %r15d
	movq	65480(%rbp), %rdi
	movq	-64(%rbp), %rsi
	addq	$8, %rsi
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
.Ltmp14:
	movq	$1073741820, %rax       # imm = 0x3FFFFFFC
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741820, %rax       # imm = 0x3FFFFFFC
	jne	.Ltmp14
	movq	%r15, %rsp
	shlq	$4, %rsp
	addq	$tsb_comp0, %rsp
	movq	%rsp, %rbp
	movq	(%rsp), %rsp
	addq	$8, %rbp
	movq	(%rbp), %rbp
	andq	$-16, %rsp
	callq	uk_netdev_info_get
.Ltmp15:
	movq	$1073741811, %rax       # imm = 0x3FFFFFF3
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741811, %rax       # imm = 0x3FFFFFF3
	jne	.Ltmp15
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
	jmp	.LBB7_22
.LBB7_17:
	movb	$-1, %r14b
	jmp	.LBB7_62
.LBB7_20:
	movq	65480(%rbp), %rdi
	movq	-64(%rbp), %rsi
	addq	$8, %rsi
	callq	uk_netdev_info_get
.LBB7_22:
	movq	-64(%rbp), %rax
	movb	$-12, %r14b
	cmpw	$0, 8(%rax)
	je	.LBB7_62
# %bb.23:
	cmpw	$0, 10(%rax)
	je	.LBB7_62
# %bb.24:
	leaq	65464(%rbp), %rsi
	movq	%r12, (%rax)
	movl	$65537, 65464(%rbp)     # imm = 0x10001
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$_intrstack_start, %ecx
	cmpq	%rcx, %rax
	jb	.LBB7_27
# %bb.25:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$_end, %ecx
	cmpq	%rcx, %rax
	jbe	.LBB7_26
.LBB7_27:
	#APP
	movq	%rsp, %rax
	#NO_APP
	andq	$-65536, %rax           # imm = 0xFFFF0000
	movl	4096(%rax), %r15d
	movq	65480(%rbp), %rdi
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
.Ltmp16:
	movq	$1073741820, %rax       # imm = 0x3FFFFFFC
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741820, %rax       # imm = 0x3FFFFFFC
	jne	.Ltmp16
	movq	%r15, %rsp
	shlq	$4, %rsp
	addq	$tsb_comp0, %rsp
	movq	%rsp, %rbp
	movq	(%rsp), %rsp
	addq	$8, %rbp
	movq	(%rbp), %rbp
	andq	$-16, %rsp
	callq	uk_netdev_configure
	movq	%rax, %rsi
.Ltmp17:
	movq	$1073741811, %rax       # imm = 0x3FFFFFF3
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741811, %rax       # imm = 0x3FFFFFF3
	jne	.Ltmp17
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
	movl	%r11d, -44(%rbp)

	#NO_APP
	movl	-44(%rbp), %eax
	testl	%eax, %eax
	jns	.LBB7_29
	jmp	.LBB7_62
.LBB7_26:
	movq	65480(%rbp), %rdi
	callq	uk_netdev_configure
	movl	%eax, -44(%rbp)
	testl	%eax, %eax
	js	.LBB7_62
.LBB7_29:
	movq	%r12, 65416(%rbp)
	movq	$netif_alloc_rxpkts, 65424(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, 65432(%rbp)
	movq	$uknetdev_input, 65400(%rbp)
	movq	%rbx, 65408(%rbp)
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$_intrstack_start, %ecx
	cmpq	%rcx, %rax
	jb	.LBB7_32
# %bb.30:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$_end, %ecx
	cmpq	%rcx, %rax
	jbe	.LBB7_31
.LBB7_32:
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
.Ltmp18:
	movq	$1073741820, %rax       # imm = 0x3FFFFFFC
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741820, %rax       # imm = 0x3FFFFFFC
	jne	.Ltmp18
	movq	%r15, %rsp
	shlq	$4, %rsp
	addq	$tsb_comp0, %rsp
	movq	%rsp, %rbp
	movq	(%rsp), %rsp
	addq	$8, %rbp
	movq	(%rbp), %rbp
	andq	$-16, %rsp
	callq	uk_sched_get_default
	movq	%rax, %rsi
.Ltmp19:
	movq	$1073741811, %rax       # imm = 0x3FFFFFF3
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741811, %rax       # imm = 0x3FFFFFF3
	jne	.Ltmp19
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
	movq	%r11, 65440(%rbp)

	#NO_APP
	movq	65440(%rbp), %rax
	testq	%rax, %rax
	jne	.LBB7_34
	jmp	.LBB7_62
.LBB7_31:
	callq	uk_sched_get_default
	movq	%rax, 65440(%rbp)
	testq	%rax, %rax
	je	.LBB7_62
.LBB7_34:
	leaq	65400(%rbp), %r13
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$_intrstack_start, %ecx
	cmpq	%rcx, %rax
	jb	.LBB7_37
# %bb.35:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$_end, %ecx
	cmpq	%rcx, %rax
	jbe	.LBB7_36
.LBB7_37:
	#APP
	movq	%rsp, %rax
	#NO_APP
	andq	$-65536, %rax           # imm = 0xFFFF0000
	movl	4096(%rax), %r15d
	movq	65480(%rbp), %rdi
	xorl	%esi, %esi
	movq	%r12, %r8
	xorl	%r12d, %r12d
	#APP
	pushq	%rsi
	pushq	%rdi
	pushq	%r8
	pushq	%r9
	pushq	%r10
	pushq	%r11
	pushq	%r12
	pushq	%r13
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
.Ltmp20:
	movq	$1073741820, %rax       # imm = 0x3FFFFFFC
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741820, %rax       # imm = 0x3FFFFFFC
	jne	.Ltmp20
	movq	%r12, %rdx
	movq	%r13, %rcx
	movq	%r15, %rsp
	shlq	$4, %rsp
	addq	$tsb_comp0, %rsp
	movq	%rsp, %rbp
	movq	(%rsp), %rsp
	addq	$8, %rbp
	movq	(%rbp), %rbp
	andq	$-16, %rsp
	callq	uk_netdev_rxq_configure
	movq	%rax, %rsi
.Ltmp21:
	movq	$1073741811, %rax       # imm = 0x3FFFFFF3
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741811, %rax       # imm = 0x3FFFFFF3
	jne	.Ltmp21
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
	popq	%r13
	popq	%r12
	popq	%r11
	popq	%r10
	popq	%r9
	movq	%rsi, %r11
	popq	%r8
	popq	%rdi
	popq	%rsi

	#NO_APP
	movq	%r8, %r12
	#APP
	movl	%r11d, -44(%rbp)

	#NO_APP
	movl	-44(%rbp), %eax
	testl	%eax, %eax
	jns	.LBB7_39
	jmp	.LBB7_62
.LBB7_36:
	movq	65480(%rbp), %rdi
	xorl	%esi, %esi
	xorl	%edx, %edx
	movq	%r13, %rcx
	callq	uk_netdev_rxq_configure
	movl	%eax, -44(%rbp)
	testl	%eax, %eax
	js	.LBB7_62
.LBB7_39:
	leaq	65448(%rbp), %r13
	movq	%r12, 65448(%rbp)
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$_intrstack_start, %ecx
	cmpq	%rcx, %rax
	jb	.LBB7_42
# %bb.40:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$_end, %ecx
	cmpq	%rcx, %rax
	jbe	.LBB7_41
.LBB7_42:
	#APP
	movq	%rsp, %rax
	#NO_APP
	andq	$-65536, %rax           # imm = 0xFFFF0000
	movl	4096(%rax), %r15d
	movq	65480(%rbp), %rdi
	xorl	%esi, %esi
	xorl	%r12d, %r12d
	#APP
	pushq	%rsi
	pushq	%rdi
	pushq	%r8
	pushq	%r9
	pushq	%r10
	pushq	%r11
	pushq	%r12
	pushq	%r13
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
.Ltmp22:
	movq	$1073741820, %rax       # imm = 0x3FFFFFFC
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741820, %rax       # imm = 0x3FFFFFFC
	jne	.Ltmp22
	movq	%r12, %rdx
	movq	%r13, %rcx
	movq	%r15, %rsp
	shlq	$4, %rsp
	addq	$tsb_comp0, %rsp
	movq	%rsp, %rbp
	movq	(%rsp), %rsp
	addq	$8, %rbp
	movq	(%rbp), %rbp
	andq	$-16, %rsp
	callq	uk_netdev_txq_configure
	movq	%rax, %rsi
.Ltmp23:
	movq	$1073741811, %rax       # imm = 0x3FFFFFF3
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741811, %rax       # imm = 0x3FFFFFF3
	jne	.Ltmp23
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
	popq	%r13
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
	movl	%r11d, -44(%rbp)

	#NO_APP
	movl	-44(%rbp), %eax
	testl	%eax, %eax
	jns	.LBB7_44
	jmp	.LBB7_62
.LBB7_41:
	movq	65480(%rbp), %rdi
	xorl	%esi, %esi
	xorl	%edx, %edx
	movq	%r13, %rcx
	callq	uk_netdev_txq_configure
	movl	%eax, -44(%rbp)
	testl	%eax, %eax
	js	.LBB7_62
.LBB7_44:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$_intrstack_start, %ecx
	cmpq	%rcx, %rax
	jb	.LBB7_47
# %bb.45:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$_end, %ecx
	cmpq	%rcx, %rax
	jbe	.LBB7_46
.LBB7_47:
	#APP
	movq	%rsp, %rax
	#NO_APP
	andq	$-65536, %rax           # imm = 0xFFFF0000
	movl	4096(%rax), %r15d
	movq	65480(%rbp), %rdi
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
.Ltmp24:
	movq	$1073741820, %rax       # imm = 0x3FFFFFFC
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741820, %rax       # imm = 0x3FFFFFFC
	jne	.Ltmp24
	movq	%r15, %rsp
	shlq	$4, %rsp
	addq	$tsb_comp0, %rsp
	movq	%rsp, %rbp
	movq	(%rsp), %rsp
	addq	$8, %rbp
	movq	(%rbp), %rbp
	andq	$-16, %rsp
	callq	uk_netdev_start
	movq	%rax, %rsi
.Ltmp25:
	movq	$1073741811, %rax       # imm = 0x3FFFFFF3
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741811, %rax       # imm = 0x3FFFFFF3
	jne	.Ltmp25
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
	movl	%r11d, -44(%rbp)

	#NO_APP
	movl	-44(%rbp), %eax
	jmp	.LBB7_48
.LBB7_46:
	movq	65480(%rbp), %rdi
	callq	uk_netdev_start
	movl	%eax, -44(%rbp)
.LBB7_48:
	testl	%eax, %eax
	js	.LBB7_62
# %bb.49:
	movq	$etharp_output, 192(%rbx)
	movq	$ethip6_output, 208(%rbx)
	movq	$uknetdev_output, 200(%rbx)
	orb	$14, 261(%rbx)
	movw	$31, 248(%rbx)
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$_intrstack_start, %ecx
	cmpq	%rcx, %rax
	jb	.LBB7_52
# %bb.50:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$_end, %ecx
	cmpq	%rcx, %rax
	jbe	.LBB7_51
.LBB7_52:
	#APP
	movq	%rsp, %rax
	#NO_APP
	andq	$-65536, %rax           # imm = 0xFFFF0000
	movl	4096(%rax), %r15d
	movq	65480(%rbp), %rdi
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
.Ltmp26:
	movq	$1073741820, %rax       # imm = 0x3FFFFFFC
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741820, %rax       # imm = 0x3FFFFFFC
	jne	.Ltmp26
	movq	%r15, %rsp
	shlq	$4, %rsp
	addq	$tsb_comp0, %rsp
	movq	%rsp, %rbp
	movq	(%rsp), %rsp
	addq	$8, %rbp
	movq	(%rbp), %rbp
	andq	$-16, %rsp
	callq	uk_netdev_hwaddr_get
	movq	%rax, %rsi
.Ltmp27:
	movq	$1073741811, %rax       # imm = 0x3FFFFFF3
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741811, %rax       # imm = 0x3FFFFFF3
	jne	.Ltmp27
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
	movq	%r11, -80(%rbp)

	#NO_APP
	movq	-80(%rbp), %rax
	jmp	.LBB7_53
.LBB7_51:
	movq	65480(%rbp), %rdi
	callq	uk_netdev_hwaddr_get
	movq	%rax, -80(%rbp)
.LBB7_53:
	testq	%rax, %rax
	je	.LBB7_54
# %bb.55:
	movb	$6, 260(%rbx)
	movb	(%rax), %cl
	movb	%cl, 254(%rbx)
	movb	1(%rax), %cl
	movb	%cl, 255(%rbx)
	movb	2(%rax), %cl
	movb	%cl, 256(%rbx)
	movb	3(%rax), %cl
	movb	%cl, 257(%rbx)
	movb	4(%rax), %cl
	movb	%cl, 258(%rbx)
	movb	5(%rax), %al
	movb	%al, 259(%rbx)
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$_intrstack_start, %ecx
	cmpq	%rcx, %rax
	jb	.LBB7_58
# %bb.56:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$_end, %ecx
	cmpq	%rcx, %rax
	jbe	.LBB7_57
.LBB7_58:
	#APP
	movq	%rsp, %rax
	#NO_APP
	andq	$-65536, %rax           # imm = 0xFFFF0000
	movl	4096(%rax), %r15d
	movq	65480(%rbp), %rdi
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
.Ltmp28:
	movq	$1073741820, %rax       # imm = 0x3FFFFFFC
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741820, %rax       # imm = 0x3FFFFFFC
	jne	.Ltmp28
	movq	%r15, %rsp
	shlq	$4, %rsp
	addq	$tsb_comp0, %rsp
	movq	%rsp, %rbp
	movq	(%rsp), %rsp
	addq	$8, %rbp
	movq	(%rbp), %rbp
	andq	$-16, %rsp
	callq	uk_netdev_mtu_get
	movq	%rax, %rsi
.Ltmp29:
	movq	$1073741811, %rax       # imm = 0x3FFFFFF3
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741811, %rax       # imm = 0x3FFFFFF3
	jne	.Ltmp29
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
	movw	%r11w, 250(%rbx)

	#NO_APP
	movzwl	250(%rbx), %eax
	jmp	.LBB7_59
.LBB7_57:
	movq	65480(%rbp), %rdi
	callq	uk_netdev_mtu_get
	movw	%ax, 250(%rbx)
.LBB7_59:
	testw	%ax, %ax
	je	.LBB7_60
# %bb.61:
	movl	$uknetdev_updown, %esi
	movq	%rbx, %rdi
	callq	netif_set_status_callback
	xorl	%r14d, %r14d
.LBB7_62:
	movl	%r14d, %eax
	addq	$104, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB7_1:
	movl	$.L.str, %edi
	movl	$.L.str.2, %esi
	jmp	.LBB7_2
.LBB7_4:
	movl	$.L.str, %edi
	movl	$.L.str.9, %esi
.LBB7_2:
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$3, %edi
	callq	ukplat_terminate
.LBB7_54:
	movl	$.L.str, %edi
	movl	$.L.str.12, %esi
	jmp	.LBB7_2
.LBB7_60:
	movl	$.L.str, %edi
	movl	$.L.str.13, %esi
	jmp	.LBB7_2
.Lfunc_end7:
	.size	uknetdev_init, .Lfunc_end7-uknetdev_init
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function _retrieve_scratchpad
	.type	_retrieve_scratchpad,@function
_retrieve_scratchpad:                   # @_retrieve_scratchpad
# %bb.0:
	movq	72(%rdi), %rax
	retq
.Lfunc_end8:
	.size	_retrieve_scratchpad, .Lfunc_end8-_retrieve_scratchpad
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function netif_alloc_rxpkts
	.type	netif_alloc_rxpkts,@function
netif_alloc_rxpkts:                     # @netif_alloc_rxpkts
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	testq	%rdi, %rdi
	je	.LBB9_3
# %bb.1:
	testw	%dx, %dx
	je	.LBB9_2
# %bb.4:
	movq	%rsi, %r14
	movq	%rdi, %r15
	movzwl	%dx, %r12d
	xorl	%ebx, %ebx
	.p2align	4, 0x90
.LBB9_5:                                # =>This Inner Loop Header: Depth=1
	movq	(%r15), %rdi
	movzwl	22(%r15), %edx
	movzwl	20(%r15), %ecx
	movl	$2048, %esi             # imm = 0x800
	callq	lwip_alloc_netbuf
	movq	%rax, (%r14,%rbx,8)
	testq	%rax, %rax
	je	.LBB9_7
# %bb.6:                                #   in Loop: Header=BB9_5 Depth=1
	addq	$1, %rbx
	cmpq	%r12, %rbx
	jb	.LBB9_5
	jmp	.LBB9_7
.LBB9_2:
	xorl	%ebx, %ebx
.LBB9_7:
	movl	%ebx, %eax
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB9_3:
	movl	$.L.str, %edi
	movl	$.L.str.27, %esi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$3, %edi
	callq	ukplat_terminate
.Lfunc_end9:
	.size	netif_alloc_rxpkts, .Lfunc_end9-netif_alloc_rxpkts
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function uknetdev_input
	.type	uknetdev_input,@function
uknetdev_input:                         # @uknetdev_input
# %bb.0:
	pushq	%r15
	pushq	%r12
	movq	%rdx, %r12
	movl	$1073741820, %r8d       # imm = 0x3FFFFFFC
	#APP
	movl	%r8d, %eax
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	wrpkru
	lfence
	#NO_APP
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$_intrstack_start, %ecx
	cmpq	%rcx, %rax
	jb	.LBB10_2
# %bb.1:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$_end, %ecx
	cmpq	%rcx, %rax
	jbe	.LBB10_3
.LBB10_2:
	#APP
	movq	%rsp, %rax
	#NO_APP
	andq	$-65536, %rax           # imm = 0xFFFF0000
	movl	4096(%rax), %r15d
	movzwl	%si, %esi
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
	addq	$tsb_comp0, %r11
	pushq	(%r11)
	addq	$8, %r11
	pushq	(%r11)
	movq	%r15, %r11
	shlq	$4, %r11
	addq	$tsb_comp0, %r11
	leaq	(%r11), %rcx
	movq	%rsp, (%r11)
	movq	%rbp, 8(%rcx)
.Ltmp30:
	movq	$1073741811, %rax       # imm = 0x3FFFFFF3
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741811, %rax       # imm = 0x3FFFFFF3
	jne	.Ltmp30
	movq	%r12, %rdx
	movq	%r15, %rsp
	shlq	$4, %rsp
	addq	$tsb_comp1, %rsp
	movq	%rsp, %rbp
	movq	(%rsp), %rsp
	addq	$8, %rbp
	movq	(%rbp), %rbp
	andq	$-16, %rsp
	callq	__uknetdev_input
.Ltmp31:
	movq	$1073741820, %rax       # imm = 0x3FFFFFFC
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741820, %rax       # imm = 0x3FFFFFFC
	jne	.Ltmp31
	movq	%r15, %rsp
	shlq	$4, %rsp
	addq	$tsb_comp0, %rsp
	movq	%rsp, %rbp
	movq	(%rsp), %rsp
	addq	$8, %rbp
	movq	(%rbp), %rbp
	movq	%r15, %r12
	shlq	$4, %r12
	addq	$tsb_comp0, %r12
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
	popq	%r12
	popq	%r15
	retq
.LBB10_3:
	xorl	%esi, %esi
	movq	%r12, %rdx
	popq	%r12
	popq	%r15
	jmp	__uknetdev_input        # TAILCALL
.Lfunc_end10:
	.size	uknetdev_input, .Lfunc_end10-uknetdev_input
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function uknetdev_output
	.type	uknetdev_output,@function
uknetdev_output:                        # @uknetdev_output
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
	je	.LBB11_1
# %bb.3:
	movq	232(%rdi), %r13
	testq	%r13, %r13
	je	.LBB11_4
# %bb.5:
	movq	%rsi, %rbx
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$_intrstack_start, %ecx
	cmpq	%rcx, %rax
	jb	.LBB11_8
# %bb.6:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$_end, %ecx
	cmpq	%rcx, %rax
	jbe	.LBB11_7
.LBB11_8:
	#APP
	movq	%rsp, %rax
	#NO_APP
	andq	$-65536, %rax           # imm = 0xFFFF0000
	movl	4096(%rax), %r15d
	movq	%r13, %rdi
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
.Ltmp32:
	movq	$1073741820, %rax       # imm = 0x3FFFFFFC
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741820, %rax       # imm = 0x3FFFFFFC
	jne	.Ltmp32
	movq	%r15, %rsp
	shlq	$4, %rsp
	addq	$tsb_comp0, %rsp
	movq	%rsp, %rbp
	movq	(%rsp), %rsp
	addq	$8, %rbp
	movq	(%rbp), %rbp
	andq	$-16, %rsp
	callq	_retrieve_scratchpad
	movq	%rax, %rsi
.Ltmp33:
	movq	$1073741811, %rax       # imm = 0x3FFFFFF3
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741811, %rax       # imm = 0x3FFFFFF3
	jne	.Ltmp33
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
	movq	%r11, -56(%rbp)

	#NO_APP
	movq	-56(%rbp), %rax
	testq	%rax, %rax
	je	.LBB11_10
.LBB11_11:
	movq	(%rax), %rdi
	movzwl	22(%rax), %edx
	movzwl	18(%rax), %ecx
	movl	$2048, %esi             # imm = 0x800
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	callq	uk_netbuf_alloc_buf
	movb	$-1, %r15b
	testq	%rax, %rax
	je	.LBB11_34
# %bb.12:
	movq	%rax, %r12
	movq	40(%rax), %rax
	testq	%rax, %rax
	je	.LBB11_13
# %bb.14:
	movq	16(%r12), %r14
	testq	%r14, %r14
	je	.LBB11_15
# %bb.16:
	movzwl	16(%rbx), %ecx
	movzwl	24(%r12), %edx
	subq	%r14, %rax
	addq	48(%r12), %rax
	subq	%rdx, %rax
	cmpq	%rcx, %rax
	jb	.LBB11_35
# %bb.17:
	movq	%rbx, %r15
	.p2align	4, 0x90
.LBB11_18:                              # =>This Inner Loop Header: Depth=1
	movq	8(%rbx), %rsi
	movzwl	18(%rbx), %edx
	movq	%r14, %rdi
	callq	memcpy
	movzwl	18(%rbx), %eax
	addq	%rax, %r14
	movq	(%rbx), %rbx
	testq	%rbx, %rbx
	jne	.LBB11_18
# %bb.19:
	movzwl	16(%r15), %eax
	movw	%ax, 24(%r12)
	movl	$_intrstack_start, %ebx
	movl	$_end, %r14d
	jmp	.LBB11_20
	.p2align	4, 0x90
.LBB11_29:                              #   in Loop: Header=BB11_20 Depth=1
	#APP
	movq	%rsp, %rax
	#NO_APP
	andq	$-65536, %rax           # imm = 0xFFFF0000
	movl	4096(%rax), %r15d
	movq	%r13, %rdi
	xorl	%esi, %esi
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
.Ltmp34:
	movq	$1073741820, %rax       # imm = 0x3FFFFFFC
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741820, %rax       # imm = 0x3FFFFFFC
	jne	.Ltmp34
	movq	%r12, %rdx
	movq	%r15, %rsp
	shlq	$4, %rsp
	addq	$tsb_comp0, %rsp
	movq	%rsp, %rbp
	movq	(%rsp), %rsp
	addq	$8, %rbp
	movq	(%rbp), %rbp
	andq	$-16, %rsp
	callq	uk_netdev_tx_one
	movq	%rax, %rsi
.Ltmp35:
	movq	$1073741811, %rax       # imm = 0x3FFFFFF3
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741811, %rax       # imm = 0x3FFFFFF3
	jne	.Ltmp35
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
	movl	%r11d, -44(%rbp)

	#NO_APP
	movl	-44(%rbp), %eax
	testl	$-2147483647, %eax      # imm = 0x80000001
	jne	.LBB11_31
.LBB11_20:                              # =>This Inner Loop Header: Depth=1
	#APP
	movq	%rsp, %rax
	#NO_APP
	cmpq	%rbx, %rax
	jb	.LBB11_29
# %bb.21:                               #   in Loop: Header=BB11_20 Depth=1
	#APP
	movq	%rsp, %rax
	#NO_APP
	cmpq	%r14, %rax
	ja	.LBB11_29
# %bb.22:                               #   in Loop: Header=BB11_20 Depth=1
	movq	(%r13), %rax
	testq	%rax, %rax
	je	.LBB11_23
# %bb.24:                               #   in Loop: Header=BB11_20 Depth=1
	movq	16(%r13), %rcx
	cmpl	$3, (%rcx)
	jne	.LBB11_25
# %bb.26:                               #   in Loop: Header=BB11_20 Depth=1
	movq	40(%r13), %rsi
	leaq	512(%rsi), %rcx
	cmpq	$512, %rcx              # imm = 0x200
	jbe	.LBB11_27
# %bb.28:                               #   in Loop: Header=BB11_20 Depth=1
	movq	%r13, %rdi
	movq	%r12, %rdx
	callq	*%rax
	movl	%eax, -44(%rbp)
	testl	$-2147483647, %eax      # imm = 0x80000001
	je	.LBB11_20
.LBB11_31:
	testl	%eax, %eax
	js	.LBB11_33
# %bb.32:
	xorl	%r15d, %r15d
.LBB11_34:
	movl	%r15d, %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB11_7:
	movq	72(%r13), %rax
	movq	%rax, -56(%rbp)
	testq	%rax, %rax
	jne	.LBB11_11
.LBB11_10:
	movl	$.L.str, %edi
	movl	$.L.str.28, %esi
	jmp	.LBB11_2
.LBB11_35:
	movq	%r12, %rdi
	callq	uk_netbuf_free_single
	jmp	.LBB11_34
.LBB11_33:
	movq	%r12, %rdi
	callq	uk_netbuf_free_single
	movb	$-12, %r15b
	jmp	.LBB11_34
.LBB11_23:
	movl	$.L.str, %edi
	movl	$.L.str.31, %esi
	jmp	.LBB11_2
.LBB11_25:
	movl	$.L.str, %edi
	movl	$.L.str.17, %esi
	jmp	.LBB11_2
.LBB11_27:
	movl	$.L.str, %edi
	movl	$.L.str.32, %esi
.LBB11_2:
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$3, %edi
	callq	ukplat_terminate
.LBB11_1:
	movl	$.L.str, %edi
	movl	$.L.str.2, %esi
	jmp	.LBB11_2
.LBB11_4:
	movl	$.L.str, %edi
	movl	$.L.str.1, %esi
	jmp	.LBB11_2
.LBB11_13:
	movl	$.L.str, %edi
	movl	$.L.str.29, %esi
	jmp	.LBB11_2
.LBB11_15:
	movl	$.L.str, %edi
	movl	$.L.str.30, %esi
	jmp	.LBB11_2
.Lfunc_end11:
	.size	uknetdev_output, .Lfunc_end11-uknetdev_output
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function uknetdev_updown
	.type	uknetdev_updown,@function
uknetdev_updown:                        # @uknetdev_updown
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$16, %rsp
	testq	%rdi, %rdi
	je	.LBB12_1
# %bb.3:
	movq	%rdi, %rbx
	movq	232(%rdi), %rdi
	testq	%rdi, %rdi
	je	.LBB12_4
# %bb.5:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$_intrstack_start, %ecx
	cmpq	%rcx, %rax
	jb	.LBB12_8
# %bb.6:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$_end, %ecx
	cmpq	%rcx, %rax
	jbe	.LBB12_7
.LBB12_8:
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
.Ltmp36:
	movq	$1073741820, %rax       # imm = 0x3FFFFFFC
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741820, %rax       # imm = 0x3FFFFFFC
	jne	.Ltmp36
	movq	%r15, %rsp
	shlq	$4, %rsp
	addq	$tsb_comp0, %rsp
	movq	%rsp, %rbp
	movq	(%rsp), %rsp
	addq	$8, %rbp
	movq	(%rbp), %rbp
	andq	$-16, %rsp
	callq	_retrieve_scratchpad
	movq	%rax, %rsi
.Ltmp37:
	movq	$1073741811, %rax       # imm = 0x3FFFFFF3
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741811, %rax       # imm = 0x3FFFFFF3
	jne	.Ltmp37
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
	movq	%r11, -40(%rbp)

	#NO_APP
	movq	-40(%rbp), %rax
	jmp	.LBB12_9
.LBB12_7:
	movq	72(%rdi), %rax
	movq	%rax, -40(%rbp)
.LBB12_9:
	testb	$1, 261(%rbx)
	movl	24(%rax), %eax
	jne	.LBB12_10
# %bb.27:
	testb	$1, %al
	je	.LBB12_38
# %bb.28:
	movq	24(%rdi), %rax
	testq	%rax, %rax
	je	.LBB12_29
# %bb.30:
	movq	16(%rdi), %rcx
	testq	%rcx, %rcx
	je	.LBB12_31
# %bb.32:
	cmpl	$3, (%rcx)
	jne	.LBB12_33
# %bb.34:
	movq	32(%rdi), %rsi
	leaq	512(%rsi), %rcx
	cmpq	$512, %rcx              # imm = 0x200
	jbe	.LBB12_35
# %bb.36:
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.LBB12_38
# %bb.37:
	callq	*%rax
	jmp	.LBB12_38
.LBB12_10:
	#APP
	movq	%rsp, %rcx
	#NO_APP
	testb	$1, %al
	je	.LBB12_17
# %bb.11:
	movl	$_intrstack_start, %eax
	cmpq	%rax, %rcx
	jb	.LBB12_14
# %bb.12:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$_end, %ecx
	cmpq	%rcx, %rax
	jbe	.LBB12_13
.LBB12_14:
	#APP
	movq	%rsp, %rax
	#NO_APP
	andq	$-65536, %rax           # imm = 0xFFFF0000
	movl	4096(%rax), %r15d
	xorl	%esi, %esi
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
.Ltmp38:
	movq	$1073741820, %rax       # imm = 0x3FFFFFFC
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741820, %rax       # imm = 0x3FFFFFFC
	jne	.Ltmp38
	movq	%r15, %rsp
	shlq	$4, %rsp
	addq	$tsb_comp0, %rsp
	movq	%rsp, %rbp
	movq	(%rsp), %rsp
	addq	$8, %rbp
	movq	(%rbp), %rbp
	andq	$-16, %rsp
	callq	uk_netdev_rxq_intr_enable
	movq	%rax, %rsi
.Ltmp39:
	movq	$1073741811, %rax       # imm = 0x3FFFFFF3
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741811, %rax       # imm = 0x3FFFFFF3
	jne	.Ltmp39
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
	movl	%r11d, -44(%rbp)

	#NO_APP
	movl	-44(%rbp), %eax
	cmpl	$1, %eax
	je	.LBB12_16
	jmp	.LBB12_38
.LBB12_17:
	movl	$_intrstack_start, %eax
	cmpq	%rax, %rcx
	jb	.LBB12_20
# %bb.18:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$_end, %ecx
	cmpq	%rcx, %rax
	jbe	.LBB12_19
.LBB12_20:
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
.Ltmp40:
	movq	$1073741820, %rax       # imm = 0x3FFFFFFC
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741820, %rax       # imm = 0x3FFFFFFC
	jne	.Ltmp40
	movq	%r15, %rsp
	shlq	$4, %rsp
	addq	$tsb_comp0, %rsp
	movq	%rsp, %rbp
	movq	(%rsp), %rsp
	addq	$8, %rbp
	movq	(%rbp), %rbp
	andq	$-16, %rsp
	callq	uk_sched_get_default
	movq	%rax, %rsi
.Ltmp41:
	movq	$1073741811, %rax       # imm = 0x3FFFFFF3
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741811, %rax       # imm = 0x3FFFFFF3
	jne	.Ltmp41
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
	movq	-40(%rbp), %rax
	#APP
	movq	%r11, 48(%rax)

	#NO_APP
	movq	-40(%rbp), %rax
	movq	48(%rax), %rax
	testq	%rax, %rax
	je	.LBB12_22
.LBB12_23:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$_intrstack_start, %ecx
	cmpq	%rcx, %rax
	jb	.LBB12_26
# %bb.24:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$_end, %ecx
	cmpq	%rcx, %rax
	jbe	.LBB12_25
.LBB12_26:
	#APP
	movq	%rsp, %rax
	#NO_APP
	andq	$-65536, %rax           # imm = 0xFFFF0000
	movl	4096(%rax), %r15d
	movq	-40(%rbp), %rax
	movq	48(%rax), %rdi
	movl	$_poll_netif, %r13d
	xorl	%esi, %esi
	xorl	%r12d, %r12d
	movq	%rbx, %r8
	#APP
	pushq	%rsi
	pushq	%rdi
	pushq	%r8
	pushq	%r9
	pushq	%r10
	pushq	%r11
	pushq	%r12
	pushq	%r13
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
.Ltmp42:
	movq	$1073741820, %rax       # imm = 0x3FFFFFFC
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741820, %rax       # imm = 0x3FFFFFFC
	jne	.Ltmp42
	movq	%r12, %rdx
	movq	%r13, %rcx
	movq	%r15, %rsp
	shlq	$4, %rsp
	addq	$tsb_comp0, %rsp
	movq	%rsp, %rbp
	movq	(%rsp), %rsp
	addq	$8, %rbp
	movq	(%rbp), %rbp
	andq	$-16, %rsp
	callq	uk_sched_thread_create
	movq	%rax, %rsi
.Ltmp43:
	movq	$1073741811, %rax       # imm = 0x3FFFFFF3
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741811, %rax       # imm = 0x3FFFFFF3
	jne	.Ltmp43
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
	popq	%r13
	popq	%r12
	popq	%r11
	popq	%r10
	popq	%r9
	movq	%rsi, %r11
	popq	%r8
	popq	%rdi
	popq	%rsi

	#NO_APP
	movq	-40(%rbp), %rax
	#APP
	movq	%r11, 32(%rax)

	#NO_APP
	jmp	.LBB12_38
.LBB12_13:
	xorl	%esi, %esi
	callq	uk_netdev_rxq_intr_enable
	movl	%eax, -44(%rbp)
	cmpl	$1, %eax
	jne	.LBB12_38
.LBB12_16:
	movq	%rbx, %rdi
	callq	uknetdev_poll
	jmp	.LBB12_38
.LBB12_19:
	callq	uk_sched_get_default
	movq	-40(%rbp), %rcx
	movq	%rax, 48(%rcx)
	testq	%rax, %rax
	jne	.LBB12_23
.LBB12_22:
	movl	$.L.str, %edi
	movl	$.L.str.33, %esi
	jmp	.LBB12_2
.LBB12_25:
	movq	-40(%rbp), %rax
	movq	48(%rax), %rdi
	movl	$_poll_netif, %ecx
	xorl	%esi, %esi
	xorl	%edx, %edx
	movq	%rbx, %r8
	callq	uk_sched_thread_create
	movq	-40(%rbp), %rcx
	movq	%rax, 32(%rcx)
.LBB12_38:
	addq	$16, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r15
	popq	%rbp
	retq
.LBB12_1:
	movl	$.L.str, %edi
	movl	$.L.str.2, %esi
	jmp	.LBB12_2
.LBB12_4:
	movl	$.L.str, %edi
	movl	$.L.str.1, %esi
	jmp	.LBB12_2
.LBB12_29:
	movl	$.L.str, %edi
	movl	$.L.str.34, %esi
	jmp	.LBB12_2
.LBB12_31:
	movl	$.L.str, %edi
	movl	$.L.str.35, %esi
	jmp	.LBB12_2
.LBB12_33:
	movl	$.L.str, %edi
	movl	$.L.str.17, %esi
	jmp	.LBB12_2
.LBB12_35:
	movl	$.L.str, %edi
	movl	$.L.str.18, %esi
.LBB12_2:
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$3, %edi
	callq	ukplat_terminate
.Lfunc_end12:
	.size	uknetdev_updown, .Lfunc_end12-uknetdev_updown
                                        # -- End function
	.globl	uknetdev_addif          # -- Begin function uknetdev_addif
	.p2align	4, 0x90
	.type	uknetdev_addif,@function
uknetdev_addif:                         # @uknetdev_addif
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %r12
	movq	flexos_shared_alloc(%rip), %rdi
	testq	%rdi, %rdi
	je	.LBB13_1
# %bb.2:
	movq	%rcx, %r14
	movq	%rdx, %r15
	movq	%rsi, %r13
	movl	$1, %esi
	movl	$280, %edx              # imm = 0x118
	callq	*8(%rdi)
	testq	%rax, %rax
	je	.LBB13_6
# %bb.3:
	movq	%rax, %rbx
	#APP
	#NO_APP
	movq	uknetdev_addif.pethernet_input(%rip), %rax
	#APP
	#NO_APP
	movq	%rax, (%rsp)
	movl	$uknetdev_init, %r9d
	movq	%rbx, %rdi
	movq	%r13, %rsi
	movq	%r15, %rdx
	movq	%r14, %rcx
	movq	%r12, %r8
	callq	netif_add
	cmpq	$0, 184(%rbx)
	je	.LBB13_8
# %bb.4:
	testq	%rax, %rax
	jne	.LBB13_7
# %bb.5:
	movq	%rbx, %rdi
	callq	mem_free
.LBB13_6:
	xorl	%eax, %eax
.LBB13_7:
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB13_1:
	callq	__errno
	movl	$12, (%rax)
	jmp	.LBB13_6
.LBB13_8:
	movl	$.L.str, %edi
	movl	$.L.str.3, %esi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$3, %edi
	callq	ukplat_terminate
.Lfunc_end13:
	.size	uknetdev_addif, .Lfunc_end13-uknetdev_addif
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function uk_netdev_tx_one
	.type	uk_netdev_tx_one,@function
uk_netdev_tx_one:                       # @uk_netdev_tx_one
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	testq	%rdi, %rdi
	je	.LBB14_1
# %bb.3:
	movq	(%rdi), %rax
	testq	%rax, %rax
	je	.LBB14_4
# %bb.5:
	testw	%si, %si
	jne	.LBB14_6
# %bb.7:
	movq	16(%rdi), %rcx
	cmpl	$3, (%rcx)
	jne	.LBB14_8
# %bb.9:
	movq	40(%rdi), %rsi
	leaq	512(%rsi), %rcx
	cmpq	$512, %rcx              # imm = 0x200
	jbe	.LBB14_10
# %bb.11:
	testq	%rdx, %rdx
	je	.LBB14_12
# %bb.13:
	popq	%rbp
	jmpq	*%rax                   # TAILCALL
.LBB14_1:
	movl	$.L.str, %edi
	movl	$.L.str.1, %esi
	jmp	.LBB14_2
.LBB14_4:
	movl	$.L.str, %edi
	movl	$.L.str.31, %esi
	jmp	.LBB14_2
.LBB14_6:
	movl	$.L.str, %edi
	movl	$.L.str.16, %esi
	jmp	.LBB14_2
.LBB14_8:
	movl	$.L.str, %edi
	movl	$.L.str.17, %esi
	jmp	.LBB14_2
.LBB14_10:
	movl	$.L.str, %edi
	movl	$.L.str.32, %esi
	jmp	.LBB14_2
.LBB14_12:
	movl	$.L.str, %edi
	movl	$.L.str.19, %esi
.LBB14_2:
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$3, %edi
	callq	ukplat_terminate
.Lfunc_end14:
	.size	uk_netdev_tx_one, .Lfunc_end14-uk_netdev_tx_one
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function uk_netdev_rxq_intr_enable
	.type	uk_netdev_rxq_intr_enable,@function
uk_netdev_rxq_intr_enable:              # @uk_netdev_rxq_intr_enable
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	testq	%rdi, %rdi
	je	.LBB15_1
# %bb.3:
	movq	24(%rdi), %rax
	testq	%rax, %rax
	je	.LBB15_4
# %bb.5:
	movq	16(%rdi), %rcx
	testq	%rcx, %rcx
	je	.LBB15_6
# %bb.7:
	cmpl	$3, (%rcx)
	jne	.LBB15_8
# %bb.9:
	testw	%si, %si
	jne	.LBB15_10
# %bb.11:
	movq	32(%rdi), %rsi
	leaq	512(%rsi), %rcx
	cmpq	$512, %rcx              # imm = 0x200
	jbe	.LBB15_12
# %bb.13:
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.LBB15_14
# %bb.15:
	popq	%rbp
	jmpq	*%rax                   # TAILCALL
.LBB15_14:
	movl	$-134, %eax
	popq	%rbp
	retq
.LBB15_1:
	movl	$.L.str, %edi
	movl	$.L.str.1, %esi
	jmp	.LBB15_2
.LBB15_4:
	movl	$.L.str, %edi
	movl	$.L.str.34, %esi
	jmp	.LBB15_2
.LBB15_6:
	movl	$.L.str, %edi
	movl	$.L.str.35, %esi
	jmp	.LBB15_2
.LBB15_8:
	movl	$.L.str, %edi
	movl	$.L.str.17, %esi
	jmp	.LBB15_2
.LBB15_10:
	movl	$.L.str, %edi
	movl	$.L.str.16, %esi
	jmp	.LBB15_2
.LBB15_12:
	movl	$.L.str, %edi
	movl	$.L.str.18, %esi
.LBB15_2:
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$3, %edi
	callq	ukplat_terminate
.Lfunc_end15:
	.size	uk_netdev_rxq_intr_enable, .Lfunc_end15-uk_netdev_rxq_intr_enable
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function _poll_netif
	.type	_poll_netif,@function
_poll_netif:                            # @_poll_netif
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%rax
	movl	$1073741820, %esi       # imm = 0x3FFFFFFC
	#APP
	movl	%esi, %eax
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	wrpkru
	lfence
	#NO_APP
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$_intrstack_start, %ecx
	cmpq	%rcx, %rax
	jb	.LBB16_2
# %bb.1:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$_end, %ecx
	cmpq	%rcx, %rax
	jbe	.LBB16_3
.LBB16_2:
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
	addq	$tsb_comp0, %r11
	pushq	(%r11)
	addq	$8, %r11
	pushq	(%r11)
	movq	%r15, %r11
	shlq	$4, %r11
	addq	$tsb_comp0, %r11
	leaq	(%r11), %rcx
	movq	%rsp, (%r11)
	movq	%rbp, 8(%rcx)
.Ltmp44:
	movq	$1073741811, %rax       # imm = 0x3FFFFFF3
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741811, %rax       # imm = 0x3FFFFFF3
	jne	.Ltmp44
	movq	%r15, %rsp
	shlq	$4, %rsp
	addq	$tsb_comp1, %rsp
	movq	%rsp, %rbp
	movq	(%rsp), %rsp
	addq	$8, %rbp
	movq	(%rbp), %rbp
	andq	$-16, %rsp
	callq	___poll_netif
.Ltmp45:
	movq	$1073741820, %rax       # imm = 0x3FFFFFFC
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741820, %rax       # imm = 0x3FFFFFFC
	jne	.Ltmp45
	movq	%r15, %rsp
	shlq	$4, %rsp
	addq	$tsb_comp0, %rsp
	movq	%rsp, %rbp
	movq	(%rsp), %rsp
	addq	$8, %rbp
	movq	(%rbp), %rbp
	movq	%r15, %r12
	shlq	$4, %r12
	addq	$tsb_comp0, %r12
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
	addq	$8, %rsp
	popq	%r15
	popq	%rbp
	retq
.LBB16_3:
	callq	___poll_netif
.Lfunc_end16:
	.size	_poll_netif, .Lfunc_end16-_poll_netif
                                        # -- End function
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Assertion failure: %s\n"
	.size	.L.str, 23

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"dev"
	.size	.L.str.1, 4

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"nf"
	.size	.L.str.2, 3

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"nf->input"
	.size	.L.str.3, 10

	.type	__uknetdev_input.__str,@object # @__uknetdev_input.__str
	.section	.data_shared,"aw",@progbits
	.p2align	4
__uknetdev_input.__str:
	.asciz	"%c%c%u: Receive error %d. Stopping interface...\n"
	.size	__uknetdev_input.__str, 49

	.type	__uknetdev_input.__str.4,@object # @__uknetdev_input.__str.4
	.p2align	4
__uknetdev_input.__str.4:
	.asciz	"%c%c%u: Receive error %d. Stopping interface...\n"
	.size	__uknetdev_input.__str.4, 49

	.type	__uknetdev_input.__str.5,@object # @__uknetdev_input.__str.5
	.p2align	4
__uknetdev_input.__str.5:
	.asciz	"%c%c%u: Failed to forward packet to lwIP: %d\n"
	.size	__uknetdev_input.__str.5, 46

	.type	__uknetdev_input.__str.6,@object # @__uknetdev_input.__str.6
	.p2align	4
__uknetdev_input.__str.6:
	.asciz	"%c%c%u: Failed to forward packet to lwIP: %d\n"
	.size	__uknetdev_input.__str.6, 46

	.type	.L.str.7,@object        # @.str.7
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.7:
	.asciz	"nf->name[0] == 'e'"
	.size	.L.str.7, 19

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"nf->name[1] == 'n'"
	.size	.L.str.8, 19

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"(*_dss_dev)"
	.size	.L.str.9, 12

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"uknetdev needs an input callback (netif_input or tcpip_input)"
	.size	.L.str.10, 62

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"!(1)"
	.size	.L.str.11, 5

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"hwaddr"
	.size	.L.str.12, 7

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"nf->mtu"
	.size	.L.str.13, 8

	.type	uknetdev_addif.pethernet_input,@object # @uknetdev_addif.pethernet_input
	.data
	.p2align	3
uknetdev_addif.pethernet_input:
	.quad	tcpip_input
	.size	uknetdev_addif.pethernet_input, 8

	.type	uk_pr_crit.__str,@object # @uk_pr_crit.__str
	.section	.data_shared,"aw",@progbits
uk_pr_crit.__str:
	.asciz	"liblwip"
	.size	uk_pr_crit.__str, 8

	.type	uk_pr_crit.__str.14,@object # @uk_pr_crit.__str.14
uk_pr_crit.__str.14:
	.asciz	"uknetdev.c"
	.size	uk_pr_crit.__str.14, 11

	.type	.L.str.15,@object       # @.str.15
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.15:
	.asciz	"dev->rx_one"
	.size	.L.str.15, 12

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"queue_id < 1"
	.size	.L.str.16, 13

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"dev->_data->state == UK_NETDEV_RUNNING"
	.size	.L.str.17, 39

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"!((__sptr)(dev->_rx_queue[queue_id]) <= 0 && (__sptr)(dev->_rx_queue[queue_id]) >= -(__sptr)((512)))"
	.size	.L.str.18, 101

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"pkt"
	.size	.L.str.19, 4

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"b"
	.size	.L.str.20, 2

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"np"
	.size	.L.str.21, 3

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"np->pbuf_custom.pbuf.flags & 0x02U"
	.size	.L.str.22, 35

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"current"
	.size	.L.str.24, 8

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"s"
	.size	.L.str.25, 2

	.type	uk_pr_err.__str,@object # @uk_pr_err.__str
	.section	.data_shared,"aw",@progbits
uk_pr_err.__str:
	.asciz	"liblwip"
	.size	uk_pr_err.__str, 8

	.type	uk_pr_err.__str.26,@object # @uk_pr_err.__str.26
uk_pr_err.__str.26:
	.asciz	"uknetdev.c"
	.size	uk_pr_err.__str.26, 11

	.type	.L.str.27,@object       # @.str.27
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.27:
	.asciz	"argp"
	.size	.L.str.27, 5

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"lwip_data"
	.size	.L.str.28, 10

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"m->buf"
	.size	.L.str.29, 7

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"m->data"
	.size	.L.str.30, 8

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"dev->tx_one"
	.size	.L.str.31, 12

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"!((__sptr)(dev->_tx_queue[queue_id]) <= 0 && (__sptr)(dev->_tx_queue[queue_id]) >= -(__sptr)((512)))"
	.size	.L.str.32, 101

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"lwip_data->sched"
	.size	.L.str.33, 17

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"dev->ops"
	.size	.L.str.34, 9

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"dev->_data"
	.size	.L.str.35, 11

	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
