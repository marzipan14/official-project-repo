	.text
	.file	"ip.c"
	.globl	ipaddr_ntoa             # -- Begin function ipaddr_ntoa
	.p2align	4, 0x90
	.type	ipaddr_ntoa,@function
ipaddr_ntoa:                            # @ipaddr_ntoa
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB0_1
# %bb.2:
	cmpb	$6, 20(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_4
# %bb.3:
	callq	ip6addr_ntoa
	jmp	.LBB0_5
.LBB0_1:
	xorl	%eax, %eax
	jmp	.LBB0_6
.LBB0_4:
	callq	ip4addr_ntoa
.LBB0_5:
	movl	$42, __A_VARIABLE(%rip)
.LBB0_6:
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end0:
	.size	ipaddr_ntoa, .Lfunc_end0-ipaddr_ntoa
                                        # -- End function
	.globl	ipaddr_ntoa_r           # -- Begin function ipaddr_ntoa_r
	.p2align	4, 0x90
	.type	ipaddr_ntoa_r,@function
ipaddr_ntoa_r:                          # @ipaddr_ntoa_r
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB1_1
# %bb.2:
	cmpb	$6, 20(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB1_4
# %bb.3:
	callq	ip6addr_ntoa_r
	jmp	.LBB1_5
.LBB1_1:
	xorl	%eax, %eax
	jmp	.LBB1_6
.LBB1_4:
	callq	ip4addr_ntoa_r
.LBB1_5:
	movl	$42, __A_VARIABLE(%rip)
.LBB1_6:
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end1:
	.size	ipaddr_ntoa_r, .Lfunc_end1-ipaddr_ntoa_r
                                        # -- End function
	.globl	ipaddr_aton             # -- Begin function ipaddr_aton
	.p2align	4, 0x90
	.type	ipaddr_aton,@function
ipaddr_aton:                            # @ipaddr_aton
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB2_1
# %bb.2:
	movb	(%rdi), %al
	movl	$42, __A_VARIABLE(%rip)
	testb	%al, %al
	je	.LBB2_10
# %bb.3:                                # %.preheader
	leaq	1(%rdi), %rcx
	.p2align	4, 0x90
.LBB2_4:                                # =>This Inner Loop Header: Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$58, %al
	je	.LBB2_5
# %bb.8:                                #   in Loop: Header=BB2_4 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$46, %al
	je	.LBB2_10
# %bb.9:                                #   in Loop: Header=BB2_4 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movzbl	(%rcx), %eax
	addq	$1, %rcx
	movl	$42, __A_VARIABLE(%rip)
	testb	%al, %al
	jne	.LBB2_4
.LBB2_10:
	movl	$42, __A_VARIABLE(%rip)
	testq	%rsi, %rsi
	je	.LBB2_12
# %bb.11:
	movb	$0, 20(%rsi)
	movl	$42, __A_VARIABLE(%rip)
.LBB2_12:
	callq	ip4addr_aton
	jmp	.LBB2_13
.LBB2_1:
	xorl	%eax, %eax
	jmp	.LBB2_14
.LBB2_5:
	movl	$42, __A_VARIABLE(%rip)
	testq	%rsi, %rsi
	je	.LBB2_7
# %bb.6:
	movb	$6, 20(%rsi)
	movl	$42, __A_VARIABLE(%rip)
.LBB2_7:
	callq	ip6addr_aton
.LBB2_13:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB2_14:
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end2:
	.size	ipaddr_aton, .Lfunc_end2-ipaddr_aton
                                        # -- End function
	.globl	ip_input                # -- Begin function ip_input
	.p2align	4, 0x90
	.type	ip_input,@function
ip_input:                               # @ip_input
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB3_1
# %bb.2:
	movq	8(%rdi), %rax
	movb	(%rax), %al
	andb	$-16, %al
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$96, %al
	jne	.LBB3_4
# %bb.3:
	callq	ip6_input
	jmp	.LBB3_5
.LBB3_1:
	movb	$-6, %al
	jmp	.LBB3_5
.LBB3_4:
	callq	ip4_input
.LBB3_5:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
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
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
