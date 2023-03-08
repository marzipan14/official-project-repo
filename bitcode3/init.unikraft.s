	.text
	.file	"init.c"
	.globl	sys_init                # -- Begin function sys_init
	.p2align	4, 0x90
	.type	sys_init,@function
sys_init:                               # @sys_init
# %bb.0:
	retq
.Lfunc_end0:
	.size	sys_init, .Lfunc_end0-sys_init
                                        # -- End function
	.section	.text_shared,"ax",@progbits
	.globl	liblwip_init            # -- Begin function liblwip_init
	.p2align	4, 0x90
	.type	liblwip_init,@function
liblwip_init:                           # @liblwip_init
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%rax
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$_intrstack_start, %ecx
	cmpq	%rcx, %rax
	jb	.LBB1_3
# %bb.1:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$_end, %ecx
	cmpq	%rcx, %rax
	jbe	.LBB1_2
.LBB1_3:
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
.Ltmp0:
	movq	$1073741811, %rax       # imm = 0x3FFFFFF3
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741811, %rax       # imm = 0x3FFFFFF3
	jne	.Ltmp0
	movq	%r15, %rsp
	shlq	$4, %rsp
	addq	$tsb_comp1, %rsp
	movq	%rsp, %rbp
	movq	(%rsp), %rsp
	addq	$8, %rbp
	movq	(%rbp), %rbp
	andq	$-16, %rsp
	callq	_liblwip_init
	movq	%rax, %rsi
.Ltmp1:
	movq	$1073741820, %rax       # imm = 0x3FFFFFFC
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741820, %rax       # imm = 0x3FFFFFFC
	jne	.Ltmp1
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
	movq	%rsi, %r11
	popq	%r8
	popq	%rdi
	popq	%rsi

	#NO_APP
	#APP
	movl	%r11d, -12(%rbp)

	#NO_APP
	movl	-12(%rbp), %eax
	jmp	.LBB1_4
.LBB1_2:
	callq	_liblwip_init
	movl	$0, -12(%rbp)
	xorl	%eax, %eax
.LBB1_4:
	addq	$8, %rsp
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	liblwip_init, .Lfunc_end1-liblwip_init
                                        # -- End function
	.text
	.p2align	4, 0x90         # -- Begin function ukarch_read_sp
	.type	ukarch_read_sp,@function
ukarch_read_sp:                         # @ukarch_read_sp
# %bb.0:
	#APP
	movq	%rsp, %rax
	#NO_APP
	retq
.Lfunc_end2:
	.size	ukarch_read_sp, .Lfunc_end2-ukarch_read_sp
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function uk_thread_get_tid
	.type	uk_thread_get_tid,@function
uk_thread_get_tid:                      # @uk_thread_get_tid
# %bb.0:
	#APP
	movq	%rsp, %rax
	#NO_APP
	andq	$-65536, %rax           # imm = 0xFFFF0000
	movl	4096(%rax), %eax
	retq
.Lfunc_end3:
	.size	uk_thread_get_tid, .Lfunc_end3-uk_thread_get_tid
                                        # -- End function
	.globl	_liblwip_init           # -- Begin function _liblwip_init
	.p2align	4, 0x90
	.type	_liblwip_init,@function
_liblwip_init:                          # @_liblwip_init
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$56, %rsp
	movq	flexos_shared_alloc(%rip), %rdi
	testq	%rdi, %rdi
	je	.LBB4_1
# %bb.2:
	movl	$8, %esi
	callq	*(%rdi)
	movq	%rax, %r12
.LBB4_3:
	movq	$0, (%r12)
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$_intrstack_start, %ecx
	cmpq	%rcx, %rax
	jb	.LBB4_5
# %bb.4:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$_end, %ecx
	cmpq	%rcx, %rax
	jbe	.LBB4_6
.LBB4_5:
	#APP
	movq	%rsp, %rax
	#NO_APP
	andq	$-65536, %rax           # imm = 0xFFFF0000
	movl	4096(%rax), %r15d
	movl	$_liblwip_init.__str.1, %edi
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
	callq	uk_pr_info
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
.LBB4_6:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$_intrstack_start, %ecx
	cmpq	%rcx, %rax
	jb	.LBB4_9
# %bb.7:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$_end, %ecx
	cmpq	%rcx, %rax
	jbe	.LBB4_8
.LBB4_9:
	#APP
	movq	%rsp, %rax
	#NO_APP
	andq	$-65536, %rax           # imm = 0xFFFF0000
	movl	4096(%rax), %r15d
	movl	$_lwip_init_sem, %edi
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
.Ltmp4:
	movq	$1073741820, %rax       # imm = 0x3FFFFFFC
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741820, %rax       # imm = 0x3FFFFFFC
	jne	.Ltmp4
	movq	%r15, %rsp
	shlq	$4, %rsp
	addq	$tsb_comp0, %rsp
	movq	%rsp, %rbp
	movq	(%rsp), %rsp
	addq	$8, %rbp
	movq	(%rbp), %rbp
	andq	$-16, %rsp
	callq	uk_semaphore_init
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
	popq	%r12
	popq	%r11
	popq	%r10
	popq	%r9
	popq	%r8
	popq	%rdi
	popq	%rsi

	#NO_APP
	jmp	.LBB4_10
.LBB4_8:
	movl	$_lwip_init_sem, %edi
	xorl	%esi, %esi
	callq	uk_semaphore_init
.LBB4_10:
	movl	$_lwip_init_done, %edi
	xorl	%esi, %esi
	callq	tcpip_init
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$_intrstack_start, %ecx
	cmpq	%rcx, %rax
	jb	.LBB4_13
# %bb.11:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$_end, %ecx
	cmpq	%rcx, %rax
	jbe	.LBB4_12
.LBB4_13:
	#APP
	movq	%rsp, %rax
	#NO_APP
	andq	$-65536, %rax           # imm = 0xFFFF0000
	movl	4096(%rax), %r15d
	movl	$_lwip_init_sem, %edi
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
.Ltmp6:
	movq	$1073741820, %rax       # imm = 0x3FFFFFFC
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741820, %rax       # imm = 0x3FFFFFFC
	jne	.Ltmp6
	movq	%r15, %rsp
	shlq	$4, %rsp
	addq	$tsb_comp0, %rsp
	movq	%rsp, %rbp
	movq	(%rsp), %rsp
	addq	$8, %rbp
	movq	(%rbp), %rbp
	andq	$-16, %rsp
	callq	uk_semaphore_down
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
	popq	%r12
	popq	%r11
	popq	%r10
	popq	%r9
	popq	%r8
	popq	%rdi
	popq	%rsi

	#NO_APP
	jmp	.LBB4_14
.LBB4_12:
	movl	$_lwip_init_sem, %edi
	callq	uk_semaphore_down
.LBB4_14:
	movl	$netif_status_print, %edi
	movl	$_netif_status_print, %esi
	callq	netif_add_ext_callback
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$_intrstack_start, %ecx
	cmpq	%rcx, %rax
	jb	.LBB4_17
# %bb.15:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$_end, %ecx
	cmpq	%rcx, %rax
	jbe	.LBB4_16
.LBB4_17:
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
	callq	uk_netdev_count
	movq	%rax, %rsi
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
	movq	%rsi, %r11
	popq	%r8
	popq	%rdi
	popq	%rsi

	#NO_APP
	#APP
	movl	%r11d, -68(%rbp)

	#NO_APP
	movl	-68(%rbp), %eax
	testl	%eax, %eax
	jne	.LBB4_19
	jmp	.LBB4_83
.LBB4_16:
	callq	uk_netdev_count
	movl	%eax, -68(%rbp)
	testl	%eax, %eax
	je	.LBB4_83
.LBB4_19:
	movl	$1, %r13d
	movl	$_intrstack_start, %ebx
	xorl	%r14d, %r14d
	movq	%r12, -80(%rbp)         # 8-byte Spill
	jmp	.LBB4_20
	.p2align	4, 0x90
.LBB4_32:                               #   in Loop: Header=BB4_20 Depth=1
	#APP
	movq	%rsp, %rax
	#NO_APP
	andq	$-65536, %rax           # imm = 0xFFFF0000
	movl	4096(%rax), %r15d
	movl	$_liblwip_init.__str.3, %edi
	movq	%r14, %rsi
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
	callq	uk_pr_info
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
	popq	%r8
	popq	%rdi
	popq	%rsi

	#NO_APP
.LBB4_82:                               #   in Loop: Header=BB4_20 Depth=1
	addq	$1, %r14
	movl	-68(%rbp), %eax
	cmpq	%rax, %r14
	jae	.LBB4_83
.LBB4_20:                               # =>This Inner Loop Header: Depth=1
	#APP
	movq	%rsp, %rax
	#NO_APP
	cmpq	%rbx, %rax
	jb	.LBB4_23
# %bb.21:                               #   in Loop: Header=BB4_20 Depth=1
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$_end, %ecx
	cmpq	%rcx, %rax
	jbe	.LBB4_22
.LBB4_23:                               #   in Loop: Header=BB4_20 Depth=1
	#APP
	movq	%rsp, %rax
	#NO_APP
	andq	$-65536, %rax           # imm = 0xFFFF0000
	movl	4096(%rax), %r15d
	movq	%r14, %rdi
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
	callq	uk_netdev_get
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
	movq	%r11, -64(%rbp)

	#NO_APP
	movq	-64(%rbp), %rax
	testq	%rax, %rax
	jne	.LBB4_25
	jmp	.LBB4_82
	.p2align	4, 0x90
.LBB4_22:                               #   in Loop: Header=BB4_20 Depth=1
	movl	%r14d, %edi
	callq	uk_netdev_get
	movq	%rax, -64(%rbp)
	testq	%rax, %rax
	je	.LBB4_82
.LBB4_25:                               #   in Loop: Header=BB4_20 Depth=1
	#APP
	movq	%rsp, %rax
	#NO_APP
	cmpq	%rbx, %rax
	jb	.LBB4_28
# %bb.26:                               #   in Loop: Header=BB4_20 Depth=1
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$_end, %ecx
	cmpq	%rcx, %rax
	jbe	.LBB4_27
.LBB4_28:                               #   in Loop: Header=BB4_20 Depth=1
	#APP
	movq	%rsp, %rax
	#NO_APP
	andq	$-65536, %rax           # imm = 0xFFFF0000
	movl	4096(%rax), %r15d
	movq	-64(%rbp), %rdi
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
	callq	uk_netdev_state_get
	movq	%rax, %rsi
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
	movq	%rsi, %r11
	popq	%r8
	popq	%rdi
	popq	%rsi

	#NO_APP
	#APP
	movl	%r11d, -72(%rbp)

	#NO_APP
	movl	-72(%rbp), %eax
	jmp	.LBB4_29
.LBB4_27:                               #   in Loop: Header=BB4_20 Depth=1
	movq	-64(%rbp), %rdi
	callq	uk_netdev_state_get
	movl	%eax, -72(%rbp)
.LBB4_29:                               #   in Loop: Header=BB4_20 Depth=1
	#APP
	movq	%rsp, %rcx
	#NO_APP
	cmpl	$1, %eax
	jne	.LBB4_30
# %bb.33:                               #   in Loop: Header=BB4_20 Depth=1
	cmpq	%rbx, %rcx
	jb	.LBB4_35
# %bb.34:                               #   in Loop: Header=BB4_20 Depth=1
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$_end, %ecx
	cmpq	%rcx, %rax
	jbe	.LBB4_36
.LBB4_35:                               #   in Loop: Header=BB4_20 Depth=1
	#APP
	movq	%rsp, %rax
	#NO_APP
	andq	$-65536, %rax           # imm = 0xFFFF0000
	movl	4096(%rax), %r15d
	movl	$_liblwip_init.__str.5, %edi
	movq	%r14, %rsi
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
	callq	uk_pr_info
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
	popq	%r8
	popq	%rdi
	popq	%rsi

	#NO_APP
.LBB4_36:                               #   in Loop: Header=BB4_20 Depth=1
	#APP
	movq	%rsp, %rax
	#NO_APP
	cmpq	%rbx, %rax
	jb	.LBB4_39
# %bb.37:                               #   in Loop: Header=BB4_20 Depth=1
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$_end, %ecx
	cmpq	%rcx, %rax
	jbe	.LBB4_38
.LBB4_39:                               #   in Loop: Header=BB4_20 Depth=1
	#APP
	movq	%rsp, %rax
	#NO_APP
	andq	$-65536, %rax           # imm = 0xFFFF0000
	movl	4096(%rax), %r15d
	movq	-64(%rbp), %rdi
	movl	$1, %esi
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
	movq	%r12, %rdx
	movq	%r15, %rsp
	shlq	$4, %rsp
	addq	$tsb_comp0, %rsp
	movq	%rsp, %rbp
	movq	(%rsp), %rsp
	addq	$8, %rbp
	movq	(%rbp), %rbp
	andq	$-16, %rsp
	callq	uk_netdev_einfo_get_with_copy
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
	popq	%r8
	popq	%rdi
	popq	%rsi

	#NO_APP
	jmp	.LBB4_40
	.p2align	4, 0x90
.LBB4_30:                               #   in Loop: Header=BB4_20 Depth=1
	cmpq	%rbx, %rcx
	jb	.LBB4_32
# %bb.31:                               #   in Loop: Header=BB4_20 Depth=1
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$_end, %ecx
	cmpq	%rcx, %rax
	ja	.LBB4_32
	jmp	.LBB4_82
.LBB4_38:                               #   in Loop: Header=BB4_20 Depth=1
	movq	-64(%rbp), %rdi
	movl	$1, %esi
	movq	%r12, %rdx
	callq	uk_netdev_einfo_get_with_copy
.LBB4_40:                               #   in Loop: Header=BB4_20 Depth=1
	movq	(%r12), %rdi
	testq	%rdi, %rdi
	je	.LBB4_41
# %bb.42:                               #   in Loop: Header=BB4_20 Depth=1
	leaq	-48(%rbp), %rsi
	callq	ip4addr_aton
	#APP
	movq	%rsp, %rcx
	#NO_APP
	cmpl	$1, %eax
	jne	.LBB4_43
# %bb.47:                               #   in Loop: Header=BB4_20 Depth=1
	cmpq	%rbx, %rcx
	jb	.LBB4_50
# %bb.48:                               #   in Loop: Header=BB4_20 Depth=1
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$_end, %ecx
	cmpq	%rcx, %rax
	jbe	.LBB4_49
.LBB4_50:                               #   in Loop: Header=BB4_20 Depth=1
	#APP
	movq	%rsp, %rax
	#NO_APP
	andq	$-65536, %rax           # imm = 0xFFFF0000
	movl	4096(%rax), %r15d
	movq	-64(%rbp), %rdi
	movl	$3, %esi
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
.Ltmp20:
	movq	$1073741820, %rax       # imm = 0x3FFFFFFC
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741820, %rax       # imm = 0x3FFFFFFC
	jne	.Ltmp20
	movq	%r12, %rdx
	movq	%r15, %rsp
	shlq	$4, %rsp
	addq	$tsb_comp0, %rsp
	movq	%rsp, %rbp
	movq	(%rsp), %rsp
	addq	$8, %rbp
	movq	(%rbp), %rbp
	andq	$-16, %rsp
	callq	uk_netdev_einfo_get_with_copy
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
	popq	%r12
	popq	%r11
	popq	%r10
	popq	%r9
	popq	%r8
	popq	%rdi
	popq	%rsi

	#NO_APP
	jmp	.LBB4_51
.LBB4_43:                               #   in Loop: Header=BB4_20 Depth=1
	cmpq	%rbx, %rcx
	jb	.LBB4_46
# %bb.44:                               #   in Loop: Header=BB4_20 Depth=1
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$_end, %ecx
	cmpq	%rcx, %rax
	jbe	.LBB4_45
.LBB4_46:                               #   in Loop: Header=BB4_20 Depth=1
	#APP
	movq	%rsp, %rax
	#NO_APP
	andq	$-65536, %rax           # imm = 0xFFFF0000
	movl	4096(%rax), %r15d
	movq	(%r12), %rsi
	movl	$_liblwip_init.__str.7, %edi
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
.Ltmp22:
	movq	$1073741820, %rax       # imm = 0x3FFFFFFC
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741820, %rax       # imm = 0x3FFFFFFC
	jne	.Ltmp22
	movq	%r15, %rsp
	shlq	$4, %rsp
	addq	$tsb_comp0, %rsp
	movq	%rsp, %rbp
	movq	(%rsp), %rsp
	addq	$8, %rbp
	movq	(%rbp), %rbp
	andq	$-16, %rsp
	callq	uk_pr_err
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
	popq	%r12
	popq	%r11
	popq	%r10
	popq	%r9
	popq	%r8
	popq	%rdi
	popq	%rsi

	#NO_APP
	jmp	.LBB4_41
.LBB4_49:                               #   in Loop: Header=BB4_20 Depth=1
	movq	-64(%rbp), %rdi
	movl	$3, %esi
	movq	%r12, %rdx
	callq	uk_netdev_einfo_get_with_copy
.LBB4_51:                               #   in Loop: Header=BB4_20 Depth=1
	movq	(%r12), %rdi
	testq	%rdi, %rdi
	je	.LBB4_58
# %bb.52:                               #   in Loop: Header=BB4_20 Depth=1
	leaq	-56(%rbp), %rsi
	callq	ip4addr_aton
	cmpl	$1, %eax
	je	.LBB4_59
# %bb.53:                               #   in Loop: Header=BB4_20 Depth=1
	#APP
	movq	%rsp, %rax
	#NO_APP
	cmpq	%rbx, %rax
	jb	.LBB4_56
# %bb.54:                               #   in Loop: Header=BB4_20 Depth=1
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$_end, %ecx
	cmpq	%rcx, %rax
	jbe	.LBB4_55
.LBB4_56:                               #   in Loop: Header=BB4_20 Depth=1
	#APP
	movq	%rsp, %rax
	#NO_APP
	andq	$-65536, %rax           # imm = 0xFFFF0000
	movl	4096(%rax), %r15d
	movq	(%r12), %rsi
	movl	$_liblwip_init.__str.9, %edi
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
	callq	uk_pr_err
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
	popq	%r8
	popq	%rdi
	popq	%rsi

	#NO_APP
	jmp	.LBB4_57
.LBB4_58:                               #   in Loop: Header=BB4_20 Depth=1
	movl	$-256, %edi
	callq	lwip_htonl
	movl	%eax, -56(%rbp)
.LBB4_59:                               #   in Loop: Header=BB4_20 Depth=1
	#APP
	movq	%rsp, %rax
	#NO_APP
	cmpq	%rbx, %rax
	jb	.LBB4_62
# %bb.60:                               #   in Loop: Header=BB4_20 Depth=1
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$_end, %ecx
	cmpq	%rcx, %rax
	jbe	.LBB4_61
.LBB4_62:                               #   in Loop: Header=BB4_20 Depth=1
	#APP
	movq	%rsp, %rax
	#NO_APP
	andq	$-65536, %rax           # imm = 0xFFFF0000
	movl	4096(%rax), %r15d
	movq	-64(%rbp), %rdi
	movl	$5, %esi
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
	movq	%r12, %rdx
	movq	%r15, %rsp
	shlq	$4, %rsp
	addq	$tsb_comp0, %rsp
	movq	%rsp, %rbp
	movq	(%rsp), %rsp
	addq	$8, %rbp
	movq	(%rbp), %rbp
	andq	$-16, %rsp
	callq	uk_netdev_einfo_get_with_copy
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
	popq	%r8
	popq	%rdi
	popq	%rsi

	#NO_APP
	jmp	.LBB4_63
.LBB4_45:                               #   in Loop: Header=BB4_20 Depth=1
	movq	(%r12), %rsi
	movl	$_liblwip_init.__str.6, %edi
	xorl	%eax, %eax
	callq	uk_pr_err
	.p2align	4, 0x90
.LBB4_41:                               #   in Loop: Header=BB4_20 Depth=1
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	xorl	%esi, %esi
	jmp	.LBB4_71
.LBB4_61:                               #   in Loop: Header=BB4_20 Depth=1
	movq	-64(%rbp), %rdi
	movl	$5, %esi
	movq	%r12, %rdx
	callq	uk_netdev_einfo_get_with_copy
.LBB4_63:                               #   in Loop: Header=BB4_20 Depth=1
	movq	(%r12), %rdi
	testq	%rdi, %rdi
	je	.LBB4_69
# %bb.64:                               #   in Loop: Header=BB4_20 Depth=1
	leaq	-88(%rbp), %r15
	movq	%r15, %rsi
	callq	ip4addr_aton
	movq	%r15, %rcx
	leaq	-56(%rbp), %rdx
	leaq	-48(%rbp), %rsi
	cmpl	$1, %eax
	je	.LBB4_71
# %bb.65:                               #   in Loop: Header=BB4_20 Depth=1
	#APP
	movq	%rsp, %rax
	#NO_APP
	cmpq	%rbx, %rax
	jb	.LBB4_68
# %bb.66:                               #   in Loop: Header=BB4_20 Depth=1
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$_end, %ecx
	cmpq	%rcx, %rax
	jbe	.LBB4_67
.LBB4_68:                               #   in Loop: Header=BB4_20 Depth=1
	#APP
	movq	%rsp, %rax
	#NO_APP
	andq	$-65536, %rax           # imm = 0xFFFF0000
	movl	4096(%rax), %r15d
	movq	(%r12), %rsi
	movl	$_liblwip_init.__str.11, %edi
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
	callq	uk_pr_err
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
	popq	%r8
	popq	%rdi
	popq	%rsi

	#NO_APP
	jmp	.LBB4_69
.LBB4_55:                               #   in Loop: Header=BB4_20 Depth=1
	movq	(%r12), %rsi
	movl	$_liblwip_init.__str.8, %edi
	xorl	%eax, %eax
	callq	uk_pr_err
.LBB4_57:                               #   in Loop: Header=BB4_20 Depth=1
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	jmp	.LBB4_70
.LBB4_67:                               #   in Loop: Header=BB4_20 Depth=1
	movq	(%r12), %rsi
	movl	$_liblwip_init.__str.10, %edi
	xorl	%eax, %eax
	callq	uk_pr_err
.LBB4_69:                               #   in Loop: Header=BB4_20 Depth=1
	xorl	%ecx, %ecx
	leaq	-56(%rbp), %rdx
.LBB4_70:                               #   in Loop: Header=BB4_20 Depth=1
	leaq	-48(%rbp), %rsi
.LBB4_71:                               #   in Loop: Header=BB4_20 Depth=1
	movl	$_intrstack_start, %r15d
	movq	-64(%rbp), %rdi
	callq	uknetdev_addif
	testq	%rax, %rax
	je	.LBB4_72
# %bb.76:                               #   in Loop: Header=BB4_20 Depth=1
	movq	%rax, %rbx
	testl	%r13d, %r13d
	je	.LBB4_81
# %bb.77:                               #   in Loop: Header=BB4_20 Depth=1
	#APP
	movq	%rsp, %rax
	#NO_APP
	cmpq	%r15, %rax
	jb	.LBB4_79
# %bb.78:                               #   in Loop: Header=BB4_20 Depth=1
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$_end, %ecx
	cmpq	%rcx, %rax
	jbe	.LBB4_80
.LBB4_79:                               #   in Loop: Header=BB4_20 Depth=1
	#APP
	movq	%rsp, %rax
	#NO_APP
	andq	$-65536, %rax           # imm = 0xFFFF0000
	movl	4096(%rax), %r15d
	movsbq	263(%rbx), %r12
	movzbl	264(%rbx), %r13d
	movsbq	262(%rbx), %rsi
	movl	$_liblwip_init.__str.15, %edi
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
.Ltmp30:
	movq	$1073741820, %rax       # imm = 0x3FFFFFFC
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741820, %rax       # imm = 0x3FFFFFFC
	jne	.Ltmp30
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
	callq	uk_pr_info
.Ltmp31:
	movq	$1073741811, %rax       # imm = 0x3FFFFFF3
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741811, %rax       # imm = 0x3FFFFFF3
	jne	.Ltmp31
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
.LBB4_80:                               #   in Loop: Header=BB4_20 Depth=1
	movq	%rbx, %rdi
	callq	netif_set_default
.LBB4_81:                               #   in Loop: Header=BB4_20 Depth=1
	movq	%rbx, %rdi
	callq	netif_set_up
	xorl	%r13d, %r13d
	movq	-80(%rbp), %r12         # 8-byte Reload
	movl	$_intrstack_start, %ebx
	jmp	.LBB4_82
.LBB4_72:                               #   in Loop: Header=BB4_20 Depth=1
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$_intrstack_start, %ebx
	cmpq	%rbx, %rax
	jb	.LBB4_75
# %bb.73:                               #   in Loop: Header=BB4_20 Depth=1
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$_end, %ecx
	cmpq	%rcx, %rax
	jbe	.LBB4_74
.LBB4_75:                               #   in Loop: Header=BB4_20 Depth=1
	#APP
	movq	%rsp, %rax
	#NO_APP
	andq	$-65536, %rax           # imm = 0xFFFF0000
	movl	4096(%rax), %r15d
	movl	$_liblwip_init.__str.13, %edi
	movq	%r14, %rsi
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
	callq	uk_pr_err
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
	popq	%r8
	popq	%rdi
	popq	%rsi

	#NO_APP
	movq	-80(%rbp), %r12         # 8-byte Reload
	jmp	.LBB4_82
.LBB4_74:                               #   in Loop: Header=BB4_20 Depth=1
	movl	$_liblwip_init.__str.12, %edi
	movl	%r14d, %esi
	xorl	%eax, %eax
	callq	uk_pr_err
	movq	-80(%rbp), %r12         # 8-byte Reload
	jmp	.LBB4_82
.LBB4_83:
	movq	flexos_shared_alloc(%rip), %rdi
	testq	%rdi, %rdi
	je	.LBB4_85
# %bb.84:
	movq	%r12, %rsi
	callq	*40(%rdi)
	xorl	%eax, %eax
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB4_1:
	callq	__errno
	movl	$12, (%rax)
	xorl	%r12d, %r12d
	jmp	.LBB4_3
.LBB4_85:
	movl	$.L.str.16, %esi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$3, %edi
	callq	ukplat_terminate
.Lfunc_end4:
	.size	_liblwip_init, .Lfunc_end4-_liblwip_init
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function uk_pr_info
	.type	uk_pr_info,@function
uk_pr_info:                             # @uk_pr_info
# %bb.0:
	retq
.Lfunc_end5:
	.size	uk_pr_info, .Lfunc_end5-uk_pr_info
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function _lwip_init_done
	.type	_lwip_init_done,@function
_lwip_init_done:                        # @_lwip_init_done
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
	jb	.LBB6_6
# %bb.1:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$_end, %ecx
	cmpq	%rcx, %rax
	jbe	.LBB6_2
.LBB6_6:
	#APP
	movq	%rsp, %rax
	#NO_APP
	andq	$-65536, %rax           # imm = 0xFFFF0000
	movl	4096(%rax), %r15d
	movl	$_lwip_init_sem, %edi
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
	movq	%r15, %rsp
	shlq	$4, %rsp
	addq	$tsb_comp0, %rsp
	movq	%rsp, %rbp
	movq	(%rsp), %rsp
	addq	$8, %rbp
	movq	(%rbp), %rbp
	andq	$-16, %rsp
	callq	uk_semaphore_up
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
	popq	%r8
	popq	%rdi
	popq	%rsi

	#NO_APP
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB6_2:
	callq	ukplat_lcpu_save_irqf
	movq	%rax, %r14
	addq	$1, _lwip_init_sem(%rip)
	callq	ukplat_lcpu_save_irqf
	movq	%rax, %r15
	movq	_lwip_init_sem+8(%rip), %rbx
	testq	%rbx, %rbx
	je	.LBB6_5
	.p2align	4, 0x90
.LBB6_3:                                # =>This Inner Loop Header: Depth=1
	movq	8(%rbx), %rdi
	movq	16(%rbx), %rbx
	callq	uk_thread_wake
	testq	%rbx, %rbx
	jne	.LBB6_3
.LBB6_5:
	movq	%r15, %rdi
	callq	ukplat_lcpu_restore_irqf
	movq	%r14, %rdi
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	ukplat_lcpu_restore_irqf # TAILCALL
.Lfunc_end6:
	.size	_lwip_init_done, .Lfunc_end6-_lwip_init_done
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function uk_semaphore_down
	.type	uk_semaphore_down,@function
uk_semaphore_down:                      # @uk_semaphore_down
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
	je	.LBB7_8
# %bb.1:
	movq	%rdi, %r14
	leaq	8(%rdi), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	.p2align	4, 0x90
.LBB7_2:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_4 Depth 2
                                        #     Child Loop BB7_19 Depth 2
	#APP
	movq	%rsp, %rax
	#NO_APP
	#APP
	movq	%rsp, %rax
	#NO_APP
	andq	$-65536, %rax           # imm = 0xFFFF0000
	movslq	4096(%rax), %r15
	leaq	(,%r15,8), %rbx
	leaq	(%rbx,%rbx,2), %r12
	addq	$wq_entries, %r12
	movl	$24, %edx
	movq	%r12, %rdi
	xorl	%esi, %esi
	callq	memset
	#APP
	movq	%rsp, %rax
	#NO_APP
	andq	$-65536, %rax           # imm = 0xFFFF0000
	movq	(%rax), %rax
	movq	%rax, wq_entries+8(%rbx,%rbx,2)
	cmpq	$0, (%r14)
	jg	.LBB7_25
# %bb.3:                                #   in Loop: Header=BB7_2 Depth=1
	leaq	(%r15,%r15,2), %rax
	leaq	wq_entries+16(,%rax,8), %r13
	.p2align	4, 0x90
.LBB7_4:                                #   Parent Loop BB7_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	#APP
	movq	%rsp, %rax
	#NO_APP
	andq	$-65536, %rax           # imm = 0xFFFF0000
	movq	(%rax), %rbx
	callq	ukplat_lcpu_save_irqf
	movq	%rax, %r15
	cmpl	$0, (%r12)
	jne	.LBB7_6
# %bb.5:                                #   in Loop: Header=BB7_4 Depth=2
	movq	$0, (%r13)
	movq	16(%r14), %rax
	movq	%r12, (%rax)
	movq	%r13, 16(%r14)
	movl	$1, (%r12)
.LBB7_6:                                #   in Loop: Header=BB7_4 Depth=2
	movq	$0, 56(%rbx)
	andb	$-2, 48(%rbx)
	testq	%rbx, %rbx
	je	.LBB7_7
# %bb.10:                               #   in Loop: Header=BB7_4 Depth=2
	movq	88(%rbx), %rdi
	movq	%rbx, %rsi
	callq	*24(%rdi)
	movq	%r15, %rdi
	callq	ukplat_lcpu_restore_irqf
	cmpq	$0, (%r14)
	jg	.LBB7_15
# %bb.11:                               #   in Loop: Header=BB7_4 Depth=2
	#APP
	movq	%rsp, %rax
	#NO_APP
	andq	$-65536, %rax           # imm = 0xFFFF0000
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.LBB7_12
# %bb.13:                               #   in Loop: Header=BB7_4 Depth=2
	movq	88(%rax), %rdi
	testq	%rdi, %rdi
	je	.LBB7_8
# %bb.14:                               #   in Loop: Header=BB7_4 Depth=2
	callq	*(%rdi)
	jmp	.LBB7_4
	.p2align	4, 0x90
.LBB7_15:                               #   in Loop: Header=BB7_2 Depth=1
	callq	ukplat_lcpu_save_irqf
	movq	%rax, %r15
	movq	%rbx, %rdi
	callq	uk_thread_wake
	cmpl	$0, (%r12)
	je	.LBB7_24
# %bb.16:                               #   in Loop: Header=BB7_2 Depth=1
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rcx
	cmpq	%r12, %rcx
	je	.LBB7_17
	.p2align	4, 0x90
.LBB7_19:                               #   Parent Loop BB7_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%rcx, %rax
	movq	16(%rcx), %rcx
	cmpq	%r12, %rcx
	jne	.LBB7_19
# %bb.20:                               #   in Loop: Header=BB7_2 Depth=1
	movq	(%r13), %rcx
	movq	%rcx, 16(%rax)
	testq	%rcx, %rcx
	jne	.LBB7_23
# %bb.21:                               #   in Loop: Header=BB7_2 Depth=1
	addq	$16, %rax
	jmp	.LBB7_22
.LBB7_17:                               #   in Loop: Header=BB7_2 Depth=1
	movq	(%r13), %rax
	movq	-48(%rbp), %rcx         # 8-byte Reload
	movq	%rax, (%rcx)
	testq	%rax, %rax
	jne	.LBB7_23
# %bb.18:                               #   in Loop: Header=BB7_2 Depth=1
	movq	-48(%rbp), %rax         # 8-byte Reload
.LBB7_22:                               #   in Loop: Header=BB7_2 Depth=1
	movq	%rax, 16(%r14)
.LBB7_23:                               #   in Loop: Header=BB7_2 Depth=1
	movl	$0, (%r12)
.LBB7_24:                               #   in Loop: Header=BB7_2 Depth=1
	movq	%r15, %rdi
	callq	ukplat_lcpu_restore_irqf
.LBB7_25:                               #   in Loop: Header=BB7_2 Depth=1
	callq	ukplat_lcpu_save_irqf
	movq	(%r14), %rcx
	testq	%rcx, %rcx
	jg	.LBB7_27
# %bb.26:                               #   in Loop: Header=BB7_2 Depth=1
	movq	%rax, %rdi
	callq	ukplat_lcpu_restore_irqf
	jmp	.LBB7_2
.LBB7_27:
	addq	$-1, %rcx
	movq	%rcx, (%r14)
	movq	%rax, %rdi
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	ukplat_lcpu_restore_irqf # TAILCALL
.LBB7_7:
	movl	$.L.str.19, %esi
	jmp	.LBB7_9
.LBB7_12:
	movl	$.L.str.20, %esi
	jmp	.LBB7_9
.LBB7_8:
	movl	$.L.str.18, %esi
.LBB7_9:
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$3, %edi
	callq	ukplat_terminate
.Lfunc_end7:
	.size	uk_semaphore_down, .Lfunc_end7-uk_semaphore_down
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function _netif_status_print
	.type	_netif_status_print,@function
_netif_status_print:                    # @_netif_status_print
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$504, %rsp              # imm = 0x1F8
	leaq	-480(%rbp), %rax
	leaq	-512(%rbp), %rcx
	leaq	-544(%rbp), %rbx
	movq	%rdi, -48(%rbp)
	movw	%si, -50(%rbp)
	movq	%rdx, -64(%rbp)
	addq	$65536, %rbx            # imm = 0x10000
	movq	%rbx, -80(%rbp)
	addq	$65536, %rcx            # imm = 0x10000
	movq	%rcx, -72(%rbp)
	addq	$65536, %rax            # imm = 0x10000
	movq	%rax, -456(%rbp)
	movzwl	-50(%rbp), %eax
	andl	$1, %eax
	cmpl	$0, %eax
	je	.LBB8_15
# %bb.1:
	jmp	.LBB8_2
.LBB8_2:
	callq	ukarch_read_sp
	movabsq	$_intrstack_start, %rcx
	cmpq	%rcx, %rax
	jb	.LBB8_5
# %bb.3:
	callq	ukarch_read_sp
	movabsq	$_end, %rcx
	cmpq	%rcx, %rax
	ja	.LBB8_5
# %bb.4:
	movabsq	$_netif_status_print.__str, %rax
	movq	%rax, -448(%rbp)
	movq	-448(%rbp), %rdi
	movq	-48(%rbp), %rax
	movsbl	262(%rax), %esi
	movq	-48(%rbp), %rax
	movsbl	263(%rax), %edx
	movq	-48(%rbp), %rax
	movzbl	264(%rax), %ecx
	movb	$0, %al
	callq	printf
	jmp	.LBB8_12
.LBB8_5:
	jmp	.LBB8_6
.LBB8_6:
	jmp	.LBB8_7
.LBB8_7:
	callq	uk_thread_get_tid
	movl	%eax, -108(%rbp)
	movq	-48(%rbp), %rax
	movsbq	263(%rax), %rax
	movq	%rax, -440(%rbp)
	movq	-48(%rbp), %rax
	movzbl	264(%rax), %eax
	movq	%rax, -432(%rbp)
	movabsq	$_netif_status_print.__str.21, %rax
	movq	%rax, -424(%rbp)
	movq	-424(%rbp), %rdi
	movq	-48(%rbp), %rax
	movsbq	262(%rax), %rsi
	movq	-440(%rbp), %r12
	movq	-432(%rbp), %r13
	movl	-108(%rbp), %r15d
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
.Ltmp36:
	movq	$1073741820, %rax       # imm = 0x3FFFFFFC
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741820, %rax       # imm = 0x3FFFFFFC
	jne	.Ltmp36
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
	callq	printf
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
	popq	%r13
	popq	%r12
	popq	%r11
	popq	%r10
	popq	%r9
	popq	%r8
	popq	%rdi
	popq	%rsi

	#NO_APP
# %bb.8:
	jmp	.LBB8_9
.LBB8_9:
	jmp	.LBB8_10
.LBB8_10:
	jmp	.LBB8_11
.LBB8_11:
	jmp	.LBB8_12
.LBB8_12:
	jmp	.LBB8_13
.LBB8_13:
	jmp	.LBB8_14
.LBB8_14:
	jmp	.LBB8_15
.LBB8_15:
	movzwl	-50(%rbp), %eax
	andl	$2, %eax
	cmpl	$0, %eax
	je	.LBB8_30
# %bb.16:
	jmp	.LBB8_17
.LBB8_17:
	callq	ukarch_read_sp
	movabsq	$_intrstack_start, %rcx
	cmpq	%rcx, %rax
	jb	.LBB8_20
# %bb.18:
	callq	ukarch_read_sp
	movabsq	$_end, %rcx
	cmpq	%rcx, %rax
	ja	.LBB8_20
# %bb.19:
	movabsq	$_netif_status_print.__str.22, %rax
	movq	%rax, -416(%rbp)
	movq	-416(%rbp), %rdi
	movq	-48(%rbp), %rax
	movsbl	262(%rax), %esi
	movq	-48(%rbp), %rax
	movsbl	263(%rax), %edx
	movq	-48(%rbp), %rax
	movzbl	264(%rax), %ecx
	movb	$0, %al
	callq	printf
	jmp	.LBB8_27
.LBB8_20:
	jmp	.LBB8_21
.LBB8_21:
	jmp	.LBB8_22
.LBB8_22:
	callq	uk_thread_get_tid
	movl	%eax, -104(%rbp)
	movq	-48(%rbp), %rax
	movsbq	263(%rax), %rax
	movq	%rax, -408(%rbp)
	movq	-48(%rbp), %rax
	movzbl	264(%rax), %eax
	movq	%rax, -400(%rbp)
	movabsq	$_netif_status_print.__str.23, %rax
	movq	%rax, -392(%rbp)
	movq	-392(%rbp), %rdi
	movq	-48(%rbp), %rax
	movsbq	262(%rax), %rsi
	movq	-408(%rbp), %r12
	movq	-400(%rbp), %r13
	movl	-104(%rbp), %r15d
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
.Ltmp38:
	movq	$1073741820, %rax       # imm = 0x3FFFFFFC
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741820, %rax       # imm = 0x3FFFFFFC
	jne	.Ltmp38
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
	callq	printf
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
	popq	%r13
	popq	%r12
	popq	%r11
	popq	%r10
	popq	%r9
	popq	%r8
	popq	%rdi
	popq	%rsi

	#NO_APP
# %bb.23:
	jmp	.LBB8_24
.LBB8_24:
	jmp	.LBB8_25
.LBB8_25:
	jmp	.LBB8_26
.LBB8_26:
	jmp	.LBB8_27
.LBB8_27:
	jmp	.LBB8_28
.LBB8_28:
	jmp	.LBB8_29
.LBB8_29:
	jmp	.LBB8_30
.LBB8_30:
	movzwl	-50(%rbp), %eax
	andl	$4, %eax
	cmpl	$0, %eax
	je	.LBB8_45
# %bb.31:
	movq	-64(%rbp), %rax
	movzbl	(%rax), %eax
	movabsq	$_netif_status_print.__str.24, %rcx
	movq	%rcx, -384(%rbp)
	movq	-384(%rbp), %rcx
	movabsq	$_netif_status_print.__str.25, %rdx
	movq	%rdx, -376(%rbp)
	cmpl	$0, %eax
	cmoveq	-376(%rbp), %rcx
	movq	%rcx, -128(%rbp)
# %bb.32:
	callq	ukarch_read_sp
	movabsq	$_intrstack_start, %rcx
	cmpq	%rcx, %rax
	jb	.LBB8_35
# %bb.33:
	callq	ukarch_read_sp
	movabsq	$_end, %rcx
	cmpq	%rcx, %rax
	ja	.LBB8_35
# %bb.34:
	movabsq	$_netif_status_print.__str.26, %rax
	movq	%rax, -368(%rbp)
	movq	-368(%rbp), %rdi
	movq	-48(%rbp), %rax
	movsbl	262(%rax), %esi
	movq	-48(%rbp), %rax
	movsbl	263(%rax), %edx
	movq	-48(%rbp), %rax
	movzbl	264(%rax), %ecx
	movq	-128(%rbp), %r8
	movb	$0, %al
	callq	printf
	jmp	.LBB8_42
.LBB8_35:
	jmp	.LBB8_36
.LBB8_36:
	jmp	.LBB8_37
.LBB8_37:
	callq	uk_thread_get_tid
	movl	%eax, -100(%rbp)
	movq	-48(%rbp), %rax
	movsbq	263(%rax), %rax
	movq	%rax, -360(%rbp)
	movq	-48(%rbp), %rax
	movzbl	264(%rax), %eax
	movq	%rax, -352(%rbp)
	movq	-128(%rbp), %rax
	movq	%rax, -344(%rbp)
	movabsq	$_netif_status_print.__str.27, %rax
	movq	%rax, -336(%rbp)
	movq	-336(%rbp), %rdi
	movq	-48(%rbp), %rax
	movsbq	262(%rax), %rsi
	movq	-360(%rbp), %r12
	movq	-352(%rbp), %r13
	movq	-344(%rbp), %r8
	movl	-100(%rbp), %r15d
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
.Ltmp40:
	movq	$1073741820, %rax       # imm = 0x3FFFFFFC
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741820, %rax       # imm = 0x3FFFFFFC
	jne	.Ltmp40
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
	callq	printf
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
	popq	%r13
	popq	%r12
	popq	%r11
	popq	%r10
	popq	%r9
	popq	%r8
	popq	%rdi
	popq	%rsi

	#NO_APP
# %bb.38:
	jmp	.LBB8_39
.LBB8_39:
	jmp	.LBB8_40
.LBB8_40:
	jmp	.LBB8_41
.LBB8_41:
	jmp	.LBB8_42
.LBB8_42:
	jmp	.LBB8_43
.LBB8_43:
	jmp	.LBB8_44
.LBB8_44:
.LBB8_45:
	movzwl	-50(%rbp), %eax
	andl	$8, %eax
	cmpl	$0, %eax
	je	.LBB8_60
# %bb.46:
	movq	-64(%rbp), %rax
	movzbl	(%rax), %eax
	movabsq	$_netif_status_print.__str.28, %rcx
	movq	%rcx, -328(%rbp)
	movq	-328(%rbp), %rcx
	movabsq	$_netif_status_print.__str.29, %rdx
	movq	%rdx, -320(%rbp)
	cmpl	$0, %eax
	cmoveq	-320(%rbp), %rcx
	movq	%rcx, -120(%rbp)
# %bb.47:
	callq	ukarch_read_sp
	movabsq	$_intrstack_start, %rcx
	cmpq	%rcx, %rax
	jb	.LBB8_50
# %bb.48:
	callq	ukarch_read_sp
	movabsq	$_end, %rcx
	cmpq	%rcx, %rax
	ja	.LBB8_50
# %bb.49:
	movabsq	$_netif_status_print.__str.30, %rax
	movq	%rax, -312(%rbp)
	movq	-312(%rbp), %rdi
	movq	-48(%rbp), %rax
	movsbl	262(%rax), %esi
	movq	-48(%rbp), %rax
	movsbl	263(%rax), %edx
	movq	-48(%rbp), %rax
	movzbl	264(%rax), %ecx
	movq	-120(%rbp), %r8
	movb	$0, %al
	callq	printf
	jmp	.LBB8_57
.LBB8_50:
	jmp	.LBB8_51
.LBB8_51:
	jmp	.LBB8_52
.LBB8_52:
	callq	uk_thread_get_tid
	movl	%eax, -96(%rbp)
	movq	-48(%rbp), %rax
	movsbq	263(%rax), %rax
	movq	%rax, -304(%rbp)
	movq	-48(%rbp), %rax
	movzbl	264(%rax), %eax
	movq	%rax, -296(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, -288(%rbp)
	movabsq	$_netif_status_print.__str.31, %rax
	movq	%rax, -280(%rbp)
	movq	-280(%rbp), %rdi
	movq	-48(%rbp), %rax
	movsbq	262(%rax), %rsi
	movq	-304(%rbp), %r12
	movq	-296(%rbp), %r13
	movq	-288(%rbp), %r8
	movl	-96(%rbp), %r15d
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
	callq	printf
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
	popq	%r8
	popq	%rdi
	popq	%rsi

	#NO_APP
# %bb.53:
	jmp	.LBB8_54
.LBB8_54:
	jmp	.LBB8_55
.LBB8_55:
	jmp	.LBB8_56
.LBB8_56:
	jmp	.LBB8_57
.LBB8_57:
	jmp	.LBB8_58
.LBB8_58:
	jmp	.LBB8_59
.LBB8_59:
.LBB8_60:
	movzwl	-50(%rbp), %eax
	andl	$128, %eax
	cmpl	$0, %eax
	jne	.LBB8_64
# %bb.61:
	movzwl	-50(%rbp), %eax
	andl	$16, %eax
	cmpl	$0, %eax
	jne	.LBB8_64
# %bb.62:
	movzwl	-50(%rbp), %eax
	andl	$64, %eax
	cmpl	$0, %eax
	jne	.LBB8_64
# %bb.63:
	movzwl	-50(%rbp), %eax
	andl	$32, %eax
	cmpl	$0, %eax
	je	.LBB8_78
.LBB8_64:
	movq	-48(%rbp), %rdi
	addq	$8, %rdi
	movq	-80(%rbp), %rsi
	movl	$8, %edx
	callq	ipaddr_ntoa_r
	movq	-48(%rbp), %rdi
	addq	$32, %rdi
	movq	-72(%rbp), %rsi
	movl	$8, %edx
	callq	ipaddr_ntoa_r
	movq	-48(%rbp), %rdi
	addq	$56, %rdi
	movq	-456(%rbp), %rsi
	movl	$8, %edx
	callq	ipaddr_ntoa_r
# %bb.65:
	callq	ukarch_read_sp
	movabsq	$_intrstack_start, %rcx
	cmpq	%rcx, %rax
	jb	.LBB8_68
# %bb.66:
	callq	ukarch_read_sp
	movabsq	$_end, %rcx
	cmpq	%rcx, %rax
	ja	.LBB8_68
# %bb.67:
	movabsq	$_netif_status_print.__str.32, %rax
	movq	%rax, -272(%rbp)
	movq	-272(%rbp), %rdi
	movq	-48(%rbp), %rax
	movsbl	262(%rax), %esi
	movq	-48(%rbp), %rax
	movsbl	263(%rax), %edx
	movq	-48(%rbp), %rax
	movzbl	264(%rax), %ecx
	movq	-80(%rbp), %r8
	movq	-72(%rbp), %r9
	movb	$0, %al
	callq	printf
	jmp	.LBB8_75
.LBB8_68:
	jmp	.LBB8_69
.LBB8_69:
	jmp	.LBB8_70
.LBB8_70:
	callq	uk_thread_get_tid
	movl	%eax, -92(%rbp)
	movq	-48(%rbp), %rax
	movsbq	263(%rax), %rax
	movq	%rax, -264(%rbp)
	movq	-48(%rbp), %rax
	movzbl	264(%rax), %eax
	movq	%rax, -256(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -248(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -240(%rbp)
	movabsq	$_netif_status_print.__str.33, %rax
	movq	%rax, -232(%rbp)
	movq	-232(%rbp), %rdi
	movq	-48(%rbp), %rax
	movsbq	262(%rax), %rsi
	movq	-264(%rbp), %r12
	movq	-256(%rbp), %r13
	movq	-248(%rbp), %r8
	movq	-240(%rbp), %r9
	movl	-92(%rbp), %r15d
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
.Ltmp44:
	movq	$1073741820, %rax       # imm = 0x3FFFFFFC
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741820, %rax       # imm = 0x3FFFFFFC
	jne	.Ltmp44
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
	callq	printf
.Ltmp45:
	movq	$1073741811, %rax       # imm = 0x3FFFFFF3
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741811, %rax       # imm = 0x3FFFFFF3
	jne	.Ltmp45
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
# %bb.71:
	jmp	.LBB8_72
.LBB8_72:
	jmp	.LBB8_73
.LBB8_73:
	jmp	.LBB8_74
.LBB8_74:
	jmp	.LBB8_75
.LBB8_75:
	jmp	.LBB8_76
.LBB8_76:
	jmp	.LBB8_77
.LBB8_77:
	jmp	.LBB8_78
.LBB8_78:
	movzwl	-50(%rbp), %eax
	andl	$256, %eax              # imm = 0x100
	cmpl	$0, %eax
	je	.LBB8_93
# %bb.79:
	jmp	.LBB8_80
.LBB8_80:
	callq	ukarch_read_sp
	movabsq	$_intrstack_start, %rcx
	cmpq	%rcx, %rax
	jb	.LBB8_83
# %bb.81:
	callq	ukarch_read_sp
	movabsq	$_end, %rcx
	cmpq	%rcx, %rax
	ja	.LBB8_83
# %bb.82:
	movabsq	$_netif_status_print.__str.34, %rax
	movq	%rax, -224(%rbp)
	movq	-224(%rbp), %r14
	movq	-48(%rbp), %rax
	movsbl	262(%rax), %r15d
	movq	-48(%rbp), %rax
	movsbl	263(%rax), %r12d
	movq	-48(%rbp), %rax
	movzbl	264(%rax), %r13d
	movq	-64(%rbp), %rax
	movsbl	(%rax), %ebx
	movq	-48(%rbp), %rdi
	addq	$80, %rdi
	movq	-64(%rbp), %rax
	movsbq	(%rax), %rax
	imulq	$24, %rax, %rax
	addq	%rax, %rdi
	callq	ipaddr_ntoa
	movq	%r14, %rdi
	movl	%r15d, %esi
	movl	%r12d, %edx
	movl	%r13d, %ecx
	movl	%ebx, %r8d
	movq	%rax, %r9
	movb	$0, %al
	callq	printf
	jmp	.LBB8_90
.LBB8_83:
	jmp	.LBB8_84
.LBB8_84:
	jmp	.LBB8_85
.LBB8_85:
	callq	uk_thread_get_tid
	movl	%eax, -88(%rbp)
	movq	-48(%rbp), %rax
	movsbq	263(%rax), %rax
	movq	%rax, -216(%rbp)
	movq	-48(%rbp), %rax
	movzbl	264(%rax), %eax
	movq	%rax, -208(%rbp)
	movq	-64(%rbp), %rax
	movsbq	(%rax), %rax
	movq	%rax, -200(%rbp)
	movq	-48(%rbp), %rdi
	addq	$80, %rdi
	movq	-64(%rbp), %rax
	movsbq	(%rax), %rax
	imulq	$24, %rax, %rax
	addq	%rax, %rdi
	callq	ipaddr_ntoa
	movq	%rax, -192(%rbp)
	movabsq	$_netif_status_print.__str.35, %rax
	movq	%rax, -184(%rbp)
	movq	-184(%rbp), %rdi
	movq	-48(%rbp), %rax
	movsbq	262(%rax), %rsi
	movq	-216(%rbp), %r12
	movq	-208(%rbp), %r13
	movq	-200(%rbp), %r8
	movq	-192(%rbp), %r9
	movl	-88(%rbp), %r15d
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
.Ltmp46:
	movq	$1073741820, %rax       # imm = 0x3FFFFFFC
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741820, %rax       # imm = 0x3FFFFFFC
	jne	.Ltmp46
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
	callq	printf
.Ltmp47:
	movq	$1073741811, %rax       # imm = 0x3FFFFFF3
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741811, %rax       # imm = 0x3FFFFFF3
	jne	.Ltmp47
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
# %bb.86:
	jmp	.LBB8_87
.LBB8_87:
	jmp	.LBB8_88
.LBB8_88:
	jmp	.LBB8_89
.LBB8_89:
	jmp	.LBB8_90
.LBB8_90:
	jmp	.LBB8_91
.LBB8_91:
	jmp	.LBB8_92
.LBB8_92:
	jmp	.LBB8_93
.LBB8_93:
	movzwl	-50(%rbp), %eax
	andl	$512, %eax              # imm = 0x200
	cmpl	$0, %eax
	je	.LBB8_108
# %bb.94:
	jmp	.LBB8_95
.LBB8_95:
	callq	ukarch_read_sp
	movabsq	$_intrstack_start, %rcx
	cmpq	%rcx, %rax
	jb	.LBB8_98
# %bb.96:
	callq	ukarch_read_sp
	movabsq	$_end, %rcx
	cmpq	%rcx, %rax
	ja	.LBB8_98
# %bb.97:
	movabsq	$_netif_status_print.__str.36, %rax
	movq	%rax, -176(%rbp)
	movq	-176(%rbp), %r14
	movq	-48(%rbp), %rax
	movsbl	262(%rax), %r15d
	movq	-48(%rbp), %rax
	movsbl	263(%rax), %r12d
	movq	-48(%rbp), %rax
	movzbl	264(%rax), %r13d
	movq	-64(%rbp), %rax
	movsbl	(%rax), %ebx
	movq	-48(%rbp), %rdi
	addq	$80, %rdi
	movq	-64(%rbp), %rax
	movsbq	(%rax), %rax
	imulq	$24, %rax, %rax
	addq	%rax, %rdi
	callq	ipaddr_ntoa
	movq	%r14, %rdi
	movl	%r15d, %esi
	movl	%r12d, %edx
	movl	%r13d, %ecx
	movl	%ebx, %r8d
	movq	%rax, %r9
	movb	$0, %al
	callq	printf
	jmp	.LBB8_105
.LBB8_98:
	jmp	.LBB8_99
.LBB8_99:
	jmp	.LBB8_100
.LBB8_100:
	callq	uk_thread_get_tid
	movl	%eax, -84(%rbp)
	movq	-48(%rbp), %rax
	movsbq	263(%rax), %rax
	movq	%rax, -168(%rbp)
	movq	-48(%rbp), %rax
	movzbl	264(%rax), %eax
	movq	%rax, -160(%rbp)
	movq	-64(%rbp), %rax
	movsbq	(%rax), %rax
	movq	%rax, -152(%rbp)
	movq	-48(%rbp), %rdi
	addq	$80, %rdi
	movq	-64(%rbp), %rax
	movsbq	(%rax), %rax
	imulq	$24, %rax, %rax
	addq	%rax, %rdi
	callq	ipaddr_ntoa
	movq	%rax, -144(%rbp)
	movabsq	$_netif_status_print.__str.37, %rax
	movq	%rax, -136(%rbp)
	movq	-136(%rbp), %rdi
	movq	-48(%rbp), %rax
	movsbq	262(%rax), %rsi
	movq	-168(%rbp), %r12
	movq	-160(%rbp), %r13
	movq	-152(%rbp), %r8
	movq	-144(%rbp), %r9
	movl	-84(%rbp), %r15d
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
.Ltmp48:
	movq	$1073741820, %rax       # imm = 0x3FFFFFFC
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741820, %rax       # imm = 0x3FFFFFFC
	jne	.Ltmp48
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
	callq	printf
.Ltmp49:
	movq	$1073741811, %rax       # imm = 0x3FFFFFF3
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741811, %rax       # imm = 0x3FFFFFF3
	jne	.Ltmp49
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
# %bb.101:
	jmp	.LBB8_102
.LBB8_102:
	jmp	.LBB8_103
.LBB8_103:
	jmp	.LBB8_104
.LBB8_104:
	jmp	.LBB8_105
.LBB8_105:
	jmp	.LBB8_106
.LBB8_106:
	jmp	.LBB8_107
.LBB8_107:
	jmp	.LBB8_108
.LBB8_108:
	addq	$504, %rsp              # imm = 0x1F8
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end8:
	.size	_netif_status_print, .Lfunc_end8-_netif_status_print
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function uk_netdev_einfo_get_with_copy
	.type	uk_netdev_einfo_get_with_copy,@function
uk_netdev_einfo_get_with_copy:          # @uk_netdev_einfo_get_with_copy
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movq	%rdx, %r14
	callq	uk_netdev_einfo_get
	testq	%rax, %rax
	je	.LBB9_8
# %bb.1:
	movq	%rax, %r15
	movq	(%r14), %rsi
	testq	%rsi, %rsi
	je	.LBB9_4
# %bb.2:
	movq	flexos_shared_alloc(%rip), %rdi
	testq	%rdi, %rdi
	je	.LBB9_9
# %bb.3:
	callq	*40(%rdi)
.LBB9_4:
	movq	flexos_shared_alloc(%rip), %rbx
	movq	%r15, %rdi
	callq	strlen
	testq	%rbx, %rbx
	je	.LBB9_5
# %bb.6:
	addq	$1, %rax
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	*(%rbx)
	movq	%rax, %rdi
.LBB9_7:
	movq	%rdi, (%r14)
	movq	%r15, %rsi
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	strcpy                  # TAILCALL
.LBB9_8:
	movq	$0, (%r14)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB9_5:
	callq	__errno
	movl	$12, (%rax)
	xorl	%edi, %edi
	jmp	.LBB9_7
.LBB9_9:
	movl	$.L.str.16, %esi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$3, %edi
	callq	ukplat_terminate
.Lfunc_end9:
	.size	uk_netdev_einfo_get_with_copy, .Lfunc_end9-uk_netdev_einfo_get_with_copy
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
	je	.LBB10_2
# %bb.1:
	movaps	%xmm0, -160(%rbp)
	movaps	%xmm1, -144(%rbp)
	movaps	%xmm2, -128(%rbp)
	movaps	%xmm3, -112(%rbp)
	movaps	%xmm4, -96(%rbp)
	movaps	%xmm5, -80(%rbp)
	movaps	%xmm6, -64(%rbp)
	movaps	%xmm7, -48(%rbp)
.LBB10_2:
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
	movl	$uk_pr_err.__str.38, %edx
	movl	$1, %edi
	movl	$190, %ecx
	movq	%r10, %r8
	callq	_uk_vprintk
	addq	$208, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	uk_pr_err, .Lfunc_end10-uk_pr_err
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function uk_pr_crit
	.type	uk_pr_crit,@function
uk_pr_crit:                             # @uk_pr_crit
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$208, %rsp
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
	movl	$uk_pr_crit.__str.17, %edx
	movl	$.L.str, %r8d
	xorl	%edi, %edi
	movl	$198, %ecx
	callq	_uk_vprintk
	addq	$208, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	uk_pr_crit, .Lfunc_end11-uk_pr_crit
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function uk_semaphore_up
	.type	uk_semaphore_up,@function
uk_semaphore_up:                        # @uk_semaphore_up
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	testq	%rdi, %rdi
	je	.LBB12_5
# %bb.1:
	movq	%rdi, %rbx
	callq	ukplat_lcpu_save_irqf
	movq	%rax, %r14
	addq	$1, (%rbx)
	callq	ukplat_lcpu_save_irqf
	movq	%rax, %r15
	movq	8(%rbx), %rbx
	testq	%rbx, %rbx
	je	.LBB12_4
	.p2align	4, 0x90
.LBB12_2:                               # =>This Inner Loop Header: Depth=1
	movq	8(%rbx), %rdi
	movq	16(%rbx), %rbx
	callq	uk_thread_wake
	testq	%rbx, %rbx
	jne	.LBB12_2
.LBB12_4:
	movq	%r15, %rdi
	callq	ukplat_lcpu_restore_irqf
	movq	%r14, %rdi
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	ukplat_lcpu_restore_irqf # TAILCALL
.LBB12_5:
	movl	$.L.str.18, %esi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$3, %edi
	callq	ukplat_terminate
.Lfunc_end12:
	.size	uk_semaphore_up, .Lfunc_end12-uk_semaphore_up
                                        # -- End function
	.type	_liblwip_init.__str.1,@object # @_liblwip_init.__str.1
	.section	.data_shared,"aw",@progbits
	.p2align	4
_liblwip_init.__str.1:
	.asciz	"Initializing lwip\n"
	.size	_liblwip_init.__str.1, 19

	.type	_lwip_init_sem,@object  # @_lwip_init_sem
	.p2align	3
_lwip_init_sem:
	.zero	24
	.size	_lwip_init_sem, 24

	.type	netif_status_print,@object # @netif_status_print
	.local	netif_status_print
	.comm	netif_status_print,16,8
	.type	_liblwip_init.__str.3,@object # @_liblwip_init.__str.3
	.p2align	4
_liblwip_init.__str.3:
	.asciz	"Skipping to add network device %u to lwIP: Not in unconfigured state\n"
	.size	_liblwip_init.__str.3, 70

	.type	_liblwip_init.__str.5,@object # @_liblwip_init.__str.5
	.p2align	4
_liblwip_init.__str.5:
	.asciz	"Attach network device %u to lwIP...\n"
	.size	_liblwip_init.__str.5, 37

	.type	_liblwip_init.__str.6,@object # @_liblwip_init.__str.6
	.p2align	4
_liblwip_init.__str.6:
	.asciz	"Error converting IP address: %s\n"
	.size	_liblwip_init.__str.6, 33

	.type	_liblwip_init.__str.7,@object # @_liblwip_init.__str.7
	.p2align	4
_liblwip_init.__str.7:
	.asciz	"Error converting IP address: %s\n"
	.size	_liblwip_init.__str.7, 33

	.type	_liblwip_init.__str.8,@object # @_liblwip_init.__str.8
	.p2align	4
_liblwip_init.__str.8:
	.asciz	"Error converting net mask: %s\n"
	.size	_liblwip_init.__str.8, 31

	.type	_liblwip_init.__str.9,@object # @_liblwip_init.__str.9
	.p2align	4
_liblwip_init.__str.9:
	.asciz	"Error converting net mask: %s\n"
	.size	_liblwip_init.__str.9, 31

	.type	_liblwip_init.__str.10,@object # @_liblwip_init.__str.10
	.p2align	4
_liblwip_init.__str.10:
	.asciz	"Error converting gateway: %s\n"
	.size	_liblwip_init.__str.10, 30

	.type	_liblwip_init.__str.11,@object # @_liblwip_init.__str.11
	.p2align	4
_liblwip_init.__str.11:
	.asciz	"Error converting gateway: %s\n"
	.size	_liblwip_init.__str.11, 30

	.type	_liblwip_init.__str.12,@object # @_liblwip_init.__str.12
	.p2align	4
_liblwip_init.__str.12:
	.asciz	"Failed to attach network device %u to lwIP\n"
	.size	_liblwip_init.__str.12, 44

	.type	_liblwip_init.__str.13,@object # @_liblwip_init.__str.13
	.p2align	4
_liblwip_init.__str.13:
	.asciz	"Failed to attach network device %u to lwIP\n"
	.size	_liblwip_init.__str.13, 44

	.type	_liblwip_init.__str.15,@object # @_liblwip_init.__str.15
	.p2align	4
_liblwip_init.__str.15:
	.asciz	"%c%c%u: Set as default interface\n"
	.size	_liblwip_init.__str.15, 34

	.type	__uk_inittab39_liblwip_init,@object # @__uk_inittab39_liblwip_init
	.section	.uk_inittab39,"a",@progbits
	.p2align	3
__uk_inittab39_liblwip_init:
	.quad	liblwip_init
	.size	__uk_inittab39_liblwip_init, 8

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Assertion failure: %s\n"
	.size	.L.str, 23

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"a"
	.size	.L.str.16, 2

	.type	uk_pr_crit.__str,@object # @uk_pr_crit.__str
	.section	.data_shared,"aw",@progbits
uk_pr_crit.__str:
	.asciz	"liblwip"
	.size	uk_pr_crit.__str, 8

	.type	uk_pr_crit.__str.17,@object # @uk_pr_crit.__str.17
uk_pr_crit.__str.17:
	.asciz	"init.c"
	.size	uk_pr_crit.__str.17, 7

	.type	.L.str.18,@object       # @.str.18
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.18:
	.asciz	"s"
	.size	.L.str.18, 2

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"t"
	.size	.L.str.19, 2

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"current"
	.size	.L.str.20, 8

	.type	_netif_status_print.__str,@object # @_netif_status_print.__str
	.section	.data_shared,"aw",@progbits
_netif_status_print.__str:
	.asciz	"%c%c%u: Added\n"
	.size	_netif_status_print.__str, 15

	.type	_netif_status_print.__str.21,@object # @_netif_status_print.__str.21
_netif_status_print.__str.21:
	.asciz	"%c%c%u: Added\n"
	.size	_netif_status_print.__str.21, 15

	.type	_netif_status_print.__str.22,@object # @_netif_status_print.__str.22
	.p2align	4
_netif_status_print.__str.22:
	.asciz	"%c%c%u: Removed\n"
	.size	_netif_status_print.__str.22, 17

	.type	_netif_status_print.__str.23,@object # @_netif_status_print.__str.23
	.p2align	4
_netif_status_print.__str.23:
	.asciz	"%c%c%u: Removed\n"
	.size	_netif_status_print.__str.23, 17

	.type	_netif_status_print.__str.24,@object # @_netif_status_print.__str.24
_netif_status_print.__str.24:
	.asciz	"up"
	.size	_netif_status_print.__str.24, 3

	.type	_netif_status_print.__str.25,@object # @_netif_status_print.__str.25
_netif_status_print.__str.25:
	.asciz	"down"
	.size	_netif_status_print.__str.25, 5

	.type	_netif_status_print.__str.26,@object # @_netif_status_print.__str.26
	.p2align	4
_netif_status_print.__str.26:
	.asciz	"%c%c%u: Link is %s\n"
	.size	_netif_status_print.__str.26, 20

	.type	_netif_status_print.__str.27,@object # @_netif_status_print.__str.27
	.p2align	4
_netif_status_print.__str.27:
	.asciz	"%c%c%u: Link is %s\n"
	.size	_netif_status_print.__str.27, 20

	.type	_netif_status_print.__str.28,@object # @_netif_status_print.__str.28
_netif_status_print.__str.28:
	.asciz	"up"
	.size	_netif_status_print.__str.28, 3

	.type	_netif_status_print.__str.29,@object # @_netif_status_print.__str.29
_netif_status_print.__str.29:
	.asciz	"down"
	.size	_netif_status_print.__str.29, 5

	.type	_netif_status_print.__str.30,@object # @_netif_status_print.__str.30
	.p2align	4
_netif_status_print.__str.30:
	.asciz	"%c%c%u: Interface is %s\n"
	.size	_netif_status_print.__str.30, 25

	.type	_netif_status_print.__str.31,@object # @_netif_status_print.__str.31
	.p2align	4
_netif_status_print.__str.31:
	.asciz	"%c%c%u: Interface is %s\n"
	.size	_netif_status_print.__str.31, 25

	.type	_netif_status_print.__str.32,@object # @_netif_status_print.__str.32
	.p2align	4
_netif_status_print.__str.32:
	.asciz	"%c%c%u: Set IPv4 address %s mask %s\n"
	.size	_netif_status_print.__str.32, 37

	.type	_netif_status_print.__str.33,@object # @_netif_status_print.__str.33
	.p2align	4
_netif_status_print.__str.33:
	.asciz	"%c%c%u: Set IPv4 address %s mask %s\n"
	.size	_netif_status_print.__str.33, 37

	.type	_netif_status_print.__str.34,@object # @_netif_status_print.__str.34
	.p2align	4
_netif_status_print.__str.34:
	.asciz	"%c%c%u: Set IPv6 address %d: %s\n"
	.size	_netif_status_print.__str.34, 33

	.type	_netif_status_print.__str.35,@object # @_netif_status_print.__str.35
	.p2align	4
_netif_status_print.__str.35:
	.asciz	"%c%c%u: Set IPv6 address %d: %s\n"
	.size	_netif_status_print.__str.35, 33

	.type	_netif_status_print.__str.36,@object # @_netif_status_print.__str.36
	.p2align	4
_netif_status_print.__str.36:
	.asciz	"%c%c%u: Set IPv6 address %d: %s\n"
	.size	_netif_status_print.__str.36, 33

	.type	_netif_status_print.__str.37,@object # @_netif_status_print.__str.37
	.p2align	4
_netif_status_print.__str.37:
	.asciz	"%c%c%u: Set IPv6 address %d: %s\n"
	.size	_netif_status_print.__str.37, 33

	.type	uk_pr_err.__str,@object # @uk_pr_err.__str
uk_pr_err.__str:
	.asciz	"liblwip"
	.size	uk_pr_err.__str, 8

	.type	uk_pr_err.__str.38,@object # @uk_pr_err.__str.38
uk_pr_err.__str.38:
	.asciz	"init.c"
	.size	uk_pr_err.__str.38, 7

	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
