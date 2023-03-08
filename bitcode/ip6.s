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
	testq	%rax, %rax
	je	.LBB0_2
# %bb.1:
	cmpq	$0, (%rax)
	je	.LBB0_18
.LBB0_2:
	movb	16(%rsi), %cl
	testb	%cl, %cl
	je	.LBB0_8
# %bb.3:
	testq	%rax, %rax
	jne	.LBB0_6
	jmp	.LBB0_44
	.p2align	4, 0x90
.LBB0_5:                                #   in Loop: Header=BB0_6 Depth=1
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.LBB0_44
.LBB0_6:                                # =>This Inner Loop Header: Depth=1
	movzbl	264(%rax), %edx
	addb	$1, %dl
	cmpb	%dl, %cl
	jne	.LBB0_5
# %bb.7:                                #   in Loop: Header=BB0_6 Depth=1
	movzbl	261(%rax), %edx
	andb	$5, %dl
	cmpb	$5, %dl
	jne	.LBB0_5
	jmp	.LBB0_45
.LBB0_8:
	movl	(%rsi), %ecx
	movl	%ecx, %edx
	andl	$49407, %edx            # imm = 0xC0FF
	cmpl	$33022, %edx            # imm = 0x80FE
	je	.LBB0_12
# %bb.9:
	movl	%ecx, %edx
	andl	$36863, %edx            # imm = 0x8FFF
	cmpl	$511, %edx              # imm = 0x1FF
	je	.LBB0_12
# %bb.10:
	movzwl	%dx, %edx
	cmpl	$767, %edx              # imm = 0x2FF
	je	.LBB0_12
# %bb.11:
	movl	(%rbx), %edx
	movl	%edx, %edi
	andl	$49407, %edi            # imm = 0xC0FF
	cmpl	$33022, %edi            # imm = 0x80FE
	jne	.LBB0_46
.LBB0_12:
	movb	16(%rbx), %cl
	testb	%cl, %cl
	je	.LBB0_24
# %bb.13:
	testq	%rax, %rax
	jne	.LBB0_16
	jmp	.LBB0_44
	.p2align	4, 0x90
.LBB0_15:                               #   in Loop: Header=BB0_16 Depth=1
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.LBB0_44
.LBB0_16:                               # =>This Inner Loop Header: Depth=1
	movzbl	261(%rax), %edx
	andb	$5, %dl
	cmpb	$5, %dl
	jne	.LBB0_15
# %bb.17:                               #   in Loop: Header=BB0_16 Depth=1
	movzbl	264(%rax), %edx
	addb	$1, %dl
	cmpb	%dl, %cl
	jne	.LBB0_15
	jmp	.LBB0_45
.LBB0_18:
	movb	261(%rax), %cl
	andb	$5, %cl
	cmpb	$5, %cl
	jne	.LBB0_44
# %bb.19:
	movb	16(%rsi), %cl
	testb	%cl, %cl
	je	.LBB0_45
# %bb.20:
	movb	264(%rax), %dl
	addb	$1, %dl
	cmpb	%dl, %cl
	jne	.LBB0_44
	jmp	.LBB0_45
.LBB0_24:
	testq	%rax, %rax
	jne	.LBB0_27
.LBB0_44:
	xorl	%eax, %eax
.LBB0_45:
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
	.p2align	4, 0x90
.LBB0_26:                               #   in Loop: Header=BB0_27 Depth=1
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.LBB0_44
.LBB0_27:                               # =>This Inner Loop Header: Depth=1
	movzbl	261(%rax), %ecx
	andb	$5, %cl
	cmpb	$5, %cl
	jne	.LBB0_26
# %bb.28:                               #   in Loop: Header=BB0_27 Depth=1
	testb	$16, 152(%rax)
	je	.LBB0_33
# %bb.29:                               #   in Loop: Header=BB0_27 Depth=1
	movl	(%rbx), %ecx
	cmpl	80(%rax), %ecx
	jne	.LBB0_33
# %bb.30:                               #   in Loop: Header=BB0_27 Depth=1
	movl	4(%rbx), %ecx
	cmpl	84(%rax), %ecx
	jne	.LBB0_33
# %bb.31:                               #   in Loop: Header=BB0_27 Depth=1
	movl	8(%rbx), %ecx
	cmpl	88(%rax), %ecx
	jne	.LBB0_33
# %bb.32:                               #   in Loop: Header=BB0_27 Depth=1
	movl	12(%rbx), %ecx
	cmpl	92(%rax), %ecx
	je	.LBB0_45
	.p2align	4, 0x90
.LBB0_33:                               #   in Loop: Header=BB0_27 Depth=1
	testb	$16, 153(%rax)
	je	.LBB0_38
# %bb.34:                               #   in Loop: Header=BB0_27 Depth=1
	movl	(%rbx), %ecx
	cmpl	104(%rax), %ecx
	jne	.LBB0_38
# %bb.35:                               #   in Loop: Header=BB0_27 Depth=1
	movl	4(%rbx), %ecx
	cmpl	108(%rax), %ecx
	jne	.LBB0_38
# %bb.36:                               #   in Loop: Header=BB0_27 Depth=1
	movl	8(%rbx), %ecx
	cmpl	112(%rax), %ecx
	jne	.LBB0_38
# %bb.37:                               #   in Loop: Header=BB0_27 Depth=1
	movl	12(%rbx), %ecx
	cmpl	116(%rax), %ecx
	je	.LBB0_45
	.p2align	4, 0x90
.LBB0_38:                               #   in Loop: Header=BB0_27 Depth=1
	testb	$16, 154(%rax)
	je	.LBB0_26
# %bb.39:                               #   in Loop: Header=BB0_27 Depth=1
	movl	(%rbx), %ecx
	cmpl	128(%rax), %ecx
	jne	.LBB0_26
# %bb.40:                               #   in Loop: Header=BB0_27 Depth=1
	movl	4(%rbx), %ecx
	cmpl	132(%rax), %ecx
	jne	.LBB0_26
# %bb.41:                               #   in Loop: Header=BB0_27 Depth=1
	movl	8(%rbx), %ecx
	cmpl	136(%rax), %ecx
	jne	.LBB0_26
# %bb.42:                               #   in Loop: Header=BB0_27 Depth=1
	movl	12(%rbx), %ecx
	cmpl	140(%rax), %ecx
	jne	.LBB0_26
	jmp	.LBB0_45
.LBB0_46:
	testl	%edx, %edx
	jne	.LBB0_51
# %bb.47:
	cmpl	$0, 4(%rbx)
	jne	.LBB0_51
# %bb.48:
	cmpl	$0, 8(%rbx)
	jne	.LBB0_51
# %bb.49:
	cmpl	$16777216, 12(%rbx)     # imm = 0x1000000
	jne	.LBB0_51
	jmp	.LBB0_12
	.p2align	4, 0x90
.LBB0_50:                               #   in Loop: Header=BB0_51 Depth=1
	movq	(%rax), %rax
.LBB0_51:                               # =>This Inner Loop Header: Depth=1
	testq	%rax, %rax
	je	.LBB0_74
# %bb.52:                               #   in Loop: Header=BB0_51 Depth=1
	movzbl	261(%rax), %edx
	andb	$5, %dl
	cmpb	$5, %dl
	jne	.LBB0_50
# %bb.53:                               #   in Loop: Header=BB0_51 Depth=1
	testb	$16, 152(%rax)
	je	.LBB0_60
# %bb.54:                               #   in Loop: Header=BB0_51 Depth=1
	cmpl	80(%rax), %ecx
	jne	.LBB0_60
# %bb.55:                               #   in Loop: Header=BB0_51 Depth=1
	movl	4(%rsi), %edx
	cmpl	84(%rax), %edx
	jne	.LBB0_60
# %bb.56:                               #   in Loop: Header=BB0_51 Depth=1
	cmpb	$0, 96(%rax)
	jne	.LBB0_60
# %bb.57:                               #   in Loop: Header=BB0_51 Depth=1
	cmpl	$0, 156(%rax)
	je	.LBB0_45
# %bb.58:                               #   in Loop: Header=BB0_51 Depth=1
	movl	8(%rsi), %edx
	cmpl	88(%rax), %edx
	jne	.LBB0_60
# %bb.59:                               #   in Loop: Header=BB0_51 Depth=1
	movl	12(%rsi), %edx
	cmpl	92(%rax), %edx
	je	.LBB0_45
	.p2align	4, 0x90
.LBB0_60:                               #   in Loop: Header=BB0_51 Depth=1
	testb	$16, 153(%rax)
	je	.LBB0_67
# %bb.61:                               #   in Loop: Header=BB0_51 Depth=1
	cmpl	104(%rax), %ecx
	jne	.LBB0_67
# %bb.62:                               #   in Loop: Header=BB0_51 Depth=1
	movl	4(%rsi), %edx
	cmpl	108(%rax), %edx
	jne	.LBB0_67
# %bb.63:                               #   in Loop: Header=BB0_51 Depth=1
	cmpb	$0, 120(%rax)
	jne	.LBB0_67
# %bb.64:                               #   in Loop: Header=BB0_51 Depth=1
	cmpl	$0, 160(%rax)
	je	.LBB0_45
# %bb.65:                               #   in Loop: Header=BB0_51 Depth=1
	movl	8(%rsi), %edx
	cmpl	112(%rax), %edx
	jne	.LBB0_67
# %bb.66:                               #   in Loop: Header=BB0_51 Depth=1
	movl	12(%rsi), %edx
	cmpl	116(%rax), %edx
	je	.LBB0_45
	.p2align	4, 0x90
.LBB0_67:                               #   in Loop: Header=BB0_51 Depth=1
	testb	$16, 154(%rax)
	je	.LBB0_50
# %bb.68:                               #   in Loop: Header=BB0_51 Depth=1
	cmpl	128(%rax), %ecx
	jne	.LBB0_50
# %bb.69:                               #   in Loop: Header=BB0_51 Depth=1
	movl	4(%rsi), %edx
	cmpl	132(%rax), %edx
	jne	.LBB0_50
# %bb.70:                               #   in Loop: Header=BB0_51 Depth=1
	cmpb	$0, 144(%rax)
	jne	.LBB0_50
# %bb.71:                               #   in Loop: Header=BB0_51 Depth=1
	cmpl	$0, 164(%rax)
	je	.LBB0_45
# %bb.72:                               #   in Loop: Header=BB0_51 Depth=1
	movl	8(%rsi), %edx
	cmpl	136(%rax), %edx
	jne	.LBB0_50
# %bb.73:                               #   in Loop: Header=BB0_51 Depth=1
	movl	12(%rsi), %edx
	cmpl	140(%rax), %edx
	jne	.LBB0_50
	jmp	.LBB0_45
.LBB0_74:
	movq	%rsi, %rdi
	callq	nd6_find_route
	testq	%rax, %rax
	jne	.LBB0_45
# %bb.75:
	testq	%rbx, %rbx
	je	.LBB0_102
# %bb.76:
	movl	(%rbx), %ecx
	testl	%ecx, %ecx
	jne	.LBB0_80
# %bb.77:
	cmpl	$0, 4(%rbx)
	jne	.LBB0_80
# %bb.78:
	cmpl	$0, 8(%rbx)
	jne	.LBB0_80
# %bb.79:
	cmpl	$0, 12(%rbx)
	je	.LBB0_102
.LBB0_80:
	movq	netif_list(%rip), %rax
	jmp	.LBB0_82
.LBB0_81:                               #   in Loop: Header=BB0_82 Depth=1
	movq	(%rax), %rax
.LBB0_82:                               # =>This Inner Loop Header: Depth=1
	testq	%rax, %rax
	je	.LBB0_102
# %bb.83:                               #   in Loop: Header=BB0_82 Depth=1
	movzbl	261(%rax), %edx
	andb	$5, %dl
	cmpb	$5, %dl
	jne	.LBB0_81
# %bb.84:                               #   in Loop: Header=BB0_82 Depth=1
	testb	$16, 152(%rax)
	je	.LBB0_90
# %bb.85:                               #   in Loop: Header=BB0_82 Depth=1
	cmpl	80(%rax), %ecx
	jne	.LBB0_90
# %bb.86:                               #   in Loop: Header=BB0_82 Depth=1
	movl	4(%rbx), %edx
	cmpl	84(%rax), %edx
	jne	.LBB0_90
# %bb.87:                               #   in Loop: Header=BB0_82 Depth=1
	movl	8(%rbx), %edx
	cmpl	88(%rax), %edx
	jne	.LBB0_90
# %bb.88:                               #   in Loop: Header=BB0_82 Depth=1
	movl	12(%rbx), %edx
	cmpl	92(%rax), %edx
	jne	.LBB0_90
# %bb.89:                               #   in Loop: Header=BB0_82 Depth=1
	movzbl	16(%rbx), %edx
	cmpb	96(%rax), %dl
	je	.LBB0_45
.LBB0_90:                               #   in Loop: Header=BB0_82 Depth=1
	testb	$16, 153(%rax)
	je	.LBB0_96
# %bb.91:                               #   in Loop: Header=BB0_82 Depth=1
	cmpl	104(%rax), %ecx
	jne	.LBB0_96
# %bb.92:                               #   in Loop: Header=BB0_82 Depth=1
	movl	4(%rbx), %edx
	cmpl	108(%rax), %edx
	jne	.LBB0_96
# %bb.93:                               #   in Loop: Header=BB0_82 Depth=1
	movl	8(%rbx), %edx
	cmpl	112(%rax), %edx
	jne	.LBB0_96
# %bb.94:                               #   in Loop: Header=BB0_82 Depth=1
	movl	12(%rbx), %edx
	cmpl	116(%rax), %edx
	jne	.LBB0_96
# %bb.95:                               #   in Loop: Header=BB0_82 Depth=1
	movzbl	16(%rbx), %edx
	cmpb	120(%rax), %dl
	je	.LBB0_45
.LBB0_96:                               #   in Loop: Header=BB0_82 Depth=1
	testb	$16, 154(%rax)
	je	.LBB0_81
# %bb.97:                               #   in Loop: Header=BB0_82 Depth=1
	cmpl	128(%rax), %ecx
	jne	.LBB0_81
# %bb.98:                               #   in Loop: Header=BB0_82 Depth=1
	movl	4(%rbx), %edx
	cmpl	132(%rax), %edx
	jne	.LBB0_81
# %bb.99:                               #   in Loop: Header=BB0_82 Depth=1
	movl	8(%rbx), %edx
	cmpl	136(%rax), %edx
	jne	.LBB0_81
# %bb.100:                              #   in Loop: Header=BB0_82 Depth=1
	movl	12(%rbx), %edx
	cmpl	140(%rax), %edx
	jne	.LBB0_81
# %bb.101:                              #   in Loop: Header=BB0_82 Depth=1
	movzbl	16(%rbx), %edx
	cmpb	144(%rax), %dl
	jne	.LBB0_81
	jmp	.LBB0_45
.LBB0_102:
	movq	netif_default(%rip), %rcx
	testq	%rcx, %rcx
	je	.LBB0_44
# %bb.103:
	movb	261(%rcx), %dl
	andb	$5, %dl
	xorl	%eax, %eax
	cmpb	$5, %dl
	cmoveq	%rcx, %rax
	jmp	.LBB0_45
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
	pushq	%rax
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movl	(%rsi), %edi
	movl	%edi, %ecx
	andl	$224, %ecx
	movl	$14, %eax
	cmpl	$32, %ecx
	je	.LBB1_10
# %bb.1:
	movl	%edi, %ecx
	andl	$49407, %ecx            # imm = 0xC0FF
	movl	$2, %eax
	cmpq	$33022, %rcx            # imm = 0x80FE
	je	.LBB1_10
# %bb.2:
	testl	%edi, %edi
	je	.LBB1_6
# %bb.3:
	movl	%edi, %edx
	andl	$254, %edx
	movl	$8, %eax
	cmpl	$252, %edx
	je	.LBB1_10
# %bb.4:
	cmpb	$-1, %dil
	jne	.LBB1_9
# %bb.5:
                                        # kill: def $edi killed $edi killed $rdi
	callq	lwip_htonl
	shrl	$16, %eax
	andl	$15, %eax
	jmp	.LBB1_10
.LBB1_6:
	cmpl	$0, 4(%r14)
	jne	.LBB1_9
# %bb.7:
	cmpl	$0, 8(%r14)
	jne	.LBB1_9
# %bb.8:
	cmpl	$16777216, 12(%r14)     # imm = 0x1000000
	je	.LBB1_10
.LBB1_9:
	xorl	%eax, %eax
	cmpl	$49406, %ecx            # imm = 0xC0FE
	setne	%al
	leal	(%rax,%rax,8), %eax
	addl	$5, %eax
.LBB1_10:
	movb	152(%rbx), %cl
	testb	$16, %cl
	jne	.LBB1_12
# %bb.11:
	xorl	%r10d, %r10d
	xorl	%r13d, %r13d
	xorl	%edi, %edi
	jmp	.LBB1_21
.LBB1_12:
	movl	80(%rbx), %edx
	movl	%edx, %esi
	andl	$224, %esi
	movb	$14, %r10b
	cmpl	$32, %esi
	je	.LBB1_16
# %bb.13:
	movl	%edx, %esi
	andl	$49407, %esi            # imm = 0xC0FF
	movb	$2, %r10b
	cmpq	$33022, %rsi            # imm = 0x80FE
	je	.LBB1_16
# %bb.14:
	movl	%edx, %edi
	andl	$254, %edi
	movb	$8, %r10b
	cmpl	$252, %edi
	je	.LBB1_16
# %bb.15:
	cmpl	$49406, %esi            # imm = 0xC0FE
	movl	$5, %esi
	movl	$15, %r10d
	cmovel	%esi, %r10d
.LBB1_16:
	leaq	80(%rbx), %r13
	cmpb	$48, %cl
	sete	%dil
	cmpl	(%r14), %edx
	jne	.LBB1_21
# %bb.17:
	movl	84(%rbx), %ecx
	cmpl	4(%r14), %ecx
	jne	.LBB1_21
# %bb.18:
	movl	88(%rbx), %ecx
	movb	$1, %dl
	cmpl	8(%r14), %ecx
	jne	.LBB1_22
# %bb.19:
	movl	92(%rbx), %ecx
	cmpl	12(%r14), %ecx
	je	.LBB1_57
	jmp	.LBB1_22
.LBB1_21:
	xorl	%edx, %edx
.LBB1_22:
	movq	%rdx, -48(%rbp)         # 8-byte Spill
	movb	153(%rbx), %dl
	testb	$16, %dl
	je	.LBB1_42
# %bb.23:
	movl	104(%rbx), %ecx
	movl	%ecx, %esi
	andl	$224, %esi
	movb	$14, %r9b
	cmpl	$32, %esi
	je	.LBB1_27
# %bb.24:
	movl	%ecx, %esi
	andl	$49407, %esi            # imm = 0xC0FF
	movb	$2, %r9b
	cmpq	$33022, %rsi            # imm = 0x80FE
	je	.LBB1_27
# %bb.25:
	movq	%rdi, %r8
	movl	%ecx, %edi
	andl	$254, %edi
	movb	$8, %r9b
	cmpl	$252, %edi
	movq	%r8, %rdi
	je	.LBB1_27
# %bb.26:
	cmpl	$49406, %esi            # imm = 0xC0FE
	movl	$5, %esi
	movl	$15, %r9d
	cmovel	%esi, %r9d
.LBB1_27:
	leaq	104(%rbx), %r15
	cmpb	$48, %dl
	sete	%r11b
	xorl	%r12d, %r12d
	movl	$0, %esi
	cmpl	(%r14), %ecx
	jne	.LBB1_32
# %bb.28:
	movl	108(%rbx), %ecx
	xorl	%r12d, %r12d
	movl	$0, %esi
	cmpl	4(%r14), %ecx
	jne	.LBB1_32
# %bb.29:
	movl	112(%rbx), %ecx
	movb	$1, %sil
	movl	$1, %r12d
	cmpl	8(%r14), %ecx
	jne	.LBB1_32
# %bb.30:
	movl	116(%rbx), %ecx
	cmpl	12(%r14), %ecx
	jne	.LBB1_32
# %bb.31:
	movq	%r15, %r13
	jmp	.LBB1_57
.LBB1_32:
	testq	%r13, %r13
	je	.LBB1_41
# %bb.33:
	movzbl	%r9b, %ecx
	movzbl	%r10b, %r8d
	cmpl	%r8d, %ecx
	jge	.LBB1_35
# %bb.34:
	cmpl	%ecx, %eax
	jbe	.LBB1_41
.LBB1_35:
	cmpl	%r8d, %eax
	jle	.LBB1_37
# %bb.36:
	cmpl	%r8d, %ecx
	jg	.LBB1_41
.LBB1_37:
	cmpl	%r8d, %ecx
	jne	.LBB1_42
# %bb.38:
	xorl	%ecx, %ecx
	cmpb	$48, %dl
	sete	%cl
	movzbl	%dil, %edx
	cmpl	%edx, %ecx
	ja	.LBB1_41
# %bb.39:
	jne	.LBB1_42
# %bb.40:
	movzbl	-48(%rbp), %ecx         # 1-byte Folded Reload
	cmpl	%ecx, %r12d
	jbe	.LBB1_42
.LBB1_41:
	movl	%r9d, %r10d
	movq	%r15, %r13
	movl	%r11d, %edi
	movl	%esi, %ecx
	movq	%rcx, -48(%rbp)         # 8-byte Spill
.LBB1_42:
	movb	154(%rbx), %r8b
	testb	$16, %r8b
	je	.LBB1_57
# %bb.43:
	movq	%rdi, %r9
	movl	128(%rbx), %ecx
	movl	%ecx, %esi
	andl	$224, %esi
	movl	$14, %edi
	cmpl	$32, %esi
	je	.LBB1_47
# %bb.44:
	movl	%ecx, %esi
	andl	$49407, %esi            # imm = 0xC0FF
	movl	$2, %edi
	cmpq	$33022, %rsi            # imm = 0x80FE
	je	.LBB1_47
# %bb.45:
	movl	%ecx, %edx
	andl	$254, %edx
	movl	$8, %edi
	cmpl	$252, %edx
	je	.LBB1_47
# %bb.46:
	cmpl	$49406, %esi            # imm = 0xC0FE
	movl	$5, %edx
	movl	$15, %edi
	cmovel	%edx, %edi
.LBB1_47:
	leaq	128(%rbx), %rsi
	xorl	%r11d, %r11d
	cmpl	(%r14), %ecx
	jne	.LBB1_51
# %bb.48:
	movl	132(%rbx), %ecx
	cmpl	4(%r14), %ecx
	jne	.LBB1_51
# %bb.49:
	movl	136(%rbx), %ecx
	movl	$1, %r11d
	cmpl	8(%r14), %ecx
	jne	.LBB1_51
# %bb.50:
	movl	140(%rbx), %ecx
	cmpl	12(%r14), %ecx
	je	.LBB1_56
.LBB1_51:
	testq	%r13, %r13
	je	.LBB1_56
# %bb.52:
	movzbl	%r10b, %ecx
	cmpl	%ecx, %edi
	jge	.LBB1_54
# %bb.53:
	cmpl	%edi, %eax
	jbe	.LBB1_56
.LBB1_54:
	cmpl	%ecx, %eax
	jle	.LBB1_58
# %bb.55:
	cmpl	%ecx, %edi
	jle	.LBB1_58
.LBB1_56:
	movq	%rsi, %r13
.LBB1_57:
	movl	$42, __A_VARIABLE(%rip)
	movq	%r13, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB1_58:
	cmpl	%ecx, %edi
	jne	.LBB1_57
# %bb.59:
	xorl	%eax, %eax
	cmpb	$48, %r8b
	sete	%al
	movzbl	%r9b, %ecx
	cmpl	%ecx, %eax
	ja	.LBB1_56
# %bb.60:
	jne	.LBB1_57
# %bb.61:
	movzbl	-48(%rbp), %eax         # 1-byte Folded Reload
	cmpl	%eax, %r11d
	ja	.LBB1_56
	jmp	.LBB1_57
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
	movq	8(%rdi), %r12
	movl	(%r12), %edi
	callq	lwip_htonl
	andl	$-268435456, %eax       # imm = 0xF0000000
	cmpl	$1610612736, %eax       # imm = 0x60000000
	jne	.LBB2_14
# %bb.1:
	cmpw	$40, 18(%r14)
	jb	.LBB2_3
# %bb.2:
	movzwl	4(%r12), %edi
	callq	lwip_htons
	movzwl	%ax, %eax
	movzwl	16(%r14), %ecx
	addl	$-40, %ecx
	cmpl	%eax, %ecx
	jge	.LBB2_4
.LBB2_3:
	movzwl	4(%r12), %edi
	callq	lwip_htons
	movq	%r14, %rdi
	callq	pbuf_free
	addw	$1, lwip_stats+196(%rip)
	jmp	.LBB2_15
.LBB2_4:
	movzwl	4(%r12), %edi
	callq	lwip_htons
                                        # kill: def $ax killed $ax def $eax
	addl	$40, %eax
	movzwl	%ax, %esi
	movq	%r14, %rdi
	callq	pbuf_realloc
	movl	24(%r12), %ecx
	movl	%ecx, ip_data+60(%rip)
	movl	28(%r12), %esi
	movl	%esi, ip_data+64(%rip)
	movl	32(%r12), %r9d
	movl	%r9d, ip_data+68(%rip)
	movl	36(%r12), %r8d
	movl	%r8d, ip_data+72(%rip)
	movb	$0, ip_data+76(%rip)
	movb	$6, ip_data+80(%rip)
	movl	8(%r12), %edi
	movl	%edi, ip_data+36(%rip)
	movl	12(%r12), %ebx
	movl	%ebx, ip_data+40(%rip)
	movl	16(%r12), %eax
	movl	%eax, ip_data+44(%rip)
	movl	20(%r12), %edx
	movl	%edx, ip_data+48(%rip)
	movb	$0, ip_data+52(%rip)
	movb	$6, ip_data+56(%rip)
	movl	%esi, %edx
	orl	%ecx, %edx
	jne	.LBB2_6
# %bb.5:
	cmpl	$-65536, %r9d           # imm = 0xFFFF0000
	je	.LBB2_14
.LBB2_6:
	orl	%edi, %ebx
	xorl	$-65536, %eax           # imm = 0xFFFF0000
	orl	%ebx, %eax
	sete	%al
	cmpb	$-1, %dil
	je	.LBB2_14
# %bb.7:
	testb	%al, %al
	jne	.LBB2_14
# %bb.8:
	movl	%ecx, %eax
	andl	$49407, %eax            # imm = 0xC0FF
	cmpl	$33022, %eax            # imm = 0x80FE
	je	.LBB2_11
# %bb.9:
	movl	%ecx, %eax
	andl	$36863, %eax            # imm = 0x8FFF
	cmpl	$767, %eax              # imm = 0x2FF
	je	.LBB2_11
# %bb.10:
	movzwl	%ax, %eax
	cmpl	$511, %eax              # imm = 0x1FF
	jne	.LBB2_29
.LBB2_11:
	movb	264(%r15), %al
	addb	$1, %al
.LBB2_12:
	movb	%al, ip_data+76(%rip)
	andl	$49407, %edi            # imm = 0xC0FF
	cmpl	$33022, %edi            # imm = 0x80FE
	jne	.LBB2_17
# %bb.13:
	movb	264(%r15), %al
	addb	$1, %al
	jmp	.LBB2_18
.LBB2_14:
	movq	%r14, %rdi
	callq	pbuf_free
	addw	$1, lwip_stats+206(%rip)
.LBB2_15:
	addw	$1, lwip_stats+192(%rip)
.LBB2_16:
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
.LBB2_17:
	xorl	%eax, %eax
.LBB2_18:
	movb	%al, ip_data+52(%rip)
	movq	%r12, ip_data+24(%rip)
	movq	%r15, ip_data(%rip)
	movq	%r15, ip_data+8(%rip)
	cmpb	$-1, %cl
	jne	.LBB2_26
# %bb.19:
	orl	%esi, %r9d
	cmpl	$511, %ecx              # imm = 0x1FF
	jne	.LBB2_22
# %bb.20:
	testl	%r9d, %r9d
	jne	.LBB2_22
# %bb.21:
	movq	%r15, %rbx
	cmpl	$16777216, %r8d         # imm = 0x1000000
	je	.LBB2_44
.LBB2_22:
	cmpl	$767, %ecx              # imm = 0x2FF
	jne	.LBB2_25
# %bb.23:
	testl	%r9d, %r9d
	jne	.LBB2_25
# %bb.24:
	movq	%r15, %rbx
	cmpl	$16777216, %r8d         # imm = 0x1000000
	je	.LBB2_44
.LBB2_25:
	movl	$ip_data+60, %esi
	movq	%r15, %rdi
	callq	mld6_lookfor_group
	movq	%rax, %rbx
	testq	%rax, %rax
	cmovneq	%r15, %rbx
	jmp	.LBB2_44
.LBB2_26:
	movq	%r15, %rdi
	callq	ip6_input_accept
	movq	%r15, %rbx
	testl	%eax, %eax
	jne	.LBB2_44
# %bb.27:
	movl	ip_data+60(%rip), %ecx
	movl	%ecx, %eax
	andl	$49407, %eax            # imm = 0xC0FF
	cmpl	$33022, %eax            # imm = 0x80FE
	je	.LBB2_28
# %bb.30:
	movl	ip_data+36(%rip), %eax
	movl	%eax, %edx
	andl	$49407, %edx            # imm = 0xC0FF
	cmpl	$33022, %edx            # imm = 0x80FE
	je	.LBB2_28
# %bb.32:
	orl	ip_data+64(%rip), %ecx
	orl	ip_data+68(%rip), %ecx
	jne	.LBB2_35
# %bb.33:
	cmpl	$16777216, ip_data+72(%rip) # imm = 0x1000000
	je	.LBB2_28
.LBB2_35:
	orl	ip_data+40(%rip), %eax
	orl	ip_data+44(%rip), %eax
	jne	.LBB2_38
# %bb.36:
	cmpl	$16777216, ip_data+48(%rip) # imm = 0x1000000
	jne	.LBB2_38
.LBB2_28:
	xorl	%ebx, %ebx
.LBB2_44:
	movl	ip_data+40(%rip), %eax
	orl	ip_data+36(%rip), %eax
	orl	ip_data+44(%rip), %eax
	orl	ip_data+48(%rip), %eax
	je	.LBB2_47
.LBB2_45:
	testq	%rbx, %rbx
	je	.LBB2_113
# %bb.46:
	movq	%rbx, ip_data(%rip)
	leaq	6(%r12), %rbx
	movl	$40, %esi
	movq	%r14, %rdi
	callq	pbuf_remove_header
	movb	6(%r12), %al
	movw	$40, %r13w
	jmp	.LBB2_53
.LBB2_47:
	cmpl	$767, ip_data+60(%rip)  # imm = 0x2FF
	jne	.LBB2_122
# %bb.48:
	cmpl	$16777216, ip_data+68(%rip) # imm = 0x1000000
	jne	.LBB2_122
# %bb.49:
	cmpb	$-1, ip_data+72(%rip)
	je	.LBB2_45
	jmp	.LBB2_122
.LBB2_50:                               #   in Loop: Header=BB2_53 Depth=1
	movl	$8, %esi
.LBB2_51:                               #   in Loop: Header=BB2_53 Depth=1
	movq	%r14, %rdi
	callq	pbuf_remove_header
.LBB2_52:                               #   in Loop: Header=BB2_53 Depth=1
	movb	(%rbx), %al
	testb	%al, %al
	je	.LBB2_103
.LBB2_53:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_69 Depth 2
                                        #     Child Loop BB2_84 Depth 2
	cmpb	$43, %al
	jg	.LBB2_62
# %bb.54:                               #   in Loop: Header=BB2_53 Depth=1
	testb	%al, %al
	je	.LBB2_79
# %bb.55:                               #   in Loop: Header=BB2_53 Depth=1
	cmpb	$43, %al
	jne	.LBB2_99
# %bb.56:                               #   in Loop: Header=BB2_53 Depth=1
	movzwl	18(%r14), %ecx
	cmpw	$8, %cx
	jb	.LBB2_98
# %bb.57:                               #   in Loop: Header=BB2_53 Depth=1
	movq	8(%r14), %rbx
	movzbl	1(%rbx), %eax
	leaq	8(,%rax,8), %rsi
	cmpw	%cx, %si
	ja	.LBB2_98
# %bb.58:                               #   in Loop: Header=BB2_53 Depth=1
	cmpb	$0, 3(%rbx)
	je	.LBB2_61
# %bb.59:                               #   in Loop: Header=BB2_53 Depth=1
	testb	$1, %al
	jne	.LBB2_117
# %bb.60:                               #   in Loop: Header=BB2_53 Depth=1
	movb	2(%rbx), %al
	andb	$-2, %al
	cmpb	$2, %al
	jne	.LBB2_118
.LBB2_61:                               #   in Loop: Header=BB2_53 Depth=1
	movl	%r13d, %eax
	movzwl	%si, %r13d
	addl	%eax, %r13d
	movq	%r14, %rdi
	callq	pbuf_remove_header
                                        # kill: def $r13w killed $r13w killed $r13d def $r13d
	jmp	.LBB2_52
.LBB2_62:                               #   in Loop: Header=BB2_53 Depth=1
	cmpb	$44, %al
	je	.LBB2_92
# %bb.63:                               #   in Loop: Header=BB2_53 Depth=1
	cmpb	$60, %al
	jne	.LBB2_99
# %bb.64:                               #   in Loop: Header=BB2_53 Depth=1
	movzwl	18(%r14), %eax
	cmpw	$8, %ax
	jb	.LBB2_98
# %bb.65:                               #   in Loop: Header=BB2_53 Depth=1
	movq	8(%r14), %rbx
	movzbl	1(%rbx), %ecx
	leaq	8(,%rcx,8), %rsi
	cmpw	%ax, %si
	ja	.LBB2_98
# %bb.66:                               #   in Loop: Header=BB2_53 Depth=1
	movzwl	%si, %eax
	addl	%r13d, %eax
	movl	%eax, %r13d
	movl	$2, %eax
	jmp	.LBB2_69
	.p2align	4, 0x90
.LBB2_67:                               #   in Loop: Header=BB2_69 Depth=2
	movzbl	1(%rdx), %ecx
.LBB2_68:                               #   in Loop: Header=BB2_69 Depth=2
	addl	%ecx, %eax
	addl	$2, %eax
	cmpl	%esi, %eax
	jge	.LBB2_51
.LBB2_69:                               #   Parent Loop BB2_53 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movslq	%eax, %rcx
	leaq	(%rbx,%rcx), %rdx
	movzbl	(%rbx,%rcx), %ecx
	testb	%cl, %cl
	js	.LBB2_73
# %bb.70:                               #   in Loop: Header=BB2_69 Depth=2
	je	.LBB2_78
# %bb.71:                               #   in Loop: Header=BB2_69 Depth=2
	cmpb	$1, %cl
	je	.LBB2_67
# %bb.72:                               #   in Loop: Header=BB2_69 Depth=2
	cmpb	$5, %cl
	je	.LBB2_67
	jmp	.LBB2_75
.LBB2_73:                               #   in Loop: Header=BB2_69 Depth=2
	cmpb	$-62, %cl
	je	.LBB2_67
# %bb.74:                               #   in Loop: Header=BB2_69 Depth=2
	cmpb	$-55, %cl
	je	.LBB2_67
.LBB2_75:                               #   in Loop: Header=BB2_69 Depth=2
	shrb	$6, %cl
	cmpb	$3, %cl
	je	.LBB2_104
# %bb.76:                               #   in Loop: Header=BB2_69 Depth=2
	cmpb	$2, %cl
	je	.LBB2_106
# %bb.77:                               #   in Loop: Header=BB2_69 Depth=2
	cmpb	$1, %cl
	jne	.LBB2_67
	jmp	.LBB2_122
.LBB2_78:                               #   in Loop: Header=BB2_69 Depth=2
	movl	$-1, %ecx
	jmp	.LBB2_68
.LBB2_79:                               #   in Loop: Header=BB2_53 Depth=1
	movzwl	18(%r14), %eax
	cmpw	$8, %ax
	jb	.LBB2_98
# %bb.80:                               #   in Loop: Header=BB2_53 Depth=1
	movq	8(%r14), %rbx
	movzbl	1(%rbx), %ecx
	leaq	8(,%rcx,8), %rsi
	cmpw	%ax, %si
	ja	.LBB2_98
# %bb.81:                               #   in Loop: Header=BB2_53 Depth=1
	movzwl	%si, %eax
	addl	%r13d, %eax
	movl	%eax, %r13d
	movl	$2, %eax
	jmp	.LBB2_84
	.p2align	4, 0x90
.LBB2_82:                               #   in Loop: Header=BB2_84 Depth=2
	movzbl	1(%rdx), %edi
.LBB2_83:                               #   in Loop: Header=BB2_84 Depth=2
	addl	%edi, %eax
	addl	$2, %eax
	cmpl	%esi, %eax
	jge	.LBB2_51
.LBB2_84:                               #   Parent Loop BB2_53 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movslq	%eax, %rcx
	leaq	(%rbx,%rcx), %rdx
	movzbl	(%rbx,%rcx), %ecx
	testb	%cl, %cl
	jg	.LBB2_87
# %bb.85:                               #   in Loop: Header=BB2_84 Depth=2
	cmpb	$-62, %cl
	je	.LBB2_82
# %bb.86:                               #   in Loop: Header=BB2_84 Depth=2
	movl	$-1, %edi
	testb	%cl, %cl
	je	.LBB2_83
	jmp	.LBB2_89
	.p2align	4, 0x90
.LBB2_87:                               #   in Loop: Header=BB2_84 Depth=2
	cmpb	$1, %cl
	je	.LBB2_82
# %bb.88:                               #   in Loop: Header=BB2_84 Depth=2
	cmpb	$5, %cl
	je	.LBB2_82
.LBB2_89:                               #   in Loop: Header=BB2_84 Depth=2
	shrb	$6, %cl
	cmpb	$3, %cl
	je	.LBB2_104
# %bb.90:                               #   in Loop: Header=BB2_84 Depth=2
	cmpb	$2, %cl
	je	.LBB2_106
# %bb.91:                               #   in Loop: Header=BB2_84 Depth=2
	cmpb	$1, %cl
	jne	.LBB2_82
	jmp	.LBB2_122
.LBB2_92:                               #   in Loop: Header=BB2_53 Depth=1
	cmpw	$7, 18(%r14)
	jbe	.LBB2_114
# %bb.93:                               #   in Loop: Header=BB2_53 Depth=1
	movq	8(%r14), %rbx
	movzwl	2(%rbx), %edi
	callq	lwip_htons
                                        # kill: def $ax killed $ax def $eax
	testb	$1, %al
	je	.LBB2_95
# %bb.94:                               #   in Loop: Header=BB2_53 Depth=1
	movzwl	4(%r12), %edi
	callq	lwip_htons
                                        # kill: def $ax killed $ax def $eax
	testb	$7, %al
	jne	.LBB2_125
.LBB2_95:                               #   in Loop: Header=BB2_53 Depth=1
	addl	$8, %r13d
	movzwl	2(%rbx), %eax
	testl	$63999, %eax            # imm = 0xF9FF
	je	.LBB2_50
# %bb.96:                               #   in Loop: Header=BB2_53 Depth=1
	movw	%r13w, ip_data+32(%rip)
	movq	%r14, %rdi
	callq	ip6_reass
	testq	%rax, %rax
	je	.LBB2_124
# %bb.97:                               #   in Loop: Header=BB2_53 Depth=1
	movq	%rax, %r14
	movq	8(%rax), %r12
	leaq	6(%r12), %rbx
	movl	$40, %esi
	movq	%rax, %rdi
	callq	pbuf_remove_header
	movw	$40, %r13w
	jmp	.LBB2_52
.LBB2_29:
	xorl	%eax, %eax
	jmp	.LBB2_12
.LBB2_98:
	movq	%r14, %rdi
	callq	pbuf_free
	addw	$1, lwip_stats+196(%rip)
	jmp	.LBB2_123
.LBB2_99:
	movw	%r13w, ip_data+32(%rip)
	movb	(%rbx), %al
	cmpb	$57, %al
	jg	.LBB2_107
# %bb.100:
	cmpb	$6, %al
	je	.LBB2_115
# %bb.101:
	cmpb	$17, %al
	jne	.LBB2_109
# %bb.102:
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	udp_input
	jmp	.LBB2_124
.LBB2_103:
	movq	%r14, %rdi
	movl	$1, %esi
	jmp	.LBB2_120
.LBB2_104:
	cmpb	$-1, ip_data+60(%rip)
	je	.LBB2_122
.LBB2_106:
	movq	%r14, %rdi
	movl	$2, %esi
	jmp	.LBB2_121
.LBB2_107:
	cmpb	$58, %al
	je	.LBB2_116
# %bb.108:
	cmpb	$59, %al
	je	.LBB2_113
.LBB2_109:
	movzwl	%r13w, %esi
	movq	%r14, %rdi
	callq	pbuf_add_header_force
	cmpb	$-1, ip_data+60(%rip)
	je	.LBB2_112
# %bb.110:
	cmpb	$58, 6(%r12)
	je	.LBB2_112
# %bb.111:
	movq	%r14, %rdi
	movl	$1, %esi
	movq	%rbx, %rdx
	callq	icmp6_param_problem
.LBB2_112:
	addw	$1, lwip_stats+202(%rip)
	addw	$1, lwip_stats+192(%rip)
.LBB2_113:
	movq	%r14, %rdi
	callq	pbuf_free
	jmp	.LBB2_124
.LBB2_114:
	movq	%r14, %rdi
	callq	pbuf_free
	addw	$1, lwip_stats+244(%rip)
	addw	$1, lwip_stats+240(%rip)
	jmp	.LBB2_124
.LBB2_115:
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	tcp_input
	jmp	.LBB2_124
.LBB2_116:
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	icmp6_input
	jmp	.LBB2_124
.LBB2_38:
	movq	netif_list(%rip), %r13
	xorl	%ebx, %ebx
	jmp	.LBB2_40
.LBB2_39:                               #   in Loop: Header=BB2_40 Depth=1
	movq	(%r13), %r13
.LBB2_40:                               # =>This Inner Loop Header: Depth=1
	testq	%r13, %r13
	je	.LBB2_44
# %bb.41:                               #   in Loop: Header=BB2_40 Depth=1
	cmpq	%r15, %r13
	je	.LBB2_39
# %bb.42:                               #   in Loop: Header=BB2_40 Depth=1
	movq	%r13, %rdi
	callq	ip6_input_accept
	testl	%eax, %eax
	je	.LBB2_39
# %bb.43:
	movq	%r13, %rbx
	jmp	.LBB2_44
.LBB2_117:
	addq	$1, %rbx
	jmp	.LBB2_119
.LBB2_118:
	addq	$2, %rbx
.LBB2_119:
	movq	%r14, %rdi
	xorl	%esi, %esi
.LBB2_120:
	movq	%rbx, %rdx
.LBB2_121:
	callq	icmp6_param_problem
.LBB2_122:
	movq	%r14, %rdi
	callq	pbuf_free
.LBB2_123:
	addw	$1, lwip_stats+192(%rip)
.LBB2_124:
	xorps	%xmm0, %xmm0
	movups	%xmm0, ip_data(%rip)
	movq	$0, ip_data+24(%rip)
	movw	$0, ip_data+32(%rip)
	movups	%xmm0, ip_data+36(%rip)
	movb	$0, ip_data+52(%rip)
	movups	%xmm0, ip_data+60(%rip)
	movb	$0, ip_data+76(%rip)
	jmp	.LBB2_16
.LBB2_125:
	addq	$4, %r12
	movq	%r14, %rdi
	xorl	%esi, %esi
	movq	%r12, %rdx
	jmp	.LBB2_121
.Lfunc_end2:
	.size	ip6_input, .Lfunc_end2-ip6_input
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function ip6_input_accept
	.type	ip6_input_accept,@function
ip6_input_accept:                       # @ip6_input_accept
# %bb.0:
	xorl	%eax, %eax
	testb	$1, 261(%rdi)
	je	.LBB3_20
# %bb.1:
	movl	ip_data+60(%rip), %edx
	movl	ip_data+64(%rip), %ecx
	movl	ip_data+68(%rip), %esi
	movl	ip_data+72(%rip), %r9d
	movb	ip_data+76(%rip), %r8b
	testb	$16, 152(%rdi)
	je	.LBB3_7
# %bb.2:
	cmpl	80(%rdi), %edx
	jne	.LBB3_7
# %bb.3:
	cmpl	84(%rdi), %ecx
	jne	.LBB3_7
# %bb.4:
	cmpl	88(%rdi), %esi
	jne	.LBB3_7
# %bb.5:
	cmpl	92(%rdi), %r9d
	jne	.LBB3_7
# %bb.6:
	movl	$1, %eax
	cmpb	96(%rdi), %r8b
	je	.LBB3_20
.LBB3_7:
	testb	$16, 153(%rdi)
	je	.LBB3_13
# %bb.8:
	cmpl	104(%rdi), %edx
	jne	.LBB3_13
# %bb.9:
	cmpl	108(%rdi), %ecx
	jne	.LBB3_13
# %bb.10:
	cmpl	112(%rdi), %esi
	jne	.LBB3_13
# %bb.11:
	cmpl	116(%rdi), %r9d
	jne	.LBB3_13
# %bb.12:
	movl	$1, %eax
	cmpb	120(%rdi), %r8b
	je	.LBB3_20
.LBB3_13:
	testb	$16, 154(%rdi)
	je	.LBB3_19
# %bb.14:
	cmpl	128(%rdi), %edx
	jne	.LBB3_19
# %bb.15:
	cmpl	132(%rdi), %ecx
	jne	.LBB3_19
# %bb.16:
	cmpl	136(%rdi), %esi
	jne	.LBB3_19
# %bb.17:
	cmpl	140(%rdi), %r9d
	jne	.LBB3_19
# %bb.18:
	movl	$1, %eax
	cmpb	144(%rdi), %r8b
	je	.LBB3_20
.LBB3_19:
	xorl	%eax, %eax
.LBB3_20:
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
	testq	%rsi, %rsi
	je	.LBB4_12
# %bb.1:
	testq	%rbx, %rbx
	je	.LBB4_12
# %bb.2:
	cmpl	$0, (%rsi)
	jne	.LBB4_12
# %bb.3:
	cmpl	$0, 4(%rsi)
	jne	.LBB4_12
# %bb.4:
	cmpl	$0, 8(%rsi)
	jne	.LBB4_12
# %bb.5:
	cmpl	$0, 12(%rsi)
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
	testq	%rax, %rax
	je	.LBB4_11
# %bb.7:
	movq	%rax, %rsi
	cmpl	$0, (%rax)
	jne	.LBB4_12
# %bb.8:
	cmpl	$0, 4(%rsi)
	jne	.LBB4_12
# %bb.9:
	cmpl	$0, 8(%rsi)
	jne	.LBB4_12
# %bb.10:
	cmpl	$0, 12(%rsi)
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
	jne	.LBB5_1
# %bb.3:
	movq	%rdx, %rbx
	movq	%rdi, %r15
	movq	16(%rbp), %r12
	testq	%rdx, %rdx
	je	.LBB5_20
# %bb.4:
	cmpb	$0, 16(%rbx)
	movq	%rsi, -80(%rbp)         # 8-byte Spill
	movl	%r8d, -68(%rbp)         # 4-byte Spill
	je	.LBB5_6
.LBB5_5:
	movl	%ecx, %r14d
	movl	%r9d, %r13d
	jmp	.LBB5_15
.LBB5_20:
	movq	8(%r15), %rax
	movdqu	24(%rax), %xmm0
	movdqa	%xmm0, -64(%rbp)
	movb	$0, -48(%rbp)
	movd	%xmm0, %eax
	movl	%eax, %ecx
	andl	$49407, %ecx            # imm = 0xC0FF
	cmpl	$33022, %ecx            # imm = 0x80FE
	je	.LBB5_24
# %bb.21:
	andl	$36863, %eax            # imm = 0x8FFF
	cmpl	$767, %eax              # imm = 0x2FF
	je	.LBB5_24
# %bb.22:
	movzwl	%ax, %eax
	cmpl	$511, %eax              # imm = 0x1FF
	jne	.LBB5_23
.LBB5_24:
	movb	264(%r12), %al
	addb	$1, %al
.LBB5_25:
	movb	%al, -48(%rbp)
	leaq	-64(%rbp), %rbx
	jmp	.LBB5_26
.LBB5_6:
	movl	(%rbx), %eax
	movl	%eax, %edi
	andl	$49407, %edi            # imm = 0xC0FF
	cmpl	$33022, %edi            # imm = 0x80FE
	je	.LBB5_9
# %bb.7:
	movl	%eax, %edx
	andl	$36863, %edx            # imm = 0x8FFF
	cmpl	$767, %edx              # imm = 0x2FF
	je	.LBB5_9
# %bb.8:
	movzwl	%dx, %edx
	cmpl	$511, %edx              # imm = 0x1FF
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
	cmpl	$33022, %edi            # imm = 0x80FE
	je	.LBB5_13
# %bb.10:
	andl	$36863, %eax            # imm = 0x8FFF
	cmpl	$767, %eax              # imm = 0x2FF
	je	.LBB5_13
# %bb.11:
	movzwl	%ax, %eax
	cmpl	$511, %eax              # imm = 0x1FF
	jne	.LBB5_12
.LBB5_13:
	movl	%ecx, %r14d
	movb	264(%r12), %al
	addb	$1, %al
.LBB5_14:
	movl	%r9d, %r13d
	movb	%al, -48(%rbp)
	leaq	-64(%rbp), %rbx
.LBB5_15:
	movl	$40, %esi
	movq	%r15, %rdi
	callq	pbuf_add_header
	testb	%al, %al
	je	.LBB5_17
# %bb.16:
	addw	$1, lwip_stats+206(%rip)
	movb	$-2, %al
	jmp	.LBB5_30
.LBB5_17:
	cmpw	$39, 18(%r15)
	jbe	.LBB5_18
# %bb.19:
	movq	8(%r15), %r12
	movb	%r14b, 7(%r12)
	movb	%r13b, 6(%r12)
	movl	(%rbx), %eax
	movl	%eax, 24(%r12)
	movl	4(%rbx), %eax
	movl	%eax, 28(%r12)
	movl	8(%rbx), %eax
	movl	%eax, 32(%r12)
	movl	12(%rbx), %eax
	movl	%eax, 36(%r12)
	movzbl	-68(%rbp), %edi         # 1-byte Folded Reload
	shll	$20, %edi
	orl	$1610612736, %edi       # imm = 0x60000000
	callq	lwip_htonl
	movl	%eax, (%r12)
	movl	16(%r15), %eax
	addl	$-40, %eax
	movzwl	%ax, %edi
	callq	lwip_htons
	movw	%ax, 4(%r12)
	movq	-80(%rbp), %r14         # 8-byte Reload
	testq	%r14, %r14
	movl	$ip6_addr_any, %eax
	cmovneq	%r14, %rax
	movl	(%rax), %ecx
	movl	%ecx, 8(%r12)
	movl	4(%rax), %ecx
	movl	%ecx, 12(%r12)
	movl	8(%rax), %ecx
	movl	%ecx, 16(%r12)
	movl	12(%rax), %eax
	movl	%eax, 20(%r12)
	movq	16(%rbp), %r12
.LBB5_26:
	addw	$1, lwip_stats+186(%rip)
	cmpw	$0, 252(%r12)
	je	.LBB5_29
# %bb.27:
	movzwl	16(%r15), %r14d
	movq	%rbx, %rdi
	movq	%r12, %rsi
	callq	nd6_get_destination_mtu
	cmpw	%ax, %r14w
	jbe	.LBB5_29
# %bb.28:
	movq	%r15, %rdi
	movq	%r12, %rsi
	movq	%rbx, %rdx
	callq	ip6_frag
	jmp	.LBB5_30
.LBB5_29:
	movq	%r12, %rdi
	movq	%r15, %rsi
	movq	%rbx, %rdx
	callq	*208(%r12)
.LBB5_30:
	movl	$42, __A_VARIABLE(%rip)
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB5_23:
	xorl	%eax, %eax
	jmp	.LBB5_25
.LBB5_12:
	movl	%ecx, %r14d
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
	subq	$88, %rsp
	cmpb	$1, 22(%rdi)
	jne	.LBB7_21
# %bb.1:
	movq	%rdx, %rbx
	movq	%rsi, %r14
	movq	%rdi, %r12
	movl	%ecx, %r13d
	movl	%r8d, -44(%rbp)         # 4-byte Spill
	movl	%r9d, -48(%rbp)         # 4-byte Spill
	testq	%rdx, %rdx
	je	.LBB7_3
# %bb.2:
	movq	%r14, %rdi
	movq	%rbx, %rsi
	jmp	.LBB7_4
.LBB7_3:
	movq	8(%r12), %rax
	movups	8(%rax), %xmm0
	movaps	%xmm0, -112(%rbp)
	movb	$0, -96(%rbp)
	movups	24(%rax), %xmm0
	movaps	%xmm0, -80(%rbp)
	movb	$0, -64(%rbp)
	leaq	-112(%rbp), %rdi
	leaq	-80(%rbp), %rsi
.LBB7_4:
	callq	ip6_route
	movq	%rax, %r15
	testq	%rax, %rax
	je	.LBB7_5
# %bb.6:
	testq	%r14, %r14
	je	.LBB7_18
# %bb.7:
	testq	%rbx, %rbx
	je	.LBB7_18
# %bb.8:
	cmpl	$0, (%r14)
	jne	.LBB7_18
# %bb.9:
	cmpl	$0, 4(%r14)
	jne	.LBB7_18
# %bb.10:
	cmpl	$0, 8(%r14)
	jne	.LBB7_18
# %bb.11:
	cmpl	$0, 12(%r14)
	je	.LBB7_12
.LBB7_18:
	movq	%r15, (%rsp)
	movzbl	%r13b, %ecx
	movzbl	-44(%rbp), %r8d         # 1-byte Folded Reload
	movzbl	-48(%rbp), %r9d         # 1-byte Folded Reload
	movq	%r12, %rdi
	movq	%r14, %rsi
	movq	%rbx, %rdx
	callq	ip6_output_if_src
.LBB7_19:
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB7_20
.LBB7_5:
	addw	$1, lwip_stats+200(%rip)
	movb	$-4, %al
.LBB7_20:
	movl	$42, __A_VARIABLE(%rip)
	addq	$88, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB7_12:
	movq	%r15, %rdi
	movq	%rbx, %rsi
	callq	ip6_select_source_address
	testq	%rax, %rax
	je	.LBB7_17
# %bb.13:
	movq	%rax, %r14
	cmpl	$0, (%rax)
	jne	.LBB7_18
# %bb.14:
	cmpl	$0, 4(%r14)
	jne	.LBB7_18
# %bb.15:
	cmpl	$0, 8(%r14)
	jne	.LBB7_18
# %bb.16:
	cmpl	$0, 12(%r14)
	jne	.LBB7_18
.LBB7_17:
	addw	$1, lwip_stats+200(%rip)
	movb	$-4, %al
	jmp	.LBB7_19
.LBB7_21:
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
