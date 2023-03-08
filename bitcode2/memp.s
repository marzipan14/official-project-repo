	.text
	.file	"memp.c"
	.globl	memp_init_pool          # -- Begin function memp_init_pool
	.p2align	4, 0x90
	.type	memp_init_pool,@function
memp_init_pool:                         # @memp_init_pool
# %bb.0:
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end0:
	.size	memp_init_pool, .Lfunc_end0-memp_init_pool
                                        # -- End function
	.globl	memp_init               # -- Begin function memp_init
	.p2align	4, 0x90
	.type	memp_init,@function
memp_init:                              # @memp_init
# %bb.0:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end1:
	.size	memp_init, .Lfunc_end1-memp_init
                                        # -- End function
	.globl	memp_malloc_pool        # -- Begin function memp_malloc_pool
	.p2align	4, 0x90
	.type	memp_malloc_pool,@function
memp_malloc_pool:                       # @memp_malloc_pool
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB2_4
# %bb.1:
	movl	$42, __A_VARIABLE(%rip)
	movzwl	(%rdi), %edi
	callq	mem_malloc
	movq	%rax, %rbx
	callq	ukplat_lcpu_save_irqf
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	je	.LBB2_3
# %bb.2:
	movl	$42, __A_VARIABLE(%rip)
.LBB2_3:
	movq	%rax, %rdi
	callq	ukplat_lcpu_restore_irqf
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.LBB2_4:
	movl	$.L.str, %edi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$.L.str.1, %edi
	movl	$.L.str.2, %esi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$3, %edi
	callq	ukplat_terminate
.Lfunc_end2:
	.size	memp_malloc_pool, .Lfunc_end2-memp_malloc_pool
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
	je	.LBB3_2
# %bb.1:
	movaps	%xmm0, -160(%rbp)
	movaps	%xmm1, -144(%rbp)
	movaps	%xmm2, -128(%rbp)
	movaps	%xmm3, -112(%rbp)
	movaps	%xmm4, -96(%rbp)
	movaps	%xmm5, -80(%rbp)
	movaps	%xmm6, -64(%rbp)
	movaps	%xmm7, -48(%rbp)
.LBB3_2:
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
	movl	$uk_pr_crit.__str.5, %edx
	xorl	%edi, %edi
	movl	$198, %ecx
	movq	%r10, %r8
	callq	_uk_vprintk
	movl	$42, __A_VARIABLE(%rip)
	addq	$208, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	uk_pr_crit, .Lfunc_end3-uk_pr_crit
                                        # -- End function
	.globl	memp_malloc             # -- Begin function memp_malloc
	.p2align	4, 0x90
	.type	memp_malloc,@function
memp_malloc:                            # @memp_malloc
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$17, %edi
	jae	.LBB4_4
# %bb.1:
	movl	%edi, %eax
	movq	memp_pools(,%rax,8), %rax
	movzwl	(%rax), %edi
	callq	mem_malloc
	movq	%rax, %rbx
	callq	ukplat_lcpu_save_irqf
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	je	.LBB4_3
# %bb.2:
	movl	$42, __A_VARIABLE(%rip)
.LBB4_3:
	movq	%rax, %rdi
	callq	ukplat_lcpu_restore_irqf
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.LBB4_4:
	movl	$.L.str.3, %edi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$.L.str.1, %edi
	movl	$.L.str.2, %esi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$3, %edi
	callq	ukplat_terminate
.Lfunc_end4:
	.size	memp_malloc, .Lfunc_end4-memp_malloc
                                        # -- End function
	.globl	memp_free_pool          # -- Begin function memp_free_pool
	.p2align	4, 0x90
	.type	memp_free_pool,@function
memp_free_pool:                         # @memp_free_pool
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB5_4
# %bb.1:
	movq	%rsi, %rbx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rsi, %rsi
	je	.LBB5_3
# %bb.2:
	movl	$42, __A_VARIABLE(%rip)
	callq	ukplat_lcpu_save_irqf
	movq	%rax, %rdi
	callq	ukplat_lcpu_restore_irqf
	movq	%rbx, %rdi
	callq	mem_free
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB5_3:
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.LBB5_4:
	movl	$.L.str, %edi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$.L.str.1, %edi
	movl	$.L.str.2, %esi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$3, %edi
	callq	ukplat_terminate
.Lfunc_end5:
	.size	memp_free_pool, .Lfunc_end5-memp_free_pool
                                        # -- End function
	.globl	memp_free               # -- Begin function memp_free
	.p2align	4, 0x90
	.type	memp_free,@function
memp_free:                              # @memp_free
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$17, %edi
	jae	.LBB6_4
# %bb.1:
	movq	%rsi, %rbx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rsi, %rsi
	je	.LBB6_3
# %bb.2:
	movl	$42, __A_VARIABLE(%rip)
	callq	ukplat_lcpu_save_irqf
	movq	%rax, %rdi
	callq	ukplat_lcpu_restore_irqf
	movq	%rbx, %rdi
	callq	mem_free
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB6_3:
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.LBB6_4:
	movl	$.L.str.4, %edi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$.L.str.1, %edi
	movl	$.L.str.2, %esi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$3, %edi
	callq	ukplat_terminate
.Lfunc_end6:
	.size	memp_free, .Lfunc_end6-memp_free
                                        # -- End function
	.type	memp_UDP_PCB,@object    # @memp_UDP_PCB
	.section	.rodata,"a",@progbits
	.globl	memp_UDP_PCB
	.p2align	1
memp_UDP_PCB:
	.short	96                      # 0x60
	.size	memp_UDP_PCB, 2

	.type	memp_TCP_PCB,@object    # @memp_TCP_PCB
	.globl	memp_TCP_PCB
	.p2align	1
memp_TCP_PCB:
	.short	280                     # 0x118
	.size	memp_TCP_PCB, 2

	.type	memp_TCP_PCB_LISTEN,@object # @memp_TCP_PCB_LISTEN
	.globl	memp_TCP_PCB_LISTEN
	.p2align	1
memp_TCP_PCB_LISTEN:
	.short	88                      # 0x58
	.size	memp_TCP_PCB_LISTEN, 2

	.type	memp_TCP_SEG,@object    # @memp_TCP_SEG
	.globl	memp_TCP_SEG
	.p2align	1
memp_TCP_SEG:
	.short	32                      # 0x20
	.size	memp_TCP_SEG, 2

	.type	memp_REASSDATA,@object  # @memp_REASSDATA
	.globl	memp_REASSDATA
	.p2align	1
memp_REASSDATA:
	.short	40                      # 0x28
	.size	memp_REASSDATA, 2

	.type	memp_FRAG_PBUF,@object  # @memp_FRAG_PBUF
	.globl	memp_FRAG_PBUF
	.p2align	1
memp_FRAG_PBUF:
	.short	40                      # 0x28
	.size	memp_FRAG_PBUF, 2

	.type	memp_NETBUF,@object     # @memp_NETBUF
	.globl	memp_NETBUF
	.p2align	1
memp_NETBUF:
	.short	48                      # 0x30
	.size	memp_NETBUF, 2

	.type	memp_NETCONN,@object    # @memp_NETCONN
	.globl	memp_NETCONN
	.p2align	1
memp_NETCONN:
	.short	128                     # 0x80
	.size	memp_NETCONN, 2

	.type	memp_TCPIP_MSG_API,@object # @memp_TCPIP_MSG_API
	.globl	memp_TCPIP_MSG_API
	.p2align	1
memp_TCPIP_MSG_API:
	.short	32                      # 0x20
	.size	memp_TCPIP_MSG_API, 2

	.type	memp_TCPIP_MSG_INPKT,@object # @memp_TCPIP_MSG_INPKT
	.globl	memp_TCPIP_MSG_INPKT
	.p2align	1
memp_TCPIP_MSG_INPKT:
	.short	32                      # 0x20
	.size	memp_TCPIP_MSG_INPKT, 2

	.type	memp_SYS_TIMEOUT,@object # @memp_SYS_TIMEOUT
	.globl	memp_SYS_TIMEOUT
	.p2align	1
memp_SYS_TIMEOUT:
	.short	32                      # 0x20
	.size	memp_SYS_TIMEOUT, 2

	.type	memp_NETDB,@object      # @memp_NETDB
	.globl	memp_NETDB
	.p2align	1
memp_NETDB:
	.short	333                     # 0x14d
	.size	memp_NETDB, 2

	.type	memp_ND6_QUEUE,@object  # @memp_ND6_QUEUE
	.globl	memp_ND6_QUEUE
	.p2align	1
memp_ND6_QUEUE:
	.short	16                      # 0x10
	.size	memp_ND6_QUEUE, 2

	.type	memp_IP6_REASSDATA,@object # @memp_IP6_REASSDATA
	.globl	memp_IP6_REASSDATA
	.p2align	1
memp_IP6_REASSDATA:
	.short	88                      # 0x58
	.size	memp_IP6_REASSDATA, 2

	.type	memp_MLD6_GROUP,@object # @memp_MLD6_GROUP
	.globl	memp_MLD6_GROUP
	.p2align	1
memp_MLD6_GROUP:
	.short	40                      # 0x28
	.size	memp_MLD6_GROUP, 2

	.type	memp_PBUF,@object       # @memp_PBUF
	.globl	memp_PBUF
	.p2align	1
memp_PBUF:
	.short	24                      # 0x18
	.size	memp_PBUF, 2

	.type	memp_PBUF_POOL,@object  # @memp_PBUF_POOL
	.globl	memp_PBUF_POOL
	.p2align	1
memp_PBUF_POOL:
	.short	1538                    # 0x602
	.size	memp_PBUF_POOL, 2

	.type	memp_pools,@object      # @memp_pools
	.globl	memp_pools
	.p2align	4
memp_pools:
	.quad	memp_UDP_PCB
	.quad	memp_TCP_PCB
	.quad	memp_TCP_PCB_LISTEN
	.quad	memp_TCP_SEG
	.quad	memp_REASSDATA
	.quad	memp_FRAG_PBUF
	.quad	memp_NETBUF
	.quad	memp_NETCONN
	.quad	memp_TCPIP_MSG_API
	.quad	memp_TCPIP_MSG_INPKT
	.quad	memp_SYS_TIMEOUT
	.quad	memp_NETDB
	.quad	memp_ND6_QUEUE
	.quad	memp_IP6_REASSDATA
	.quad	memp_MLD6_GROUP
	.quad	memp_PBUF
	.quad	memp_PBUF_POOL
	.size	memp_pools, 136

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"invalid pool desc"
	.size	.L.str, 18

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
	.asciz	"memp_malloc: type < MEMP_MAX"
	.size	.L.str.3, 29

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"memp_free: type < MEMP_MAX"
	.size	.L.str.4, 27

	.type	uk_pr_crit.__str,@object # @uk_pr_crit.__str
	.section	.data_shared,"aw",@progbits
uk_pr_crit.__str:
	.asciz	"liblwip"
	.size	uk_pr_crit.__str, 8

	.type	uk_pr_crit.__str.5,@object # @uk_pr_crit.__str.5
uk_pr_crit.__str.5:
	.asciz	"memp.c"
	.size	uk_pr_crit.__str.5, 7

	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
