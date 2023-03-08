	.text
	.file	"ip6.c"
	.globl	ip6_route               # -- Begin function ip6_route
	.p2align	4, 0x90
	.type	ip6_route,@function
ip6_route:                              # @ip6_route
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	movq	netif_list(%rip), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB0_2
# %bb.1:
	cmpq	$0, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB0_21
.LBB0_2:
	movb	16(%rsi), %cl
	movl	$42, __A_VARIABLE(%rip)
	testb	%cl, %cl
	je	.LBB0_9
# %bb.3:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	jne	.LBB0_6
	jmp	.LBB0_22
	.p2align	4, 0x90
.LBB0_5:                                #   in Loop: Header=BB0_6 Depth=1
	movq	(%rax), %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB0_22
.LBB0_6:                                # =>This Inner Loop Header: Depth=1
	movzbl	264(%rax), %edx
	addb	$1, %dl
	movl	$42, __A_VARIABLE(%rip)
	cmpb	%dl, %cl
	jne	.LBB0_5
# %bb.7:                                #   in Loop: Header=BB0_6 Depth=1
	movzbl	261(%rax), %edx
	movl	$42, __A_VARIABLE(%rip)
	testb	$1, %dl
	je	.LBB0_5
# %bb.8:                                #   in Loop: Header=BB0_6 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testb	$4, %dl
	je	.LBB0_5
	jmp	.LBB0_82
.LBB0_9:
	movl	(%rsi), %ecx
	movl	%ecx, %edx
	andl	$49407, %edx            # imm = 0xC0FF
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$33022, %edx            # imm = 0x80FE
	je	.LBB0_13
# %bb.10:
	movl	%ecx, %edx
	andl	$36863, %edx            # imm = 0x8FFF
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$511, %rdx              # imm = 0x1FF
	je	.LBB0_13
# %bb.11:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$767, %edx              # imm = 0x2FF
	je	.LBB0_13
# %bb.12:
	movl	(%rbx), %edx
	movl	%edx, %edi
	andl	$49407, %edi            # imm = 0xC0FF
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$33022, %edi            # imm = 0x80FE
	jne	.LBB0_51
.LBB0_13:
	movb	16(%rbx), %cl
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testb	%cl, %cl
	je	.LBB0_25
# %bb.14:
	testq	%rax, %rax
	jne	.LBB0_17
	jmp	.LBB0_22
	.p2align	4, 0x90
.LBB0_16:                               #   in Loop: Header=BB0_17 Depth=1
	movq	(%rax), %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB0_22
.LBB0_17:                               # =>This Inner Loop Header: Depth=1
	movzbl	261(%rax), %edx
	movl	$42, __A_VARIABLE(%rip)
	testb	$1, %dl
	je	.LBB0_16
# %bb.18:                               #   in Loop: Header=BB0_17 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testb	$4, %dl
	je	.LBB0_16
# %bb.19:                               #   in Loop: Header=BB0_17 Depth=1
	movzbl	264(%rax), %edx
	addb	$1, %dl
	movl	$42, __A_VARIABLE(%rip)
	cmpb	%dl, %cl
	jne	.LBB0_16
	jmp	.LBB0_82
.LBB0_21:
	movzbl	261(%rax), %ecx
	movl	$42, __A_VARIABLE(%rip)
	testb	$1, %cl
	je	.LBB0_22
# %bb.23:
	movl	$42, __A_VARIABLE(%rip)
	testb	$4, %cl
	je	.LBB0_22
# %bb.48:
	movb	16(%rsi), %cl
	movl	$42, __A_VARIABLE(%rip)
	testb	%cl, %cl
	je	.LBB0_82
# %bb.49:
	movb	264(%rax), %dl
	addb	$1, %dl
	movl	$42, __A_VARIABLE(%rip)
	cmpb	%dl, %cl
	jne	.LBB0_22
	jmp	.LBB0_82
.LBB0_25:
	testq	%rax, %rax
	jne	.LBB0_29
.LBB0_22:
	xorl	%eax, %eax
.LBB0_82:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
	.p2align	4, 0x90
.LBB0_27:                               #   in Loop: Header=BB0_29 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB0_28:                               #   in Loop: Header=BB0_29 Depth=1
	movq	(%rax), %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB0_22
.LBB0_29:                               # =>This Inner Loop Header: Depth=1
	movzbl	261(%rax), %ecx
	movl	$42, __A_VARIABLE(%rip)
	testb	$1, %cl
	je	.LBB0_28
# %bb.30:                               #   in Loop: Header=BB0_29 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testb	$4, %cl
	je	.LBB0_28
# %bb.31:                               #   in Loop: Header=BB0_29 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testb	$16, 152(%rax)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB0_36
# %bb.32:                               #   in Loop: Header=BB0_29 Depth=1
	movl	(%rbx), %ecx
	cmpl	80(%rax), %ecx
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_36
# %bb.33:                               #   in Loop: Header=BB0_29 Depth=1
	movl	4(%rbx), %ecx
	cmpl	84(%rax), %ecx
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_36
# %bb.34:                               #   in Loop: Header=BB0_29 Depth=1
	movl	8(%rbx), %ecx
	cmpl	88(%rax), %ecx
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_36
# %bb.35:                               #   in Loop: Header=BB0_29 Depth=1
	movl	12(%rbx), %ecx
	cmpl	92(%rax), %ecx
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB0_82
	.p2align	4, 0x90
.LBB0_36:                               #   in Loop: Header=BB0_29 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testb	$16, 153(%rax)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB0_41
# %bb.37:                               #   in Loop: Header=BB0_29 Depth=1
	movl	(%rbx), %ecx
	cmpl	104(%rax), %ecx
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_41
# %bb.38:                               #   in Loop: Header=BB0_29 Depth=1
	movl	4(%rbx), %ecx
	cmpl	108(%rax), %ecx
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_41
# %bb.39:                               #   in Loop: Header=BB0_29 Depth=1
	movl	8(%rbx), %ecx
	cmpl	112(%rax), %ecx
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_41
# %bb.40:                               #   in Loop: Header=BB0_29 Depth=1
	movl	12(%rbx), %ecx
	cmpl	116(%rax), %ecx
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB0_82
	.p2align	4, 0x90
.LBB0_41:                               #   in Loop: Header=BB0_29 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testb	$16, 154(%rax)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB0_27
# %bb.42:                               #   in Loop: Header=BB0_29 Depth=1
	movl	(%rbx), %ecx
	cmpl	128(%rax), %ecx
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_27
# %bb.43:                               #   in Loop: Header=BB0_29 Depth=1
	movl	4(%rbx), %ecx
	cmpl	132(%rax), %ecx
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_27
# %bb.44:                               #   in Loop: Header=BB0_29 Depth=1
	movl	8(%rbx), %ecx
	cmpl	136(%rax), %ecx
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_27
# %bb.45:                               #   in Loop: Header=BB0_29 Depth=1
	movl	12(%rbx), %ecx
	cmpl	140(%rax), %ecx
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_27
	jmp	.LBB0_82
.LBB0_51:
	movl	$42, __A_VARIABLE(%rip)
	testl	%edx, %edx
	jne	.LBB0_57
# %bb.52:
	cmpl	$0, 4(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_57
# %bb.53:
	cmpl	$0, 8(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_57
# %bb.54:
	cmpl	$16777216, 12(%rbx)     # imm = 0x1000000
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_57
	jmp	.LBB0_13
.LBB0_55:                               #   in Loop: Header=BB0_57 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB0_56:                               #   in Loop: Header=BB0_57 Depth=1
	movq	(%rax), %rax
.LBB0_57:                               # =>This Inner Loop Header: Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB0_81
# %bb.58:                               #   in Loop: Header=BB0_57 Depth=1
	movzbl	261(%rax), %edx
	movl	$42, __A_VARIABLE(%rip)
	testb	$1, %dl
	je	.LBB0_56
# %bb.59:                               #   in Loop: Header=BB0_57 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testb	$4, %dl
	je	.LBB0_56
# %bb.60:                               #   in Loop: Header=BB0_57 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testb	$16, 152(%rax)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB0_67
# %bb.61:                               #   in Loop: Header=BB0_57 Depth=1
	cmpl	80(%rax), %ecx
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_67
# %bb.62:                               #   in Loop: Header=BB0_57 Depth=1
	movl	4(%rsi), %edx
	cmpl	84(%rax), %edx
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_67
# %bb.63:                               #   in Loop: Header=BB0_57 Depth=1
	cmpb	$0, 96(%rax)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_67
# %bb.64:                               #   in Loop: Header=BB0_57 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$0, 156(%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB0_82
# %bb.65:                               #   in Loop: Header=BB0_57 Depth=1
	movl	8(%rsi), %edx
	cmpl	88(%rax), %edx
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_67
# %bb.66:                               #   in Loop: Header=BB0_57 Depth=1
	movl	12(%rsi), %edx
	cmpl	92(%rax), %edx
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB0_82
.LBB0_67:                               #   in Loop: Header=BB0_57 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testb	$16, 153(%rax)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB0_74
# %bb.68:                               #   in Loop: Header=BB0_57 Depth=1
	cmpl	104(%rax), %ecx
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_74
# %bb.69:                               #   in Loop: Header=BB0_57 Depth=1
	movl	4(%rsi), %edx
	cmpl	108(%rax), %edx
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_74
# %bb.70:                               #   in Loop: Header=BB0_57 Depth=1
	cmpb	$0, 120(%rax)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_74
# %bb.71:                               #   in Loop: Header=BB0_57 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$0, 160(%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB0_82
# %bb.72:                               #   in Loop: Header=BB0_57 Depth=1
	movl	8(%rsi), %edx
	cmpl	112(%rax), %edx
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_74
# %bb.73:                               #   in Loop: Header=BB0_57 Depth=1
	movl	12(%rsi), %edx
	cmpl	116(%rax), %edx
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB0_82
.LBB0_74:                               #   in Loop: Header=BB0_57 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testb	$16, 154(%rax)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB0_55
# %bb.75:                               #   in Loop: Header=BB0_57 Depth=1
	cmpl	128(%rax), %ecx
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_55
# %bb.76:                               #   in Loop: Header=BB0_57 Depth=1
	movl	4(%rsi), %edx
	cmpl	132(%rax), %edx
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_55
# %bb.77:                               #   in Loop: Header=BB0_57 Depth=1
	cmpb	$0, 144(%rax)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_55
# %bb.78:                               #   in Loop: Header=BB0_57 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$0, 164(%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB0_82
# %bb.79:                               #   in Loop: Header=BB0_57 Depth=1
	movl	8(%rsi), %edx
	cmpl	136(%rax), %edx
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_55
# %bb.80:                               #   in Loop: Header=BB0_57 Depth=1
	movl	12(%rsi), %edx
	cmpl	140(%rax), %edx
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_55
	jmp	.LBB0_82
.LBB0_81:
	movq	%rsi, %rdi
	callq	nd6_find_route
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	jne	.LBB0_82
# %bb.83:
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	je	.LBB0_112
# %bb.84:
	movl	(%rbx), %ecx
	movl	$42, __A_VARIABLE(%rip)
	testl	%ecx, %ecx
	jne	.LBB0_88
# %bb.85:
	cmpl	$0, 4(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_88
# %bb.86:
	cmpl	$0, 8(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_88
# %bb.87:
	cmpl	$0, 12(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB0_112
.LBB0_88:
	movq	netif_list(%rip), %rax
	jmp	.LBB0_91
.LBB0_89:                               #   in Loop: Header=BB0_91 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB0_90:                               #   in Loop: Header=BB0_91 Depth=1
	movq	(%rax), %rax
.LBB0_91:                               # =>This Inner Loop Header: Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB0_112
# %bb.92:                               #   in Loop: Header=BB0_91 Depth=1
	movzbl	261(%rax), %edx
	movl	$42, __A_VARIABLE(%rip)
	testb	$1, %dl
	je	.LBB0_90
# %bb.93:                               #   in Loop: Header=BB0_91 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testb	$4, %dl
	je	.LBB0_90
# %bb.94:                               #   in Loop: Header=BB0_91 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testb	$16, 152(%rax)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB0_100
# %bb.95:                               #   in Loop: Header=BB0_91 Depth=1
	cmpl	80(%rax), %ecx
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_100
# %bb.96:                               #   in Loop: Header=BB0_91 Depth=1
	movl	4(%rbx), %edx
	cmpl	84(%rax), %edx
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_100
# %bb.97:                               #   in Loop: Header=BB0_91 Depth=1
	movl	8(%rbx), %edx
	cmpl	88(%rax), %edx
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_100
# %bb.98:                               #   in Loop: Header=BB0_91 Depth=1
	movl	12(%rbx), %edx
	cmpl	92(%rax), %edx
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_100
# %bb.99:                               #   in Loop: Header=BB0_91 Depth=1
	movzbl	16(%rbx), %edx
	cmpb	96(%rax), %dl
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB0_82
.LBB0_100:                              #   in Loop: Header=BB0_91 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testb	$16, 153(%rax)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB0_106
# %bb.101:                              #   in Loop: Header=BB0_91 Depth=1
	cmpl	104(%rax), %ecx
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_106
# %bb.102:                              #   in Loop: Header=BB0_91 Depth=1
	movl	4(%rbx), %edx
	cmpl	108(%rax), %edx
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_106
# %bb.103:                              #   in Loop: Header=BB0_91 Depth=1
	movl	8(%rbx), %edx
	cmpl	112(%rax), %edx
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_106
# %bb.104:                              #   in Loop: Header=BB0_91 Depth=1
	movl	12(%rbx), %edx
	cmpl	116(%rax), %edx
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_106
# %bb.105:                              #   in Loop: Header=BB0_91 Depth=1
	movzbl	16(%rbx), %edx
	cmpb	120(%rax), %dl
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB0_82
.LBB0_106:                              #   in Loop: Header=BB0_91 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testb	$16, 154(%rax)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB0_89
# %bb.107:                              #   in Loop: Header=BB0_91 Depth=1
	cmpl	128(%rax), %ecx
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_89
# %bb.108:                              #   in Loop: Header=BB0_91 Depth=1
	movl	4(%rbx), %edx
	cmpl	132(%rax), %edx
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_89
# %bb.109:                              #   in Loop: Header=BB0_91 Depth=1
	movl	8(%rbx), %edx
	cmpl	136(%rax), %edx
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_89
# %bb.110:                              #   in Loop: Header=BB0_91 Depth=1
	movl	12(%rbx), %edx
	cmpl	140(%rax), %edx
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_89
# %bb.111:                              #   in Loop: Header=BB0_91 Depth=1
	movzbl	16(%rbx), %edx
	cmpb	144(%rax), %dl
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_89
	jmp	.LBB0_82
.LBB0_112:
	movq	netif_default(%rip), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB0_22
# %bb.113:
	movzbl	261(%rax), %ecx
	movl	$42, __A_VARIABLE(%rip)
	testb	$1, %cl
	je	.LBB0_22
# %bb.116:
	xorl	%edx, %edx
	testb	$4, %cl
	movl	$42, __A_VARIABLE(%rip)
	cmoveq	%rdx, %rax
	jmp	.LBB0_82
.Lfunc_end0:
	.size	ip6_route, .Lfunc_end0-ip6_route
                                        # -- End function
	.globl	ip6_select_source_address # -- Begin function ip6_select_source_address
	.p2align	4, 0x90
	.type	ip6_select_source_address,@function
ip6_select_source_address:              # @ip6_select_source_address
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$24, %rsp
	movq	%rsi, %r14
	movq	%rdi, %r15
	movl	(%rsi), %edi
	movl	%edi, %eax
	andl	$224, %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$32, %eax
	jne	.LBB1_2
# %bb.1:
	movl	$42, __A_VARIABLE(%rip)
	movl	$14, -44(%rbp)          # 4-byte Folded Spill
	jmp	.LBB1_14
.LBB1_2:
	movl	%edi, %eax
	andl	$49407, %eax            # imm = 0xC0FF
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$33022, %rax            # imm = 0x80FE
	jne	.LBB1_3
.LBB1_7:
	movl	$42, __A_VARIABLE(%rip)
	movl	$2, -44(%rbp)           # 4-byte Folded Spill
	jmp	.LBB1_14
.LBB1_3:
	movl	$42, __A_VARIABLE(%rip)
	testl	%edi, %edi
	je	.LBB1_4
# %bb.8:
	movl	%edi, %ecx
	andl	$254, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$252, %ecx
	jne	.LBB1_10
# %bb.9:
	movl	$42, __A_VARIABLE(%rip)
	movl	$8, -44(%rbp)           # 4-byte Folded Spill
	jmp	.LBB1_14
.LBB1_4:
	cmpl	$0, 4(%r14)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB1_12
# %bb.5:
	cmpl	$0, 8(%r14)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB1_12
# %bb.6:
	cmpl	$16777216, 12(%r14)     # imm = 0x1000000
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB1_7
.LBB1_12:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB1_13
.LBB1_10:
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$-1, %dil
	jne	.LBB1_13
# %bb.11:
                                        # kill: def $edi killed $edi killed $rdi
	callq	lwip_htonl
	shrl	$16, %eax
	andl	$15, %eax
	movl	%eax, -44(%rbp)         # 4-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB1_14
.LBB1_13:
	xorl	%ecx, %ecx
	cmpl	$49406, %eax            # imm = 0xC0FE
	setne	%cl
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	leal	(%rcx,%rcx,8), %eax
	addl	$5, %eax
	movl	%eax, -44(%rbp)         # 4-byte Spill
.LBB1_14:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	leaq	80(%r15), %rdx
	xorl	%esi, %esi
	xorl	%eax, %eax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	xorl	%r10d, %r10d
	xorl	%r12d, %r12d
	xorl	%r11d, %r11d
	jmp	.LBB1_15
	.p2align	4, 0x90
.LBB1_34:                               #   in Loop: Header=BB1_15 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	%edi, %r11d
	movq	%rdx, %r12
	movl	%r13d, %r10d
	movl	%ecx, %eax
	movq	%rax, -56(%rbp)         # 8-byte Spill
.LBB1_35:                               #   in Loop: Header=BB1_15 Depth=1
	addq	$1, %rsi
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$24, %rdx
	cmpq	$3, %rsi
	jae	.LBB1_40
.LBB1_15:                               # =>This Inner Loop Header: Depth=1
	movzbl	152(%r15,%rsi), %ebx
	movl	$42, __A_VARIABLE(%rip)
	testb	$16, %bl
	je	.LBB1_35
# %bb.16:                               #   in Loop: Header=BB1_15 Depth=1
	movl	(%rdx), %ecx
	movl	%ecx, %eax
	andl	$224, %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$32, %eax
	jne	.LBB1_18
# %bb.17:                               #   in Loop: Header=BB1_15 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movb	$14, %dil
	jmp	.LBB1_23
	.p2align	4, 0x90
.LBB1_18:                               #   in Loop: Header=BB1_15 Depth=1
	movl	%ecx, %eax
	andl	$49407, %eax            # imm = 0xC0FF
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$33022, %rax            # imm = 0x80FE
	jne	.LBB1_20
# %bb.19:                               #   in Loop: Header=BB1_15 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movb	$2, %dil
	jmp	.LBB1_23
.LBB1_20:                               #   in Loop: Header=BB1_15 Depth=1
	movl	%ecx, %edi
	andl	$254, %edi
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$252, %edi
	jne	.LBB1_22
# %bb.21:                               #   in Loop: Header=BB1_15 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movb	$8, %dil
	jmp	.LBB1_23
.LBB1_22:                               #   in Loop: Header=BB1_15 Depth=1
	cmpl	$49406, %eax            # imm = 0xC0FE
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$15, %edi
	movl	$5, %eax
	cmovel	%eax, %edi
	.p2align	4, 0x90
.LBB1_23:                               #   in Loop: Header=BB1_15 Depth=1
	cmpb	$48, %bl
	sete	%r13b
	cmpl	(%r14), %ecx
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB1_24
# %bb.36:                               #   in Loop: Header=BB1_15 Depth=1
	movl	4(%rdx), %eax
	xorl	%r8d, %r8d
	movl	$0, %ecx
	cmpl	4(%r14), %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB1_25
# %bb.37:                               #   in Loop: Header=BB1_15 Depth=1
	movl	8(%rdx), %eax
	movb	$1, %cl
	movl	$1, %r8d
	cmpl	8(%r14), %eax
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB1_25
# %bb.38:                               #   in Loop: Header=BB1_15 Depth=1
	movl	12(%rdx), %eax
	cmpl	12(%r14), %eax
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB1_25
	jmp	.LBB1_39
	.p2align	4, 0x90
.LBB1_24:                               #   in Loop: Header=BB1_15 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	xorl	%r8d, %r8d
	xorl	%ecx, %ecx
.LBB1_25:                               #   in Loop: Header=BB1_15 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testq	%r12, %r12
	je	.LBB1_34
# %bb.26:                               #   in Loop: Header=BB1_15 Depth=1
	movzbl	%dil, %r9d
	movsbl	%r11b, %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%eax, %r9d
	jge	.LBB1_28
# %bb.27:                               #   in Loop: Header=BB1_15 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%r9d, -44(%rbp)         # 4-byte Folded Reload
	jbe	.LBB1_34
.LBB1_28:                               #   in Loop: Header=BB1_15 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%eax, %r9d
	jle	.LBB1_30
# %bb.29:                               #   in Loop: Header=BB1_15 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%eax, -44(%rbp)         # 4-byte Folded Reload
	jg	.LBB1_34
.LBB1_30:                               #   in Loop: Header=BB1_15 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%eax, %r9d
	jne	.LBB1_35
# %bb.31:                               #   in Loop: Header=BB1_15 Depth=1
	xorl	%eax, %eax
	cmpb	$48, %bl
	sete	%al
	movzbl	%r10b, %ebx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%ebx, %eax
	ja	.LBB1_34
# %bb.32:                               #   in Loop: Header=BB1_15 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB1_35
# %bb.33:                               #   in Loop: Header=BB1_15 Depth=1
	movzbl	-56(%rbp), %eax         # 1-byte Folded Reload
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%eax, %r8d
	ja	.LBB1_34
	jmp	.LBB1_35
.LBB1_39:
	movq	%rdx, %r12
.LBB1_40:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r12, %rax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	ip6_select_source_address, .Lfunc_end1-ip6_select_source_address
                                        # -- End function
	.globl	ip6_input               # -- Begin function ip6_input
	.p2align	4, 0x90
	.type	ip6_input,@function
ip6_input:                              # @ip6_input
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	addw	$1, lwip_stats+188(%rip)
	movq	%rsi, %r15
	movq	%rdi, %r14
	movq	8(%rdi), %rbx
	movl	(%rbx), %edi
	callq	lwip_htonl
	andl	$-268435456, %eax       # imm = 0xF0000000
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1610612736, %eax       # imm = 0x60000000
	jne	.LBB2_9
# %bb.1:
	cmpw	$40, 18(%r14)
	movl	$42, __A_VARIABLE(%rip)
	jb	.LBB2_3
# %bb.2:
	movzwl	4(%rbx), %edi
	callq	lwip_htons
	movzwl	%ax, %eax
	movzwl	16(%r14), %ecx
	addl	$-40, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%eax, %ecx
	jge	.LBB2_4
.LBB2_3:
	movzwl	4(%rbx), %edi
	callq	lwip_htons
	movq	%r14, %rdi
	callq	pbuf_free
	addw	$1, lwip_stats+196(%rip)
	jmp	.LBB2_10
.LBB2_4:
	movzwl	4(%rbx), %edi
	callq	lwip_htons
                                        # kill: def $ax killed $ax def $eax
	addl	$40, %eax
	movzwl	%ax, %esi
	movq	%r14, %rdi
	callq	pbuf_realloc
	movl	24(%rbx), %esi
	movl	%esi, ip_data+60(%rip)
	movl	28(%rbx), %r10d
	movl	%r10d, ip_data+64(%rip)
	movl	32(%rbx), %r9d
	movl	%r9d, ip_data+68(%rip)
	movl	36(%rbx), %r8d
	movl	%r8d, ip_data+72(%rip)
	movb	$0, ip_data+76(%rip)
	movb	$6, ip_data+80(%rip)
	movl	8(%rbx), %edi
	movl	%edi, ip_data+36(%rip)
	movl	12(%rbx), %ecx
	movl	%ecx, ip_data+40(%rip)
	movl	16(%rbx), %eax
	movl	%eax, ip_data+44(%rip)
	movl	20(%rbx), %edx
	movl	%edx, ip_data+48(%rip)
	movb	$0, ip_data+52(%rip)
	movb	$6, ip_data+56(%rip)
	movl	%r10d, %edx
	orl	%esi, %edx
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB2_6
# %bb.5:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-65536, %r9d           # imm = 0xFFFF0000
	je	.LBB2_9
.LBB2_6:
	orl	%edi, %ecx
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB2_8
# %bb.7:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-65536, %eax           # imm = 0xFFFF0000
	je	.LBB2_9
.LBB2_8:
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$-1, %dil
	jne	.LBB2_12
.LBB2_9:
	movq	%r14, %rdi
	callq	pbuf_free
	addw	$1, lwip_stats+206(%rip)
.LBB2_10:
	addw	$1, lwip_stats+192(%rip)
.LBB2_11:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB2_12:
	movl	%esi, %eax
	andl	$49407, %eax            # imm = 0xC0FF
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$33022, %eax            # imm = 0x80FE
	je	.LBB2_15
# %bb.13:
	movl	%esi, %eax
	andl	$36863, %eax            # imm = 0x8FFF
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$511, %rax              # imm = 0x1FF
	je	.LBB2_15
# %bb.14:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$767, %eax              # imm = 0x2FF
	jne	.LBB2_102
.LBB2_15:
	movb	264(%r15), %al
	addb	$1, %al
	movl	$42, __A_VARIABLE(%rip)
.LBB2_16:
	movb	%al, ip_data+76(%rip)
	andl	$49407, %edi            # imm = 0xC0FF
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$33022, %edi            # imm = 0x80FE
	jne	.LBB2_18
# %bb.17:
	movb	264(%r15), %al
	addb	$1, %al
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB2_19
.LBB2_18:
	xorl	%eax, %eax
.LBB2_19:
	movb	%al, ip_data+52(%rip)
	movq	%rbx, ip_data+24(%rip)
	movq	%r15, ip_data(%rip)
	movq	%r15, ip_data+8(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$-1, %sil
	jne	.LBB2_25
# %bb.20:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$511, %esi              # imm = 0x1FF
	jne	.LBB2_27
# %bb.21:
	movl	$42, __A_VARIABLE(%rip)
	testl	%r10d, %r10d
	jne	.LBB2_24
# %bb.22:
	movl	$42, __A_VARIABLE(%rip)
	testl	%r9d, %r9d
	jne	.LBB2_24
# %bb.23:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$16777216, %r8d         # imm = 0x1000000
	je	.LBB2_26
.LBB2_24:
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB2_31
.LBB2_25:
	movq	%r15, %rdi
	callq	ip6_input_accept
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB2_93
.LBB2_26:
	movl	$42, __A_VARIABLE(%rip)
	movq	%r15, %r12
	jmp	.LBB2_32
.LBB2_27:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$767, %esi              # imm = 0x2FF
	jne	.LBB2_31
# %bb.28:
	movl	$42, __A_VARIABLE(%rip)
	testl	%r10d, %r10d
	jne	.LBB2_31
# %bb.29:
	movl	$42, __A_VARIABLE(%rip)
	testl	%r9d, %r9d
	jne	.LBB2_31
# %bb.30:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$16777216, %r8d         # imm = 0x1000000
	je	.LBB2_26
.LBB2_31:
	movl	$ip_data+60, %esi
	movq	%r15, %rdi
	callq	mld6_lookfor_group
	movq	%rax, %r12
	testq	%rax, %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmovneq	%r15, %r12
	jmp	.LBB2_32
.LBB2_93:
	movl	ip_data+60(%rip), %ecx
	movl	%ecx, %eax
	andl	$49407, %eax            # imm = 0xC0FF
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$33022, %eax            # imm = 0x80FE
	je	.LBB2_94
# %bb.103:
	movl	ip_data+36(%rip), %eax
	movl	%eax, %edx
	andl	$49407, %edx            # imm = 0xC0FF
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$33022, %edx            # imm = 0x80FE
	jne	.LBB2_107
.LBB2_94:
	xorl	%r12d, %r12d
.LBB2_32:
	movl	ip_data+40(%rip), %eax
	orl	ip_data+36(%rip), %eax
	orl	ip_data+44(%rip), %eax
	orl	ip_data+48(%rip), %eax
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB2_39
.LBB2_33:
	movl	$42, __A_VARIABLE(%rip)
	testq	%r12, %r12
	je	.LBB2_101
# %bb.34:
	movq	%r12, ip_data(%rip)
	leaq	6(%rbx), %r12
	movl	$40, %esi
	movq	%r14, %rdi
	callq	pbuf_remove_header
	movl	$42, __A_VARIABLE(%rip)
	movb	6(%rbx), %al
	movl	$42, __A_VARIABLE(%rip)
	movw	$40, %r13w
	cmpb	$59, %al
	jne	.LBB2_42
.LBB2_35:
	movw	%r13w, ip_data+32(%rip)
	movb	(%r12), %al
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$57, %al
	jg	.LBB2_95
# %bb.36:
	cmpb	$6, %al
	je	.LBB2_105
# %bb.37:
	cmpb	$17, %al
	jne	.LBB2_97
# %bb.38:
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	udp_input
	jmp	.LBB2_127
.LBB2_39:
	cmpl	$767, ip_data+60(%rip)  # imm = 0x2FF
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB2_126
# %bb.40:
	cmpl	$16777216, ip_data+68(%rip) # imm = 0x1000000
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB2_126
# %bb.41:
	cmpb	$-1, ip_data+72(%rip)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB2_33
	jmp	.LBB2_126
.LBB2_42:                               # %.preheader
	movw	$40, %r13w
.LBB2_43:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_59 Depth 2
                                        #     Child Loop BB2_74 Depth 2
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$43, %al
	jg	.LBB2_52
# %bb.44:                               #   in Loop: Header=BB2_43 Depth=1
	testb	%al, %al
	je	.LBB2_69
# %bb.45:                               #   in Loop: Header=BB2_43 Depth=1
	cmpb	$43, %al
	jne	.LBB2_35
# %bb.46:                               #   in Loop: Header=BB2_43 Depth=1
	movq	8(%r14), %r12
	movzbl	1(%r12), %eax
	movzwl	18(%r14), %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpw	$8, %cx
	jb	.LBB2_123
# %bb.47:                               #   in Loop: Header=BB2_43 Depth=1
	leaq	8(,%rax,8), %rsi
	movl	$42, __A_VARIABLE(%rip)
	cmpw	%cx, %si
	ja	.LBB2_123
# %bb.48:                               #   in Loop: Header=BB2_43 Depth=1
	cmpb	$0, 3(%r12)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB2_51
# %bb.49:                               #   in Loop: Header=BB2_43 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testb	$1, %al
	jne	.LBB2_133
# %bb.50:                               #   in Loop: Header=BB2_43 Depth=1
	movb	2(%r12), %al
	andb	$-2, %al
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$2, %al
	jne	.LBB2_134
.LBB2_51:                               #   in Loop: Header=BB2_43 Depth=1
	movl	%r13d, %eax
	movzwl	%si, %r13d
	addl	%eax, %r13d
	movq	%r14, %rdi
	callq	pbuf_remove_header
                                        # kill: def $r13w killed $r13w killed $r13d def $r13d
	jmp	.LBB2_91
.LBB2_52:                               #   in Loop: Header=BB2_43 Depth=1
	cmpb	$44, %al
	je	.LBB2_83
# %bb.53:                               #   in Loop: Header=BB2_43 Depth=1
	cmpb	$60, %al
	jne	.LBB2_35
# %bb.54:                               #   in Loop: Header=BB2_43 Depth=1
	movq	8(%r14), %r12
	movzbl	1(%r12), %ecx
	movzwl	18(%r14), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpw	$8, %ax
	jb	.LBB2_123
# %bb.55:                               #   in Loop: Header=BB2_43 Depth=1
	leaq	8(,%rcx,8), %rsi
	movl	$42, __A_VARIABLE(%rip)
	cmpw	%ax, %si
	ja	.LBB2_123
# %bb.56:                               #   in Loop: Header=BB2_43 Depth=1
	movzwl	%si, %eax
	addl	%r13d, %eax
	movl	%eax, %r13d
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$2, %eax
	jmp	.LBB2_59
	.p2align	4, 0x90
.LBB2_57:                               #   in Loop: Header=BB2_59 Depth=2
	movzbl	1(%rdx), %ecx
.LBB2_58:                               #   in Loop: Header=BB2_59 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	addl	%ecx, %eax
	addl	$2, %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%esi, %eax
	jge	.LBB2_82
.LBB2_59:                               #   Parent Loop BB2_43 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movslq	%eax, %rcx
	leaq	(%r12,%rcx), %rdx
	movzbl	(%r12,%rcx), %ecx
	movl	$42, __A_VARIABLE(%rip)
	testb	%cl, %cl
	js	.LBB2_63
# %bb.60:                               #   in Loop: Header=BB2_59 Depth=2
	je	.LBB2_68
# %bb.61:                               #   in Loop: Header=BB2_59 Depth=2
	cmpb	$1, %cl
	je	.LBB2_57
# %bb.62:                               #   in Loop: Header=BB2_59 Depth=2
	cmpb	$5, %cl
	je	.LBB2_57
	jmp	.LBB2_65
.LBB2_63:                               #   in Loop: Header=BB2_59 Depth=2
	cmpb	$-62, %cl
	je	.LBB2_57
# %bb.64:                               #   in Loop: Header=BB2_59 Depth=2
	cmpb	$-55, %cl
	je	.LBB2_57
.LBB2_65:                               #   in Loop: Header=BB2_59 Depth=2
	shrb	$6, %cl
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$3, %cl
	je	.LBB2_128
# %bb.66:                               #   in Loop: Header=BB2_59 Depth=2
	cmpb	$2, %cl
	je	.LBB2_130
# %bb.67:                               #   in Loop: Header=BB2_59 Depth=2
	cmpb	$1, %cl
	jne	.LBB2_57
	jmp	.LBB2_131
.LBB2_68:                               #   in Loop: Header=BB2_59 Depth=2
	movl	$-1, %ecx
	jmp	.LBB2_58
.LBB2_69:                               #   in Loop: Header=BB2_43 Depth=1
	movq	8(%r14), %r12
	movzbl	1(%r12), %ecx
	movzwl	18(%r14), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpw	$8, %ax
	jb	.LBB2_123
# %bb.70:                               #   in Loop: Header=BB2_43 Depth=1
	leaq	8(,%rcx,8), %rsi
	movl	$42, __A_VARIABLE(%rip)
	cmpw	%ax, %si
	ja	.LBB2_123
# %bb.71:                               #   in Loop: Header=BB2_43 Depth=1
	movzwl	%si, %eax
	addl	%r13d, %eax
	movl	%eax, %r13d
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$2, %eax
	jmp	.LBB2_74
.LBB2_72:                               #   in Loop: Header=BB2_74 Depth=2
	movzbl	1(%rdx), %edi
.LBB2_73:                               #   in Loop: Header=BB2_74 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	addl	%edi, %eax
	addl	$2, %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%esi, %eax
	jge	.LBB2_82
.LBB2_74:                               #   Parent Loop BB2_43 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movslq	%eax, %rcx
	leaq	(%r12,%rcx), %rdx
	movzbl	(%r12,%rcx), %ecx
	movl	$42, __A_VARIABLE(%rip)
	testb	%cl, %cl
	jg	.LBB2_77
# %bb.75:                               #   in Loop: Header=BB2_74 Depth=2
	cmpb	$-62, %cl
	je	.LBB2_72
# %bb.76:                               #   in Loop: Header=BB2_74 Depth=2
	movl	$-1, %edi
	testb	%cl, %cl
	je	.LBB2_73
	jmp	.LBB2_79
.LBB2_77:                               #   in Loop: Header=BB2_74 Depth=2
	cmpb	$1, %cl
	je	.LBB2_72
# %bb.78:                               #   in Loop: Header=BB2_74 Depth=2
	cmpb	$5, %cl
	je	.LBB2_72
.LBB2_79:                               #   in Loop: Header=BB2_74 Depth=2
	shrb	$6, %cl
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$3, %cl
	je	.LBB2_128
# %bb.80:                               #   in Loop: Header=BB2_74 Depth=2
	cmpb	$2, %cl
	je	.LBB2_130
# %bb.81:                               #   in Loop: Header=BB2_74 Depth=2
	cmpb	$1, %cl
	jne	.LBB2_72
	jmp	.LBB2_131
.LBB2_82:                               #   in Loop: Header=BB2_43 Depth=1
	movq	%r14, %rdi
	callq	pbuf_remove_header
	jmp	.LBB2_91
.LBB2_83:                               #   in Loop: Header=BB2_43 Depth=1
	movq	8(%r14), %r12
	cmpw	$7, 18(%r14)
	movl	$42, __A_VARIABLE(%rip)
	jbe	.LBB2_132
# %bb.84:                               #   in Loop: Header=BB2_43 Depth=1
	movzwl	2(%r12), %edi
	callq	lwip_htons
                                        # kill: def $ax killed $ax def $eax
	movl	$42, __A_VARIABLE(%rip)
	testb	$1, %al
	je	.LBB2_86
# %bb.85:                               #   in Loop: Header=BB2_43 Depth=1
	movzwl	4(%rbx), %edi
	callq	lwip_htons
                                        # kill: def $ax killed $ax def $eax
	movl	$42, __A_VARIABLE(%rip)
	testb	$7, %al
	jne	.LBB2_136
.LBB2_86:                               #   in Loop: Header=BB2_43 Depth=1
	addl	$8, %r13d
	movzwl	2(%r12), %eax
	movl	$42, __A_VARIABLE(%rip)
	testl	$63999, %eax            # imm = 0xF9FF
	je	.LBB2_89
# %bb.87:                               #   in Loop: Header=BB2_43 Depth=1
	movw	%r13w, ip_data+32(%rip)
	movq	%r14, %rdi
	callq	ip6_reass
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB2_138
# %bb.88:                               #   in Loop: Header=BB2_43 Depth=1
	movq	%rax, %r14
	movq	8(%rax), %rbx
	leaq	6(%rbx), %r12
	movl	$40, %esi
	movq	%rax, %rdi
	callq	pbuf_remove_header
	movw	$40, %r13w
	jmp	.LBB2_90
.LBB2_89:                               #   in Loop: Header=BB2_43 Depth=1
	movl	$8, %esi
	movq	%r14, %rdi
	callq	pbuf_remove_header
.LBB2_90:                               #   in Loop: Header=BB2_43 Depth=1
	movl	$42, __A_VARIABLE(%rip)
.LBB2_91:                               #   in Loop: Header=BB2_43 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movb	(%r12), %al
	movl	$42, __A_VARIABLE(%rip)
	testb	%al, %al
	je	.LBB2_125
# %bb.92:                               #   in Loop: Header=BB2_43 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$59, %al
	jne	.LBB2_43
	jmp	.LBB2_35
.LBB2_95:
	cmpb	$58, %al
	je	.LBB2_106
# %bb.96:
	cmpb	$59, %al
	je	.LBB2_101
.LBB2_97:
	movzwl	%r13w, %esi
	movq	%r14, %rdi
	callq	pbuf_add_header_force
	cmpb	$-1, ip_data+60(%rip)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB2_100
# %bb.98:
	cmpb	$58, 6(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB2_100
# %bb.99:
	movq	%r14, %rdi
	movl	$1, %esi
	movq	%r12, %rdx
	callq	icmp6_param_problem
	movl	$42, __A_VARIABLE(%rip)
.LBB2_100:
	addw	$1, lwip_stats+202(%rip)
	addw	$1, lwip_stats+192(%rip)
.LBB2_101:
	movq	%r14, %rdi
	callq	pbuf_free
	jmp	.LBB2_127
.LBB2_102:
	xorl	%eax, %eax
	jmp	.LBB2_16
.LBB2_105:
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	tcp_input
	jmp	.LBB2_127
.LBB2_106:
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	icmp6_input
	jmp	.LBB2_127
.LBB2_107:
	movl	$42, __A_VARIABLE(%rip)
	testl	%ecx, %ecx
	jne	.LBB2_112
# %bb.108:
	cmpl	$0, ip_data+64(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB2_112
# %bb.109:
	cmpl	$0, ip_data+68(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB2_112
# %bb.110:
	cmpl	$16777216, ip_data+72(%rip) # imm = 0x1000000
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB2_94
.LBB2_112:
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB2_117
# %bb.113:
	cmpl	$0, ip_data+40(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB2_117
# %bb.114:
	cmpl	$0, ip_data+44(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB2_117
# %bb.115:
	cmpl	$16777216, ip_data+48(%rip) # imm = 0x1000000
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB2_94
.LBB2_117:
	movq	netif_list(%rip), %r13
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%r12d, %r12d
	jmp	.LBB2_119
.LBB2_118:                              #   in Loop: Header=BB2_119 Depth=1
	movq	(%r13), %r13
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB2_119:                              # =>This Inner Loop Header: Depth=1
	testq	%r13, %r13
	je	.LBB2_32
# %bb.120:                              #   in Loop: Header=BB2_119 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r15, %r13
	je	.LBB2_118
# %bb.121:                              #   in Loop: Header=BB2_119 Depth=1
	movq	%r13, %rdi
	callq	ip6_input_accept
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB2_118
# %bb.122:
	movq	%r13, %r12
	jmp	.LBB2_32
.LBB2_123:
	movq	%r14, %rdi
	callq	pbuf_free
	addw	$1, lwip_stats+196(%rip)
.LBB2_124:
	addw	$1, lwip_stats+192(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB2_127
.LBB2_125:
	movq	%r14, %rdi
	movl	$1, %esi
	movq	%r12, %rdx
	callq	icmp6_param_problem
.LBB2_126:
	movq	%r14, %rdi
	callq	pbuf_free
	addw	$1, lwip_stats+192(%rip)
.LBB2_127:
	movl	$42, __A_VARIABLE(%rip)
	xorps	%xmm0, %xmm0
	movups	%xmm0, ip_data(%rip)
	movq	$0, ip_data+24(%rip)
	movw	$0, ip_data+32(%rip)
	movups	%xmm0, ip_data+36(%rip)
	movb	$0, ip_data+52(%rip)
	movups	%xmm0, ip_data+60(%rip)
	movb	$0, ip_data+76(%rip)
	jmp	.LBB2_11
.LBB2_128:
	cmpb	$-1, ip_data+60(%rip)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB2_131
# %bb.129:
	movq	%r14, %rdi
	movl	$2, %esi
	callq	icmp6_param_problem
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB2_131
.LBB2_130:
	movq	%r14, %rdi
	movl	$2, %esi
	callq	icmp6_param_problem
.LBB2_131:
	movq	%r14, %rdi
	callq	pbuf_free
	addw	$1, lwip_stats+192(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB2_127
.LBB2_132:
	movq	%r14, %rdi
	callq	pbuf_free
	addw	$1, lwip_stats+244(%rip)
	movl	$lwip_stats+240, %eax
	jmp	.LBB2_137
.LBB2_133:
	addq	$1, %r12
	jmp	.LBB2_135
.LBB2_134:
	addq	$2, %r12
.LBB2_135:
	movq	%r14, %rdi
	xorl	%esi, %esi
	movq	%r12, %rdx
	callq	icmp6_param_problem
	movq	%r14, %rdi
	callq	pbuf_free
	jmp	.LBB2_124
.LBB2_136:
	addq	$4, %rbx
	movq	%r14, %rdi
	xorl	%esi, %esi
	movq	%rbx, %rdx
	callq	icmp6_param_problem
	movq	%r14, %rdi
	callq	pbuf_free
	movl	$lwip_stats+192, %eax
.LBB2_137:
	addw	$1, (%rax)
.LBB2_138:
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB2_127
.Lfunc_end2:
	.size	ip6_input, .Lfunc_end2-ip6_input
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function ip6_input_accept
	.type	ip6_input_accept,@function
ip6_input_accept:                       # @ip6_input_accept
# %bb.0:
	xorl	%eax, %eax
	testb	$1, 261(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB3_14
# %bb.1:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	ip_data+60(%rip), %edx
	movl	ip_data+64(%rip), %ecx
	movl	ip_data+68(%rip), %esi
	movl	ip_data+72(%rip), %r9d
	movb	ip_data+76(%rip), %r8b
	testb	$16, 152(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB3_7
# %bb.2:
	cmpl	80(%rdi), %edx
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB3_7
# %bb.3:
	cmpl	84(%rdi), %ecx
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB3_7
# %bb.4:
	cmpl	88(%rdi), %esi
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB3_7
# %bb.5:
	cmpl	92(%rdi), %r9d
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB3_7
# %bb.6:
	movl	$1, %eax
	cmpb	96(%rdi), %r8b
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB3_13
.LBB3_7:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testb	$16, 153(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB3_15
# %bb.8:
	cmpl	104(%rdi), %edx
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB3_15
# %bb.9:
	cmpl	108(%rdi), %ecx
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB3_15
# %bb.10:
	cmpl	112(%rdi), %esi
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB3_15
# %bb.11:
	cmpl	116(%rdi), %r9d
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB3_15
# %bb.12:
	movl	$1, %eax
	cmpb	120(%rdi), %r8b
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB3_13
.LBB3_15:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testb	$16, 154(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB3_21
# %bb.16:
	cmpl	128(%rdi), %edx
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB3_21
# %bb.17:
	cmpl	132(%rdi), %ecx
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB3_21
# %bb.18:
	cmpl	136(%rdi), %esi
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB3_21
# %bb.19:
	cmpl	140(%rdi), %r9d
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB3_21
# %bb.20:
	movl	$1, %eax
	cmpb	144(%rdi), %r8b
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB3_13
.LBB3_21:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
.LBB3_13:
	movl	$42, __A_VARIABLE(%rip)
.LBB3_14:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end3:
	.size	ip6_input_accept, .Lfunc_end3-ip6_input_accept
                                        # -- End function
	.globl	ip6_output_if           # -- Begin function ip6_output_if
	.p2align	4, 0x90
	.type	ip6_output_if,@function
ip6_output_if:                          # @ip6_output_if
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	movl	%r9d, %r14d
	movl	%r8d, %r15d
	movl	%ecx, %r13d
	movq	%rdx, %rbx
	movq	%rdi, %r12
	movq	16(%rbp), %rcx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rsi, %rsi
	je	.LBB4_12
# %bb.1:
	testq	%rbx, %rbx
	je	.LBB4_12
# %bb.2:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$0, (%rsi)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB4_12
# %bb.3:
	cmpl	$0, 4(%rsi)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB4_12
# %bb.4:
	cmpl	$0, 8(%rsi)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB4_12
# %bb.5:
	cmpl	$0, 12(%rsi)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB4_6
.LBB4_12:
	movq	%rcx, (%rsp)
	movzbl	%r13b, %ecx
	movzbl	%r15b, %r8d
	movzbl	%r14b, %r9d
	movq	%r12, %rdi
	movq	%rbx, %rdx
	callq	ip6_output_if_src
.LBB4_13:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB4_6:
	movq	16(%rbp), %rdi
	movq	%rbx, %rsi
	callq	ip6_select_source_address
	movq	16(%rbp), %rcx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB4_11
# %bb.7:
	movq	%rax, %rsi
	cmpl	$0, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB4_12
# %bb.8:
	cmpl	$0, 4(%rsi)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB4_12
# %bb.9:
	cmpl	$0, 8(%rsi)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB4_12
# %bb.10:
	cmpl	$0, 12(%rsi)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB4_12
.LBB4_11:
	addw	$1, lwip_stats+200(%rip)
	movb	$-4, %al
	jmp	.LBB4_13
.Lfunc_end4:
	.size	ip6_output_if, .Lfunc_end4-ip6_output_if
                                        # -- End function
	.globl	ip6_output_if_src       # -- Begin function ip6_output_if_src
	.p2align	4, 0x90
	.type	ip6_output_if_src,@function
ip6_output_if_src:                      # @ip6_output_if_src
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$40, %rsp
	cmpb	$1, 22(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB5_1
# %bb.3:
	movl	%r8d, %r14d
	movq	%rdx, %rbx
	movq	%rdi, %r15
	movq	16(%rbp), %r8
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdx, %rdx
	je	.LBB5_22
# %bb.4:
	cmpb	$0, 16(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rsi, -72(%rbp)         # 8-byte Spill
	je	.LBB5_6
.LBB5_5:
	movl	%ecx, %r12d
	movl	%r9d, %r13d
	jmp	.LBB5_15
.LBB5_22:
	movq	8(%r15), %rax
	movdqu	24(%rax), %xmm0
	movdqa	%xmm0, -64(%rbp)
	movb	$0, -48(%rbp)
	movd	%xmm0, %eax
	movl	%eax, %ecx
	andl	$49407, %ecx            # imm = 0xC0FF
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$33022, %ecx            # imm = 0x80FE
	je	.LBB5_26
# %bb.23:
	andl	$36863, %eax            # imm = 0x8FFF
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$511, %rax              # imm = 0x1FF
	je	.LBB5_26
# %bb.24:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$767, %eax              # imm = 0x2FF
	jne	.LBB5_25
.LBB5_26:
	movb	264(%r8), %al
	addb	$1, %al
	movl	$42, __A_VARIABLE(%rip)
.LBB5_27:
	movb	%al, -48(%rbp)
	leaq	-64(%rbp), %rbx
	jmp	.LBB5_28
.LBB5_6:
	movl	(%rbx), %eax
	movl	%eax, %edi
	andl	$49407, %edi            # imm = 0xC0FF
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$33022, %rdi            # imm = 0x80FE
	je	.LBB5_9
# %bb.7:
	movl	%eax, %edx
	andl	$36863, %edx            # imm = 0x8FFF
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$511, %rdx              # imm = 0x1FF
	je	.LBB5_9
# %bb.8:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$767, %edx              # imm = 0x2FF
	jne	.LBB5_5
.LBB5_9:
	movl	%eax, -64(%rbp)
	movl	4(%rbx), %edx
	movl	%edx, -60(%rbp)
	movl	8(%rbx), %edx
	movl	%edx, -56(%rbp)
	movl	12(%rbx), %edx
	movl	%edx, -52(%rbp)
	movb	$0, -48(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$33022, %edi            # imm = 0x80FE
	je	.LBB5_13
# %bb.10:
	andl	$36863, %eax            # imm = 0x8FFF
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$511, %rax              # imm = 0x1FF
	je	.LBB5_13
# %bb.11:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$767, %eax              # imm = 0x2FF
	jne	.LBB5_12
.LBB5_13:
	movl	%ecx, %r12d
	movb	264(%r8), %al
	addb	$1, %al
	movl	$42, __A_VARIABLE(%rip)
.LBB5_14:
	movl	%r9d, %r13d
	movb	%al, -48(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	leaq	-64(%rbp), %rbx
.LBB5_15:
	movl	$40, %esi
	movq	%r15, %rdi
	callq	pbuf_add_header
	movl	$42, __A_VARIABLE(%rip)
	testb	%al, %al
	je	.LBB5_17
# %bb.16:
	addw	$1, lwip_stats+206(%rip)
	movb	$-2, %al
	jmp	.LBB5_32
.LBB5_17:
	movl	%r14d, %ecx
	movq	8(%r15), %r14
	cmpw	$39, 18(%r15)
	movl	$42, __A_VARIABLE(%rip)
	jbe	.LBB5_18
# %bb.19:
	movb	%r12b, 7(%r14)
	movb	%r13b, 6(%r14)
	movl	(%rbx), %eax
	movl	%eax, 24(%r14)
	movl	4(%rbx), %eax
	movl	%eax, 28(%r14)
	movl	8(%rbx), %eax
	movl	%eax, 32(%r14)
	movl	12(%rbx), %eax
	movl	%eax, 36(%r14)
	movzbl	%cl, %edi
	shll	$20, %edi
	orl	$1610612736, %edi       # imm = 0x60000000
	callq	lwip_htonl
	movl	%eax, (%r14)
	movl	16(%r15), %eax
	addl	$-40, %eax
	movzwl	%ax, %edi
	callq	lwip_htons
	movw	%ax, 4(%r14)
	movl	$42, __A_VARIABLE(%rip)
	movq	-72(%rbp), %rcx         # 8-byte Reload
	testq	%rcx, %rcx
	jne	.LBB5_21
# %bb.20:
	movl	$42, __A_VARIABLE(%rip)
	movl	$ip6_addr_any, %ecx
.LBB5_21:
	movl	(%rcx), %eax
	movl	%eax, 8(%r14)
	movl	4(%rcx), %eax
	movl	%eax, 12(%r14)
	movl	8(%rcx), %eax
	movl	%eax, 16(%r14)
	movl	12(%rcx), %eax
	movl	%eax, 20(%r14)
	movq	16(%rbp), %r8
.LBB5_28:
	movl	$42, __A_VARIABLE(%rip)
	addw	$1, lwip_stats+186(%rip)
	cmpw	$0, 252(%r8)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB5_31
# %bb.29:
	movzwl	16(%r15), %r14d
	movq	%rbx, %rdi
	movq	%r8, %rsi
	movq	%r8, %r12
	callq	nd6_get_destination_mtu
	movq	%r12, %r8
	movl	$42, __A_VARIABLE(%rip)
	cmpw	%ax, %r14w
	jbe	.LBB5_31
# %bb.30:
	movq	%r15, %rdi
	movq	%r8, %rsi
	movq	%rbx, %rdx
	callq	ip6_frag
	jmp	.LBB5_32
.LBB5_31:
	movq	%r8, %rdi
	movq	%r15, %rsi
	movq	%rbx, %rdx
	callq	*208(%r8)
.LBB5_32:
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
.LBB5_25:
	xorl	%eax, %eax
	jmp	.LBB5_27
.LBB5_12:
	movl	%ecx, %r12d
	xorl	%eax, %eax
	jmp	.LBB5_14
.LBB5_1:
	movl	$.L.str, %edi
	jmp	.LBB5_2
.LBB5_18:
	movl	$.L.str.3, %edi
.LBB5_2:
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$.L.str.1, %edi
	movl	$.L.str.2, %esi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$3, %edi
	callq	ukplat_terminate
.Lfunc_end5:
	.size	ip6_output_if_src, .Lfunc_end5-ip6_output_if_src
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
	je	.LBB6_2
# %bb.1:
	movaps	%xmm0, -160(%rbp)
	movaps	%xmm1, -144(%rbp)
	movaps	%xmm2, -128(%rbp)
	movaps	%xmm3, -112(%rbp)
	movaps	%xmm4, -96(%rbp)
	movaps	%xmm5, -80(%rbp)
	movaps	%xmm6, -64(%rbp)
	movaps	%xmm7, -48(%rbp)
.LBB6_2:
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
	movl	$uk_pr_crit.__str.4, %edx
	xorl	%edi, %edi
	movl	$198, %ecx
	movq	%r10, %r8
	callq	_uk_vprintk
	movl	$42, __A_VARIABLE(%rip)
	addq	$208, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	uk_pr_crit, .Lfunc_end6-uk_pr_crit
                                        # -- End function
	.globl	ip6_output              # -- Begin function ip6_output
	.p2align	4, 0x90
	.type	ip6_output,@function
ip6_output:                             # @ip6_output
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$72, %rsp
	cmpb	$1, 22(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB7_8
# %bb.1:
	movq	%rdx, %rbx
	movq	%rsi, %r15
	movq	%rdi, %r13
	movl	%ecx, %r12d
	movl	%r8d, %r14d
	movl	%r9d, -44(%rbp)         # 4-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdx, %rdx
	je	.LBB7_3
# %bb.2:
	movq	%r15, %rdi
	movq	%rbx, %rsi
	jmp	.LBB7_4
.LBB7_3:
	movq	8(%r13), %rax
	movups	8(%rax), %xmm0
	movaps	%xmm0, -96(%rbp)
	movb	$0, -80(%rbp)
	movups	24(%rax), %xmm0
	movaps	%xmm0, -64(%rbp)
	movb	$0, -48(%rbp)
	leaq	-96(%rbp), %rdi
	leaq	-64(%rbp), %rsi
.LBB7_4:
	callq	ip6_route
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB7_5
# %bb.6:
	movq	%rax, (%rsp)
	movzbl	%r12b, %ecx
	movzbl	%r14b, %r8d
	movzbl	-44(%rbp), %r9d         # 1-byte Folded Reload
	movq	%r13, %rdi
	movq	%r15, %rsi
	movq	%rbx, %rdx
	callq	ip6_output_if
	jmp	.LBB7_7
.LBB7_5:
	addw	$1, lwip_stats+200(%rip)
	movb	$-4, %al
.LBB7_7:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$72, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB7_8:
	movl	$.L.str, %edi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$.L.str.1, %edi
	movl	$.L.str.2, %esi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$3, %edi
	callq	ukplat_terminate
.Lfunc_end7:
	.size	ip6_output, .Lfunc_end7-ip6_output
                                        # -- End function
	.globl	ip6_options_add_hbh_ra  # -- Begin function ip6_options_add_hbh_ra
	.p2align	4, 0x90
	.type	ip6_options_add_hbh_ra,@function
ip6_options_add_hbh_ra:                 # @ip6_options_add_hbh_ra
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movl	%edx, %r14d
	movl	%esi, %r15d
	movq	%rdi, %rbx
	movl	$8, %esi
	callq	pbuf_add_header
	movl	$42, __A_VARIABLE(%rip)
	testb	%al, %al
	je	.LBB8_2
# %bb.1:
	addw	$1, lwip_stats+206(%rip)
	movb	$-2, %al
	jmp	.LBB8_3
.LBB8_2:
	movq	8(%rbx), %rax
	movb	%r15b, (%rax)
	movw	$1280, 1(%rax)          # imm = 0x500
	movb	$2, 3(%rax)
	movb	%r14b, 4(%rax)
	movw	$256, 5(%rax)           # imm = 0x100
	movb	$0, 7(%rax)
	xorl	%eax, %eax
.LBB8_3:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
                                        # kill: def $al killed $al killed $eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end8:
	.size	ip6_options_add_hbh_ra, .Lfunc_end8-ip6_options_add_hbh_ra
                                        # -- End function
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"p->ref == 1"
	.size	.L.str, 12

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
	.asciz	"check that first pbuf can hold struct ip6_hdr"
	.size	.L.str.3, 46

	.type	uk_pr_crit.__str,@object # @uk_pr_crit.__str
	.section	.data_shared,"aw",@progbits
uk_pr_crit.__str:
	.asciz	"liblwip"
	.size	uk_pr_crit.__str, 8

	.type	uk_pr_crit.__str.4,@object # @uk_pr_crit.__str.4
uk_pr_crit.__str.4:
	.asciz	"ip6.c"
	.size	uk_pr_crit.__str.4, 6

	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
