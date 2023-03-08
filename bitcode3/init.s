	.text
	.file	"init.c"
	.globl	lwip_init               # -- Begin function lwip_init
	.p2align	4, 0x90
	.type	lwip_init,@function
lwip_init:                              # @lwip_init
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	callq	stats_init
	callq	sys_init
	callq	mem_init
	callq	memp_init
	callq	netif_init
	callq	udp_init
	callq	tcp_init
	callq	dns_init
	popq	%rbp
	jmp	sys_timeouts_init       # TAILCALL
.Lfunc_end0:
	.size	lwip_init, .Lfunc_end0-lwip_init
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
