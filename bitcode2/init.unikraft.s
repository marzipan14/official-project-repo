	.text
	.file	"init.c"
	.globl	sys_init                # -- Begin function sys_init
	.p2align	4, 0x90
	.type	sys_init,@function
sys_init:                               # @sys_init
# %bb.0:
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	movl	$_intrstack_start, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jb	.LBB1_3
# %bb.1:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jbe	.LBB1_2
.LBB1_3:
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
	movl	$42, __A_VARIABLE(%rip)
	movl	-12(%rbp), %eax
	jmp	.LBB1_4
.LBB1_2:
	callq	_liblwip_init
	movl	$0, -12(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
.LBB1_4:
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	andq	$-65536, %rax           # imm = 0xFFFF0000
	movl	4096(%rax), %eax
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB4_96
# %bb.1:
	movl	$42, __A_VARIABLE(%rip)
	movl	$8, %esi
	callq	*(%rdi)
	movq	%rax, %r12
	movl	$42, __A_VARIABLE(%rip)
.LBB4_2:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	$0, (%r12)
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_intrstack_start, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jb	.LBB4_4
# %bb.3:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jbe	.LBB4_5
.LBB4_4:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	andq	$-65536, %rax           # imm = 0xFFFF0000
	movl	4096(%rax), %r15d
	movl	$42, __A_VARIABLE(%rip)
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
	jmp	.LBB4_6
.LBB4_5:
	movl	$42, __A_VARIABLE(%rip)
.LBB4_6:
	movl	$42, __A_VARIABLE(%rip)
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_intrstack_start, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jb	.LBB4_8
# %bb.7:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jbe	.LBB4_9
.LBB4_8:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	andq	$-65536, %rax           # imm = 0xFFFF0000
	movl	4096(%rax), %r15d
	movl	$42, __A_VARIABLE(%rip)
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
.LBB4_9:
	movl	$_lwip_init_sem, %edi
	xorl	%esi, %esi
	callq	uk_semaphore_init
.LBB4_10:
	movl	$42, __A_VARIABLE(%rip)
	movl	$_lwip_init_done, %edi
	xorl	%esi, %esi
	callq	tcpip_init
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_intrstack_start, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jb	.LBB4_12
# %bb.11:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jbe	.LBB4_13
.LBB4_12:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	andq	$-65536, %rax           # imm = 0xFFFF0000
	movl	4096(%rax), %r15d
	movl	$42, __A_VARIABLE(%rip)
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
.LBB4_13:
	movl	$_lwip_init_sem, %edi
	callq	uk_semaphore_down
.LBB4_14:
	movl	$42, __A_VARIABLE(%rip)
	movl	$netif_status_print, %edi
	movl	$_netif_status_print, %esi
	callq	netif_add_ext_callback
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_intrstack_start, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jb	.LBB4_16
# %bb.15:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jbe	.LBB4_17
.LBB4_16:
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
	movl	$42, __A_VARIABLE(%rip)
	movl	-68(%rbp), %eax
	jmp	.LBB4_18
.LBB4_17:
	callq	uk_netdev_count
	movl	%eax, -68(%rbp)
	movl	$42, __A_VARIABLE(%rip)
.LBB4_18:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB4_94
# %bb.19:
	movl	$1, -72(%rbp)           # 4-byte Folded Spill
	movl	$_intrstack_start, %ebx
	movl	$_end, %r13d
	xorl	%r14d, %r14d
	movq	%r12, -88(%rbp)         # 8-byte Spill
	jmp	.LBB4_23
	.p2align	4, 0x90
.LBB4_20:                               #   in Loop: Header=BB4_23 Depth=1
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	andq	$-65536, %rax           # imm = 0xFFFF0000
	movl	4096(%rax), %r15d
	movl	$42, __A_VARIABLE(%rip)
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
.LBB4_21:                               #   in Loop: Header=BB4_23 Depth=1
	movl	$42, __A_VARIABLE(%rip)
.LBB4_22:                               #   in Loop: Header=BB4_23 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	addq	$1, %r14
	movl	$42, __A_VARIABLE(%rip)
	movl	-68(%rbp), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rax, %r14
	jae	.LBB4_94
.LBB4_23:                               # =>This Inner Loop Header: Depth=1
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rbx, %rax
	jb	.LBB4_25
# %bb.24:                               #   in Loop: Header=BB4_23 Depth=1
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r13, %rax
	jbe	.LBB4_26
.LBB4_25:                               #   in Loop: Header=BB4_23 Depth=1
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	andq	$-65536, %rax           # imm = 0xFFFF0000
	movl	4096(%rax), %r15d
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	movq	-64(%rbp), %rax
	jmp	.LBB4_27
	.p2align	4, 0x90
.LBB4_26:                               #   in Loop: Header=BB4_23 Depth=1
	movl	%r14d, %edi
	callq	uk_netdev_get
	movq	%rax, -64(%rbp)
	movl	$42, __A_VARIABLE(%rip)
.LBB4_27:                               #   in Loop: Header=BB4_23 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB4_22
# %bb.28:                               #   in Loop: Header=BB4_23 Depth=1
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rbx, %rax
	jb	.LBB4_30
# %bb.29:                               #   in Loop: Header=BB4_23 Depth=1
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r13, %rax
	jbe	.LBB4_31
.LBB4_30:                               #   in Loop: Header=BB4_23 Depth=1
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	andq	$-65536, %rax           # imm = 0xFFFF0000
	movl	4096(%rax), %r15d
	movl	$42, __A_VARIABLE(%rip)
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
	movl	%r11d, -76(%rbp)

	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	-76(%rbp), %eax
	jmp	.LBB4_32
.LBB4_31:                               #   in Loop: Header=BB4_23 Depth=1
	movq	-64(%rbp), %rdi
	callq	uk_netdev_state_get
	movl	%eax, -76(%rbp)
	movl	$42, __A_VARIABLE(%rip)
.LBB4_32:                               #   in Loop: Header=BB4_23 Depth=1
	#APP
	movq	%rsp, %rcx
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1, %eax
	jne	.LBB4_36
# %bb.33:                               #   in Loop: Header=BB4_23 Depth=1
	cmpq	%rbx, %rcx
	jb	.LBB4_35
# %bb.34:                               #   in Loop: Header=BB4_23 Depth=1
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r13, %rax
	jbe	.LBB4_39
.LBB4_35:                               #   in Loop: Header=BB4_23 Depth=1
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	andq	$-65536, %rax           # imm = 0xFFFF0000
	movl	4096(%rax), %r15d
	movl	$42, __A_VARIABLE(%rip)
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
	jmp	.LBB4_40
	.p2align	4, 0x90
.LBB4_36:                               #   in Loop: Header=BB4_23 Depth=1
	cmpq	%rbx, %rcx
	jb	.LBB4_20
# %bb.37:                               #   in Loop: Header=BB4_23 Depth=1
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r13, %rax
	ja	.LBB4_20
# %bb.38:                               #   in Loop: Header=BB4_23 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB4_21
.LBB4_39:                               #   in Loop: Header=BB4_23 Depth=1
	movl	$42, __A_VARIABLE(%rip)
.LBB4_40:                               #   in Loop: Header=BB4_23 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rbx, %rax
	jb	.LBB4_42
# %bb.41:                               #   in Loop: Header=BB4_23 Depth=1
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r13, %rax
	jbe	.LBB4_43
.LBB4_42:                               #   in Loop: Header=BB4_23 Depth=1
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	andq	$-65536, %rax           # imm = 0xFFFF0000
	movl	4096(%rax), %r15d
	movl	$42, __A_VARIABLE(%rip)
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
	jmp	.LBB4_44
.LBB4_43:                               #   in Loop: Header=BB4_23 Depth=1
	movq	-64(%rbp), %rdi
	movl	$1, %esi
	movq	%r12, %rdx
	callq	uk_netdev_einfo_get_with_copy
.LBB4_44:                               #   in Loop: Header=BB4_23 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	(%r12), %rdi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB4_49
# %bb.45:                               #   in Loop: Header=BB4_23 Depth=1
	leaq	-48(%rbp), %rsi
	callq	ip4addr_aton
	movl	$42, __A_VARIABLE(%rip)
	#APP
	movq	%rsp, %rcx
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1, %eax
	jne	.LBB4_50
# %bb.46:                               #   in Loop: Header=BB4_23 Depth=1
	cmpq	%rbx, %rcx
	jb	.LBB4_48
# %bb.47:                               #   in Loop: Header=BB4_23 Depth=1
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r13, %rax
	jbe	.LBB4_53
.LBB4_48:                               #   in Loop: Header=BB4_23 Depth=1
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	andq	$-65536, %rax           # imm = 0xFFFF0000
	movl	4096(%rax), %r15d
	movl	$42, __A_VARIABLE(%rip)
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
	jmp	.LBB4_54
.LBB4_49:                               #   in Loop: Header=BB4_23 Depth=1
	movl	$_intrstack_start, %r13d
	jmp	.LBB4_65
.LBB4_50:                               #   in Loop: Header=BB4_23 Depth=1
	movl	$_intrstack_start, %r13d
	cmpq	%rbx, %rcx
	jb	.LBB4_52
# %bb.51:                               #   in Loop: Header=BB4_23 Depth=1
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
	cmpq	%rcx, %rax
	jbe	.LBB4_63
.LBB4_52:                               #   in Loop: Header=BB4_23 Depth=1
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	andq	$-65536, %rax           # imm = 0xFFFF0000
	movl	4096(%rax), %r15d
	movl	$42, __A_VARIABLE(%rip)
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
	jmp	.LBB4_64
.LBB4_53:                               #   in Loop: Header=BB4_23 Depth=1
	movq	-64(%rbp), %rdi
	movl	$3, %esi
	movq	%r12, %rdx
	callq	uk_netdev_einfo_get_with_copy
.LBB4_54:                               #   in Loop: Header=BB4_23 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	(%r12), %rdi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB4_59
# %bb.55:                               #   in Loop: Header=BB4_23 Depth=1
	leaq	-56(%rbp), %rsi
	callq	ip4addr_aton
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1, %eax
	je	.LBB4_60
# %bb.56:                               #   in Loop: Header=BB4_23 Depth=1
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$_intrstack_start, %r13d
	cmpq	%rbx, %rax
	jb	.LBB4_58
# %bb.57:                               #   in Loop: Header=BB4_23 Depth=1
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
	cmpq	%rcx, %rax
	jbe	.LBB4_74
.LBB4_58:                               #   in Loop: Header=BB4_23 Depth=1
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	andq	$-65536, %rax           # imm = 0xFFFF0000
	movl	4096(%rax), %r15d
	movl	$42, __A_VARIABLE(%rip)
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
	jmp	.LBB4_75
.LBB4_59:                               #   in Loop: Header=BB4_23 Depth=1
	movl	$-256, %edi
	callq	lwip_htonl
	movl	%eax, -56(%rbp)
	movl	$42, __A_VARIABLE(%rip)
.LBB4_60:                               #   in Loop: Header=BB4_23 Depth=1
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rbx, %rax
	jb	.LBB4_62
# %bb.61:                               #   in Loop: Header=BB4_23 Depth=1
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r13, %rax
	jbe	.LBB4_66
.LBB4_62:                               #   in Loop: Header=BB4_23 Depth=1
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	andq	$-65536, %rax           # imm = 0xFFFF0000
	movl	4096(%rax), %r15d
	movl	$42, __A_VARIABLE(%rip)
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
	jmp	.LBB4_67
.LBB4_63:                               #   in Loop: Header=BB4_23 Depth=1
	movq	(%r12), %rsi
	movl	$_liblwip_init.__str.6, %edi
	xorl	%eax, %eax
	callq	uk_pr_err
.LBB4_64:                               #   in Loop: Header=BB4_23 Depth=1
	movl	$42, __A_VARIABLE(%rip)
.LBB4_65:                               #   in Loop: Header=BB4_23 Depth=1
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	xorl	%esi, %esi
	jmp	.LBB4_81
.LBB4_66:                               #   in Loop: Header=BB4_23 Depth=1
	movq	-64(%rbp), %rdi
	movl	$5, %esi
	movq	%r12, %rdx
	callq	uk_netdev_einfo_get_with_copy
.LBB4_67:                               #   in Loop: Header=BB4_23 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	(%r12), %rdi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	leaq	-96(%rbp), %rsi
	je	.LBB4_70
# %bb.68:                               #   in Loop: Header=BB4_23 Depth=1
	movq	%rsi, %r15
	callq	ip4addr_aton
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1, %eax
	jne	.LBB4_71
# %bb.69:                               #   in Loop: Header=BB4_23 Depth=1
	movl	$_intrstack_start, %r13d
	movl	$42, __A_VARIABLE(%rip)
	movq	%r15, %rcx
	jmp	.LBB4_79
.LBB4_70:                               #   in Loop: Header=BB4_23 Depth=1
	movl	$_intrstack_start, %r13d
	jmp	.LBB4_78
.LBB4_71:                               #   in Loop: Header=BB4_23 Depth=1
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$_intrstack_start, %r13d
	cmpq	%rbx, %rax
	jb	.LBB4_73
# %bb.72:                               #   in Loop: Header=BB4_23 Depth=1
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
	cmpq	%rcx, %rax
	jbe	.LBB4_76
.LBB4_73:                               #   in Loop: Header=BB4_23 Depth=1
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	andq	$-65536, %rax           # imm = 0xFFFF0000
	movl	4096(%rax), %r15d
	movl	$42, __A_VARIABLE(%rip)
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
	jmp	.LBB4_77
.LBB4_74:                               #   in Loop: Header=BB4_23 Depth=1
	movq	(%r12), %rsi
	movl	$_liblwip_init.__str.8, %edi
	xorl	%eax, %eax
	callq	uk_pr_err
.LBB4_75:                               #   in Loop: Header=BB4_23 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	jmp	.LBB4_80
.LBB4_76:                               #   in Loop: Header=BB4_23 Depth=1
	movq	(%r12), %rsi
	movl	$_liblwip_init.__str.10, %edi
	xorl	%eax, %eax
	callq	uk_pr_err
.LBB4_77:                               #   in Loop: Header=BB4_23 Depth=1
	movl	$42, __A_VARIABLE(%rip)
.LBB4_78:                               #   in Loop: Header=BB4_23 Depth=1
	xorl	%ecx, %ecx
.LBB4_79:                               #   in Loop: Header=BB4_23 Depth=1
	leaq	-56(%rbp), %rdx
.LBB4_80:                               #   in Loop: Header=BB4_23 Depth=1
	leaq	-48(%rbp), %rsi
.LBB4_81:                               #   in Loop: Header=BB4_23 Depth=1
	movq	-64(%rbp), %rdi
	callq	uknetdev_addif
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB4_86
# %bb.82:                               #   in Loop: Header=BB4_23 Depth=1
	movq	%rax, %rbx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$0, -72(%rbp)           # 4-byte Folded Reload
	je	.LBB4_91
# %bb.83:                               #   in Loop: Header=BB4_23 Depth=1
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r13, %rax
	jb	.LBB4_85
# %bb.84:                               #   in Loop: Header=BB4_23 Depth=1
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
	cmpq	%rcx, %rax
	jbe	.LBB4_89
.LBB4_85:                               #   in Loop: Header=BB4_23 Depth=1
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	andq	$-65536, %rax           # imm = 0xFFFF0000
	movl	4096(%rax), %r15d
	movl	$42, __A_VARIABLE(%rip)
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
	jmp	.LBB4_90
.LBB4_86:                               #   in Loop: Header=BB4_23 Depth=1
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$_intrstack_start, %ebx
	cmpq	%rbx, %rax
	movl	$_end, %r13d
	jb	.LBB4_88
# %bb.87:                               #   in Loop: Header=BB4_23 Depth=1
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r13, %rax
	jbe	.LBB4_92
.LBB4_88:                               #   in Loop: Header=BB4_23 Depth=1
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	andq	$-65536, %rax           # imm = 0xFFFF0000
	movl	4096(%rax), %r15d
	movl	$42, __A_VARIABLE(%rip)
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
	jmp	.LBB4_93
.LBB4_89:                               #   in Loop: Header=BB4_23 Depth=1
	movl	$42, __A_VARIABLE(%rip)
.LBB4_90:                               #   in Loop: Header=BB4_23 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rdi
	callq	netif_set_default
	movl	$42, __A_VARIABLE(%rip)
.LBB4_91:                               #   in Loop: Header=BB4_23 Depth=1
	movq	%rbx, %rdi
	callq	netif_set_up
	movl	$0, -72(%rbp)           # 4-byte Folded Spill
	movq	-88(%rbp), %r12         # 8-byte Reload
	movl	$_intrstack_start, %ebx
	movl	$_end, %r13d
	jmp	.LBB4_22
.LBB4_92:                               #   in Loop: Header=BB4_23 Depth=1
	movl	$_liblwip_init.__str.12, %edi
	movl	%r14d, %esi
	xorl	%eax, %eax
	callq	uk_pr_err
.LBB4_93:                               #   in Loop: Header=BB4_23 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	-88(%rbp), %r12         # 8-byte Reload
	jmp	.LBB4_22
.LBB4_94:
	movq	flexos_shared_alloc(%rip), %rdi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB4_97
# %bb.95:
	movq	%r12, %rsi
	callq	*40(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB4_96:
	callq	__errno
	movl	$12, (%rax)
	xorl	%r12d, %r12d
	jmp	.LBB4_2
.LBB4_97:
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
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	movl	$_intrstack_start, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jb	.LBB6_6
# %bb.1:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jbe	.LBB6_2
.LBB6_6:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	andq	$-65536, %rax           # imm = 0xFFFF0000
	movl	4096(%rax), %r15d
	movl	$42, __A_VARIABLE(%rip)
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
	jmp	.LBB6_7
.LBB6_2:
	movl	$42, __A_VARIABLE(%rip)
	callq	ukplat_lcpu_save_irqf
	movq	%rax, %r14
	addq	$1, _lwip_init_sem(%rip)
	callq	ukplat_lcpu_save_irqf
	movq	%rax, %r15
	movq	_lwip_init_sem+8(%rip), %rbx
	.p2align	4, 0x90
.LBB6_4:                                # =>This Inner Loop Header: Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	je	.LBB6_5
# %bb.3:                                #   in Loop: Header=BB6_4 Depth=1
	movq	8(%rbx), %rdi
	movq	16(%rbx), %rbx
	callq	uk_thread_wake
	jmp	.LBB6_4
.LBB6_5:
	movq	%r15, %rdi
	callq	ukplat_lcpu_restore_irqf
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %rdi
	callq	ukplat_lcpu_restore_irqf
	movl	$42, __A_VARIABLE(%rip)
.LBB6_7:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
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
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB7_8
# %bb.1:
	movq	%rdi, %r14
	leaq	8(%rdi), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	.p2align	4, 0x90
.LBB7_2:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_4 Depth 2
                                        #     Child Loop BB7_21 Depth 2
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	andq	$-65536, %rax           # imm = 0xFFFF0000
	movslq	4096(%rax), %r15
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	andq	$-65536, %rax           # imm = 0xFFFF0000
	movq	(%rax), %rax
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, wq_entries+8(%rbx,%rbx,2)
	cmpq	$0, (%r14)
	movl	$42, __A_VARIABLE(%rip)
	jg	.LBB7_27
# %bb.3:                                #   in Loop: Header=BB7_2 Depth=1
	leaq	(%r15,%r15,2), %rax
	leaq	wq_entries+16(,%rax,8), %r13
	.p2align	4, 0x90
.LBB7_4:                                #   Parent Loop BB7_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	andq	$-65536, %rax           # imm = 0xFFFF0000
	movq	(%rax), %rbx
	movl	$42, __A_VARIABLE(%rip)
	callq	ukplat_lcpu_save_irqf
	movq	%rax, %r15
	cmpl	$0, (%r12)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB7_6
# %bb.5:                                #   in Loop: Header=BB7_4 Depth=2
	movq	$0, (%r13)
	movq	16(%r14), %rax
	movq	%r12, (%rax)
	movq	%r13, 16(%r14)
	movl	$1, (%r12)
	movl	$42, __A_VARIABLE(%rip)
.LBB7_6:                                #   in Loop: Header=BB7_4 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movq	$0, 56(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	andb	$-2, 48(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	je	.LBB7_7
# %bb.10:                               #   in Loop: Header=BB7_4 Depth=2
	movq	88(%rbx), %rdi
	movq	%rbx, %rsi
	callq	*24(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r15, %rdi
	callq	ukplat_lcpu_restore_irqf
	cmpq	$0, (%r14)
	movl	$42, __A_VARIABLE(%rip)
	jg	.LBB7_15
# %bb.11:                               #   in Loop: Header=BB7_4 Depth=2
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	andq	$-65536, %rax           # imm = 0xFFFF0000
	movq	(%rax), %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB7_12
# %bb.13:                               #   in Loop: Header=BB7_4 Depth=2
	movq	88(%rax), %rdi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB7_8
# %bb.14:                               #   in Loop: Header=BB7_4 Depth=2
	callq	*(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB7_4
	.p2align	4, 0x90
.LBB7_15:                               #   in Loop: Header=BB7_2 Depth=1
	callq	ukplat_lcpu_save_irqf
	movq	%rax, %r15
	movq	%rbx, %rdi
	callq	uk_thread_wake
	cmpl	$0, (%r12)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB7_26
# %bb.16:                               #   in Loop: Header=BB7_2 Depth=1
	movq	-48(%rbp), %rcx         # 8-byte Reload
	movq	(%rcx), %rax
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r12, %rax
	je	.LBB7_17
# %bb.19:                               #   in Loop: Header=BB7_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	16(%rax), %rcx
	.p2align	4, 0x90
.LBB7_21:                               #   Parent Loop BB7_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r12, %rcx
	je	.LBB7_22
# %bb.20:                               #   in Loop: Header=BB7_21 Depth=2
	movq	%rcx, %rax
	movl	$42, __A_VARIABLE(%rip)
	movq	16(%rcx), %rcx
	jmp	.LBB7_21
.LBB7_22:                               #   in Loop: Header=BB7_2 Depth=1
	addq	$16, %rax
	movq	(%r13), %rcx
	movq	%rcx, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rcx, %rcx
	jne	.LBB7_24
# %bb.23:                               #   in Loop: Header=BB7_2 Depth=1
	movq	%rax, 16(%r14)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB7_24
.LBB7_17:                               #   in Loop: Header=BB7_2 Depth=1
	movq	(%r13), %rax
	movq	%rax, (%rcx)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	jne	.LBB7_25
# %bb.18:                               #   in Loop: Header=BB7_2 Depth=1
	movq	%rcx, 16(%r14)
.LBB7_24:                               #   in Loop: Header=BB7_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
.LBB7_25:                               #   in Loop: Header=BB7_2 Depth=1
	movl	$0, (%r12)
	movl	$42, __A_VARIABLE(%rip)
.LBB7_26:                               #   in Loop: Header=BB7_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	%r15, %rdi
	callq	ukplat_lcpu_restore_irqf
.LBB7_27:                               #   in Loop: Header=BB7_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	callq	ukplat_lcpu_save_irqf
	movq	(%r14), %rcx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rcx, %rcx
	jg	.LBB7_29
# %bb.28:                               #   in Loop: Header=BB7_2 Depth=1
	movq	%rax, %rdi
	callq	ukplat_lcpu_restore_irqf
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB7_2
.LBB7_29:
	addq	$-1, %rcx
	movq	%rcx, (%r14)
	movq	%rax, %rdi
	callq	ukplat_lcpu_restore_irqf
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
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
	movl	$42, __A_VARIABLE
	cmpl	$0, %eax
	je	.LBB8_15
# %bb.1:
	movl	$42, __A_VARIABLE
# %bb.2:
	callq	ukarch_read_sp
	movl	$42, __A_VARIABLE
	movabsq	$_intrstack_start, %rcx
	cmpq	%rcx, %rax
	jb	.LBB8_5
# %bb.3:
	callq	ukarch_read_sp
	movl	$42, __A_VARIABLE
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
	movl	$42, __A_VARIABLE
	jmp	.LBB8_12
.LBB8_5:
	movl	$42, __A_VARIABLE
# %bb.6:
	movl	$42, __A_VARIABLE
# %bb.7:
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
	movl	$42, __A_VARIABLE
# %bb.8:
	movl	$42, __A_VARIABLE
# %bb.9:
	movl	$42, __A_VARIABLE
# %bb.10:
	movl	$42, __A_VARIABLE
# %bb.11:
	movl	$42, __A_VARIABLE
.LBB8_12:
	movl	$42, __A_VARIABLE
# %bb.13:
	movl	$42, __A_VARIABLE
# %bb.14:
	movl	$42, __A_VARIABLE
.LBB8_15:
	movzwl	-50(%rbp), %eax
	andl	$2, %eax
	movl	$42, __A_VARIABLE
	cmpl	$0, %eax
	je	.LBB8_30
# %bb.16:
	movl	$42, __A_VARIABLE
# %bb.17:
	callq	ukarch_read_sp
	movl	$42, __A_VARIABLE
	movabsq	$_intrstack_start, %rcx
	cmpq	%rcx, %rax
	jb	.LBB8_20
# %bb.18:
	callq	ukarch_read_sp
	movl	$42, __A_VARIABLE
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
	movl	$42, __A_VARIABLE
	jmp	.LBB8_27
.LBB8_20:
	movl	$42, __A_VARIABLE
# %bb.21:
	movl	$42, __A_VARIABLE
# %bb.22:
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
	movl	$42, __A_VARIABLE
# %bb.23:
	movl	$42, __A_VARIABLE
# %bb.24:
	movl	$42, __A_VARIABLE
# %bb.25:
	movl	$42, __A_VARIABLE
# %bb.26:
	movl	$42, __A_VARIABLE
.LBB8_27:
	movl	$42, __A_VARIABLE
# %bb.28:
	movl	$42, __A_VARIABLE
# %bb.29:
	movl	$42, __A_VARIABLE
.LBB8_30:
	movzwl	-50(%rbp), %eax
	andl	$4, %eax
	movl	$42, __A_VARIABLE
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
	movl	$42, __A_VARIABLE
# %bb.32:
	callq	ukarch_read_sp
	movl	$42, __A_VARIABLE
	movabsq	$_intrstack_start, %rcx
	cmpq	%rcx, %rax
	jb	.LBB8_35
# %bb.33:
	callq	ukarch_read_sp
	movl	$42, __A_VARIABLE
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
	movl	$42, __A_VARIABLE
	jmp	.LBB8_42
.LBB8_35:
	movl	$42, __A_VARIABLE
# %bb.36:
	movl	$42, __A_VARIABLE
# %bb.37:
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
	movl	$42, __A_VARIABLE
# %bb.38:
	movl	$42, __A_VARIABLE
# %bb.39:
	movl	$42, __A_VARIABLE
# %bb.40:
	movl	$42, __A_VARIABLE
# %bb.41:
	movl	$42, __A_VARIABLE
.LBB8_42:
	movl	$42, __A_VARIABLE
# %bb.43:
	movl	$42, __A_VARIABLE
# %bb.44:
	movl	$42, __A_VARIABLE
.LBB8_45:
	movzwl	-50(%rbp), %eax
	andl	$8, %eax
	movl	$42, __A_VARIABLE
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
	movl	$42, __A_VARIABLE
# %bb.47:
	callq	ukarch_read_sp
	movl	$42, __A_VARIABLE
	movabsq	$_intrstack_start, %rcx
	cmpq	%rcx, %rax
	jb	.LBB8_50
# %bb.48:
	callq	ukarch_read_sp
	movl	$42, __A_VARIABLE
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
	movl	$42, __A_VARIABLE
	jmp	.LBB8_57
.LBB8_50:
	movl	$42, __A_VARIABLE
# %bb.51:
	movl	$42, __A_VARIABLE
# %bb.52:
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
	movl	$42, __A_VARIABLE
# %bb.53:
	movl	$42, __A_VARIABLE
# %bb.54:
	movl	$42, __A_VARIABLE
# %bb.55:
	movl	$42, __A_VARIABLE
# %bb.56:
	movl	$42, __A_VARIABLE
.LBB8_57:
	movl	$42, __A_VARIABLE
# %bb.58:
	movl	$42, __A_VARIABLE
# %bb.59:
	movl	$42, __A_VARIABLE
.LBB8_60:
	movzwl	-50(%rbp), %eax
	andl	$128, %eax
	movl	$42, __A_VARIABLE
	cmpl	$0, %eax
	jne	.LBB8_64
# %bb.61:
	movzwl	-50(%rbp), %eax
	andl	$16, %eax
	movl	$42, __A_VARIABLE
	cmpl	$0, %eax
	jne	.LBB8_64
# %bb.62:
	movzwl	-50(%rbp), %eax
	andl	$64, %eax
	movl	$42, __A_VARIABLE
	cmpl	$0, %eax
	jne	.LBB8_64
# %bb.63:
	movzwl	-50(%rbp), %eax
	andl	$32, %eax
	movl	$42, __A_VARIABLE
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
	movl	$42, __A_VARIABLE
# %bb.65:
	callq	ukarch_read_sp
	movl	$42, __A_VARIABLE
	movabsq	$_intrstack_start, %rcx
	cmpq	%rcx, %rax
	jb	.LBB8_68
# %bb.66:
	callq	ukarch_read_sp
	movl	$42, __A_VARIABLE
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
	movl	$42, __A_VARIABLE
	jmp	.LBB8_75
.LBB8_68:
	movl	$42, __A_VARIABLE
# %bb.69:
	movl	$42, __A_VARIABLE
# %bb.70:
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
	movl	$42, __A_VARIABLE
# %bb.71:
	movl	$42, __A_VARIABLE
# %bb.72:
	movl	$42, __A_VARIABLE
# %bb.73:
	movl	$42, __A_VARIABLE
# %bb.74:
	movl	$42, __A_VARIABLE
.LBB8_75:
	movl	$42, __A_VARIABLE
# %bb.76:
	movl	$42, __A_VARIABLE
# %bb.77:
	movl	$42, __A_VARIABLE
.LBB8_78:
	movzwl	-50(%rbp), %eax
	andl	$256, %eax              # imm = 0x100
	movl	$42, __A_VARIABLE
	cmpl	$0, %eax
	je	.LBB8_93
# %bb.79:
	movl	$42, __A_VARIABLE
# %bb.80:
	callq	ukarch_read_sp
	movl	$42, __A_VARIABLE
	movabsq	$_intrstack_start, %rcx
	cmpq	%rcx, %rax
	jb	.LBB8_83
# %bb.81:
	callq	ukarch_read_sp
	movl	$42, __A_VARIABLE
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
	movl	$42, __A_VARIABLE
	jmp	.LBB8_90
.LBB8_83:
	movl	$42, __A_VARIABLE
# %bb.84:
	movl	$42, __A_VARIABLE
# %bb.85:
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
	movl	$42, __A_VARIABLE
# %bb.86:
	movl	$42, __A_VARIABLE
# %bb.87:
	movl	$42, __A_VARIABLE
# %bb.88:
	movl	$42, __A_VARIABLE
# %bb.89:
	movl	$42, __A_VARIABLE
.LBB8_90:
	movl	$42, __A_VARIABLE
# %bb.91:
	movl	$42, __A_VARIABLE
# %bb.92:
	movl	$42, __A_VARIABLE
.LBB8_93:
	movzwl	-50(%rbp), %eax
	andl	$512, %eax              # imm = 0x200
	movl	$42, __A_VARIABLE
	cmpl	$0, %eax
	je	.LBB8_108
# %bb.94:
	movl	$42, __A_VARIABLE
# %bb.95:
	callq	ukarch_read_sp
	movl	$42, __A_VARIABLE
	movabsq	$_intrstack_start, %rcx
	cmpq	%rcx, %rax
	jb	.LBB8_98
# %bb.96:
	callq	ukarch_read_sp
	movl	$42, __A_VARIABLE
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
	movl	$42, __A_VARIABLE
	jmp	.LBB8_105
.LBB8_98:
	movl	$42, __A_VARIABLE
# %bb.99:
	movl	$42, __A_VARIABLE
# %bb.100:
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
	movl	$42, __A_VARIABLE
# %bb.101:
	movl	$42, __A_VARIABLE
# %bb.102:
	movl	$42, __A_VARIABLE
# %bb.103:
	movl	$42, __A_VARIABLE
# %bb.104:
	movl	$42, __A_VARIABLE
.LBB8_105:
	movl	$42, __A_VARIABLE
# %bb.106:
	movl	$42, __A_VARIABLE
# %bb.107:
	movl	$42, __A_VARIABLE
.LBB8_108:
	movl	$42, __A_VARIABLE
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
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB9_1
# %bb.2:
	movq	%rax, %r15
	movq	(%r14), %rsi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rsi, %rsi
	je	.LBB9_5
# %bb.3:
	movq	flexos_shared_alloc(%rip), %rdi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB9_10
# %bb.4:
	callq	*40(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB9_5:
	movq	flexos_shared_alloc(%rip), %rbx
	movq	%r15, %rdi
	callq	strlen
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	je	.LBB9_6
# %bb.7:
	addq	$1, %rax
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	*(%rbx)
	movq	%rax, %rdi
	movl	$42, __A_VARIABLE(%rip)
.LBB9_8:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rdi, (%r14)
	movq	%r15, %rsi
	callq	strcpy
	jmp	.LBB9_9
.LBB9_1:
	movq	$0, (%r14)
.LBB9_9:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB9_6:
	callq	__errno
	movl	$12, (%rax)
	xorl	%edi, %edi
	jmp	.LBB9_8
.LBB9_10:
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
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
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
	.p2align	4, 0x90
.LBB12_3:                               # =>This Inner Loop Header: Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	je	.LBB12_4
# %bb.2:                                #   in Loop: Header=BB12_3 Depth=1
	movq	8(%rbx), %rdi
	movq	16(%rbx), %rbx
	callq	uk_thread_wake
	jmp	.LBB12_3
.LBB12_4:
	movq	%r15, %rdi
	callq	ukplat_lcpu_restore_irqf
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %rdi
	callq	ukplat_lcpu_restore_irqf
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
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

	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
