	.text
	.file	"ip.c"
	.globl	ipaddr_ntoa             # -- Begin function ipaddr_ntoa
	.p2align	4, 0x90
	.type	ipaddr_ntoa,@function
ipaddr_ntoa:                            # @ipaddr_ntoa
# %bb.0:
	testq	%rdi, %rdi
	je	.LBB0_3
# %bb.1:
	cmpb	$6, 20(%rdi)
	jne	.LBB0_2
# %bb.4:
	jmp	ip6addr_ntoa            # TAILCALL
.LBB0_3:
	xorl	%eax, %eax
	retq
.LBB0_2:
	jmp	ip4addr_ntoa            # TAILCALL
.Lfunc_end0:
	.size	ipaddr_ntoa, .Lfunc_end0-ipaddr_ntoa
                                        # -- End function
	.globl	ipaddr_ntoa_r           # -- Begin function ipaddr_ntoa_r
	.p2align	4, 0x90
	.type	ipaddr_ntoa_r,@function
ipaddr_ntoa_r:                          # @ipaddr_ntoa_r
# %bb.0:
	testq	%rdi, %rdi
	je	.LBB1_3
# %bb.1:
	cmpb	$6, 20(%rdi)
	jne	.LBB1_2
# %bb.4:
	jmp	ip6addr_ntoa_r          # TAILCALL
.LBB1_3:
	xorl	%eax, %eax
	retq
.LBB1_2:
	jmp	ip4addr_ntoa_r          # TAILCALL
.Lfunc_end1:
	.size	ipaddr_ntoa_r, .Lfunc_end1-ipaddr_ntoa_r
                                        # -- End function
	.globl	ipaddr_aton             # -- Begin function ipaddr_aton
	.p2align	4, 0x90
	.type	ipaddr_aton,@function
ipaddr_aton:                            # @ipaddr_aton
# %bb.0:
	testq	%rdi, %rdi
	je	.LBB2_12
# %bb.1:                                # %.preheader
	movq	%rdi, %rax
	.p2align	4, 0x90
.LBB2_2:                                # =>This Inner Loop Header: Depth=1
	movzbl	(%rax), %ecx
	testb	%cl, %cl
	je	.LBB2_9
# %bb.3:                                #   in Loop: Header=BB2_2 Depth=1
	cmpb	$46, %cl
	je	.LBB2_9
# %bb.4:                                #   in Loop: Header=BB2_2 Depth=1
	cmpb	$58, %cl
	je	.LBB2_5
# %bb.8:                                #   in Loop: Header=BB2_2 Depth=1
	addq	$1, %rax
	jmp	.LBB2_2
.LBB2_9:
	testq	%rsi, %rsi
	je	.LBB2_11
# %bb.10:
	movb	$0, 20(%rsi)
.LBB2_11:
	jmp	ip4addr_aton            # TAILCALL
.LBB2_12:
	xorl	%eax, %eax
	retq
.LBB2_5:
	testq	%rsi, %rsi
	je	.LBB2_7
# %bb.6:
	movb	$6, 20(%rsi)
.LBB2_7:
	jmp	ip6addr_aton            # TAILCALL
.Lfunc_end2:
	.size	ipaddr_aton, .Lfunc_end2-ipaddr_aton
                                        # -- End function
	.globl	ip_input                # -- Begin function ip_input
	.p2align	4, 0x90
	.type	ip_input,@function
ip_input:                               # @ip_input
# %bb.0:
	testq	%rdi, %rdi
	je	.LBB3_3
# %bb.1:
	movq	8(%rdi), %rax
	movb	(%rax), %al
	andb	$-16, %al
	cmpb	$96, %al
	jne	.LBB3_2
# %bb.4:
	jmp	ip6_input               # TAILCALL
.LBB3_3:
	movb	$-6, %al
	retq
.LBB3_2:
	jmp	ip4_input               # TAILCALL
.Lfunc_end3:
	.size	ip_input, .Lfunc_end3-ip_input
                                        # -- End function
	.type	ip_addr_any_type,@object # @ip_addr_any_type
	.section	.rodata,"a",@progbits
	.globl	ip_addr_any_type
	.p2align	2
ip_addr_any_type:
	.zero	20
	.byte	46                      # 0x2e
	.zero	3
	.size	ip_addr_any_type, 24

	.type	ip_data,@object         # @ip_data
	.comm	ip_data,88,8
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
