	.text
	.file	"nd6.c"
	.globl	nd6_input               # -- Begin function nd6_input
	.p2align	4, 0x90
	.type	nd6_input,@function
nd6_input:                              # @nd6_input
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$104, %rsp
	movq	%rsi, %r14
	movq	%rdi, %r15
	addw	$1, lwip_stats+288(%rip)
	movq	8(%rdi), %r13
	movb	(%r13), %al
	leal	122(%rax), %ecx
	cmpb	$3, %cl
	ja	.LBB0_8
# %bb.1:
	movzbl	%cl, %eax
	jmpq	*.LJTI0_0(,%rax,8)
.LBB0_2:
	cmpw	$15, 18(%r15)
	jbe	.LBB0_32
# %bb.3:
	movl	ip_data+36(%rip), %eax
	movl	%eax, %ecx
	andl	$49407, %ecx            # imm = 0xC0FF
	cmpl	$33022, %ecx            # imm = 0x80FE
	jne	.LBB0_65
# %bb.4:
	movq	ip_data+24(%rip), %rcx
	cmpb	$-1, 7(%rcx)
	jne	.LBB0_65
# %bb.5:
	cmpb	$0, 1(%r13)
	jne	.LBB0_65
# %bb.6:
	cmpb	$3, 266(%r14)
	jae	.LBB0_137
# %bb.7:
	xorl	%ecx, %ecx
	jmp	.LBB0_138
.LBB0_8:
	cmpb	$2, %al
	jne	.LBB0_23
# %bb.9:
	cmpw	$47, 18(%r15)
	jbe	.LBB0_32
# %bb.10:
	movl	32(%r13), %eax
	movl	36(%r13), %ecx
	movl	40(%r13), %edx
	movl	44(%r13), %r8d
	movl	%eax, %esi
	andl	$49407, %esi            # imm = 0xC0FF
	cmpl	$33022, %esi            # imm = 0x80FE
	je	.LBB0_13
# %bb.11:
	movl	%eax, %esi
	andl	$36863, %esi            # imm = 0x8FFF
	cmpl	$767, %esi              # imm = 0x2FF
	je	.LBB0_13
# %bb.12:
	movzwl	%si, %esi
	cmpl	$511, %esi              # imm = 0x1FF
	jne	.LBB0_72
.LBB0_13:
	movb	264(%r14), %dil
	addb	$1, %dil
.LBB0_14:
	movl	$destination_cache, %ebx
	xorl	%esi, %esi
	jmp	.LBB0_16
	.p2align	4, 0x90
.LBB0_15:                               #   in Loop: Header=BB0_16 Depth=1
	addq	$1, %rsi
	addq	$48, %rbx
	cmpq	$10, %rsi
	jae	.LBB0_35
.LBB0_16:                               # =>This Inner Loop Header: Depth=1
	cmpl	(%rbx), %eax
	jne	.LBB0_15
# %bb.17:                               #   in Loop: Header=BB0_16 Depth=1
	cmpl	4(%rbx), %ecx
	jne	.LBB0_15
# %bb.18:                               #   in Loop: Header=BB0_16 Depth=1
	cmpl	8(%rbx), %edx
	jne	.LBB0_15
# %bb.19:                               #   in Loop: Header=BB0_16 Depth=1
	cmpl	12(%rbx), %r8d
	jne	.LBB0_15
# %bb.20:                               #   in Loop: Header=BB0_16 Depth=1
	cmpb	16(%rbx), %dil
	jne	.LBB0_15
# %bb.21:
	movl	$42, __A_VARIABLE(%rip)
	testw	%si, %si
	js	.LBB0_36
# %bb.22:
	movl	4(%r13), %edi
	callq	lwip_htonl
	cmpl	$65535, %eax            # imm = 0xFFFF
	movl	$65535, %ecx            # imm = 0xFFFF
	cmovbl	%eax, %ecx
	movw	%cx, 40(%rbx)
	jmp	.LBB0_36
.LBB0_23:
	addw	$1, lwip_stats+302(%rip)
.LBB0_24:
	addw	$1, lwip_stats+292(%rip)
	jmp	.LBB0_36
.LBB0_25:
	movzwl	18(%r15), %edi
	cmpq	$23, %rdi
	jbe	.LBB0_32
# %bb.26:
	movl	8(%r13), %eax
	movl	12(%r13), %ecx
	movl	16(%r13), %edx
	movl	20(%r13), %r8d
	movl	%eax, %esi
	andl	$49407, %esi            # imm = 0xC0FF
	cmpl	$33022, %esi            # imm = 0x80FE
	jne	.LBB0_37
# %bb.27:
	movb	264(%r14), %sil
	addb	$1, %sil
	jmp	.LBB0_38
.LBB0_28:
	movzwl	18(%r15), %ebx
	cmpq	$39, %rbx
	jbe	.LBB0_32
# %bb.29:
	movl	24(%r13), %eax
	movl	28(%r13), %ecx
	movl	32(%r13), %edx
	movl	36(%r13), %r8d
	movl	%eax, %esi
	andl	$49407, %esi            # imm = 0xC0FF
	cmpl	$33022, %esi            # imm = 0x80FE
	jne	.LBB0_56
# %bb.30:
	movb	264(%r14), %dil
	addb	$1, %dil
	jmp	.LBB0_57
.LBB0_31:
	movzwl	18(%r15), %eax
	cmpq	$23, %rax
	ja	.LBB0_33
.LBB0_32:
	movq	%r15, %rdi
	callq	pbuf_free
	addw	$1, lwip_stats+296(%rip)
	jmp	.LBB0_66
.LBB0_33:
	movdqu	8(%r13), %xmm0
	movdqa	%xmm0, -144(%rbp)
	movb	$0, -128(%rbp)
	movd	%xmm0, %ebx
	movl	%ebx, %ecx
	andl	$49407, %ecx            # imm = 0xC0FF
	cmpl	$33022, %ecx            # imm = 0x80FE
	jne	.LBB0_63
# %bb.34:
	movb	264(%r14), %r12b
	addb	$1, %r12b
	jmp	.LBB0_64
.LBB0_37:
	xorl	%esi, %esi
.LBB0_38:
	movq	ip_data+24(%rip), %rbx
	cmpb	$-1, 7(%rbx)
	jne	.LBB0_65
# %bb.39:
	cmpb	$-1, %al
	je	.LBB0_65
# %bb.40:
	cmpb	$0, 1(%r13)
	jne	.LBB0_65
# %bb.41:
	cmpb	$-1, ip_data+60(%rip)
	jne	.LBB0_73
# %bb.42:
	movb	152(%r14), %bl
	orb	$64, %bl
	cmpb	$64, %bl
	jne	.LBB0_178
.LBB0_43:
	movb	153(%r14), %bl
	orb	$64, %bl
	cmpb	$64, %bl
	jne	.LBB0_189
.LBB0_44:
	movb	154(%r14), %bl
	orb	$64, %bl
	cmpb	$64, %bl
	jne	.LBB0_194
.LBB0_45:
	cmpw	$26, %di
	jb	.LBB0_32
# %bb.46:
	movzbl	25(%r13), %ebx
	leaq	24(,%rbx,8), %rbx
	cmpq	%rdi, %rbx
	ja	.LBB0_32
# %bb.47:                               # %.preheader
	movl	$neighbor_cache+32, %edi
	xorl	%ebx, %ebx
	jmp	.LBB0_49
.LBB0_48:                               #   in Loop: Header=BB0_49 Depth=1
	addq	$1, %rbx
	addq	$56, %rdi
	cmpq	$10, %rbx
	jae	.LBB0_35
.LBB0_49:                               # =>This Inner Loop Header: Depth=1
	cmpl	-32(%rdi), %eax
	jne	.LBB0_48
# %bb.50:                               #   in Loop: Header=BB0_49 Depth=1
	cmpl	-28(%rdi), %ecx
	jne	.LBB0_48
# %bb.51:                               #   in Loop: Header=BB0_49 Depth=1
	cmpl	-24(%rdi), %edx
	jne	.LBB0_48
# %bb.52:                               #   in Loop: Header=BB0_49 Depth=1
	cmpl	-20(%rdi), %r8d
	jne	.LBB0_48
# %bb.53:                               #   in Loop: Header=BB0_49 Depth=1
	cmpb	-16(%rdi), %sil
	jne	.LBB0_48
# %bb.54:
	movl	$42, __A_VARIABLE(%rip)
	testb	$32, 4(%r13)
	je	.LBB0_36
# %bb.55:
	addq	$26, %r13
	movzbl	260(%r14), %edx
	movq	%r13, %rsi
	callq	memcpy
	jmp	.LBB0_36
.LBB0_56:
	xorl	%edi, %edi
.LBB0_57:
	movl	$49407, %esi            # imm = 0xC0FF
	andl	ip_data+36(%rip), %esi
	cmpl	$33022, %esi            # imm = 0x80FE
	jne	.LBB0_65
# %bb.58:
	movq	ip_data+24(%rip), %rsi
	cmpb	$-1, 7(%rsi)
	jne	.LBB0_65
# %bb.59:
	cmpb	$-1, %al
	je	.LBB0_65
# %bb.60:
	cmpb	$0, 1(%r13)
	jne	.LBB0_65
# %bb.61:
	cmpw	$42, %bx
	jb	.LBB0_125
# %bb.62:
	leaq	40(%r13), %r9
	movzbl	41(%r13), %esi
	leaq	40(,%rsi,8), %rsi
	xorl	%r12d, %r12d
	cmpq	%rbx, %rsi
	cmovbeq	%r9, %r12
	jmp	.LBB0_126
.LBB0_63:
	xorl	%r12d, %r12d
.LBB0_64:
	movb	%r12b, -128(%rbp)
	movq	ip_data+24(%rip), %rcx
	cmpb	$-1, 7(%rcx)
	je	.LBB0_68
.LBB0_65:
	movq	%r15, %rdi
	callq	pbuf_free
	addw	$1, lwip_stats+302(%rip)
.LBB0_66:
	addw	$1, lwip_stats+292(%rip)
	jmp	.LBB0_67
.LBB0_68:
	cmpb	$-1, %bl
	je	.LBB0_65
# %bb.69:
	cmpb	$0, 1(%r13)
	jne	.LBB0_65
# %bb.70:
	cmpw	$26, %ax
	jb	.LBB0_88
# %bb.71:
	movzbl	25(%r13), %ecx
	addq	$24, %r13
	leaq	24(,%rcx,8), %rcx
	xorl	%r10d, %r10d
	cmpq	%rax, %rcx
	cmovbeq	%r13, %r10
	jmp	.LBB0_89
.LBB0_72:
	xorl	%edi, %edi
	jmp	.LBB0_14
.LBB0_73:                               # %.preheader1
	movl	$neighbor_cache+48, %ebx
	xorl	%r12d, %r12d
	jmp	.LBB0_75
	.p2align	4, 0x90
.LBB0_74:                               #   in Loop: Header=BB0_75 Depth=1
	addq	$1, %r12
	addq	$56, %rbx
	cmpq	$10, %r12
	jae	.LBB0_35
.LBB0_75:                               # =>This Inner Loop Header: Depth=1
	cmpl	-48(%rbx), %eax
	jne	.LBB0_74
# %bb.76:                               #   in Loop: Header=BB0_75 Depth=1
	cmpl	-44(%rbx), %ecx
	jne	.LBB0_74
# %bb.77:                               #   in Loop: Header=BB0_75 Depth=1
	cmpl	-40(%rbx), %edx
	jne	.LBB0_74
# %bb.78:                               #   in Loop: Header=BB0_75 Depth=1
	cmpl	-36(%rbx), %r8d
	jne	.LBB0_74
# %bb.79:                               #   in Loop: Header=BB0_75 Depth=1
	cmpb	-32(%rbx), %sil
	jne	.LBB0_74
# %bb.80:
	movl	$42, __A_VARIABLE(%rip)
	testb	%r12b, %r12b
	js	.LBB0_36
# %bb.81:
	testb	$32, 4(%r13)
	jne	.LBB0_83
# %bb.82:
	cmpb	$1, (%rbx)
	jne	.LBB0_86
.LBB0_83:
	cmpw	$25, %di
	jbe	.LBB0_32
# %bb.84:
	movzbl	25(%r13), %eax
	leaq	24(,%rax,8), %rax
	cmpq	%rdi, %rax
	ja	.LBB0_32
# %bb.85:
	movq	%rbx, %rdi
	addq	$-16, %rdi
	addq	$26, %r13
	movzbl	260(%r14), %edx
	movq	%r13, %rsi
	callq	memcpy
.LBB0_86:
	imulq	$56, %r12, %rax
	movq	%r14, neighbor_cache+24(%rax)
	movb	$2, (%rbx)
	movl	reachable_time(%rip), %ecx
	movl	%ecx, neighbor_cache+52(%rax)
	cmpq	$0, neighbor_cache+40(%rax)
	je	.LBB0_36
# %bb.87:
	movsbl	%r12b, %edi
	callq	nd6_send_q
	jmp	.LBB0_36
.LBB0_88:
	xorl	%r10d, %r10d
.LBB0_89:
	movl	ip_data+36(%rip), %eax
	movl	ip_data+40(%rip), %ecx
	movl	%ecx, %edx
	orl	%eax, %edx
	movl	ip_data+44(%rip), %r9d
	movl	ip_data+48(%rip), %r8d
	movl	%r9d, %edi
	orl	%r8d, %edi
	orl	%edx, %edi
	movb	152(%r14), %dl
	testb	$16, %dl
	jne	.LBB0_92
# %bb.90:
	testb	$8, %dl
	je	.LBB0_97
# %bb.91:
	testl	%edi, %edi
	jne	.LBB0_97
.LBB0_92:
	cmpl	80(%r14), %ebx
	jne	.LBB0_97
# %bb.93:
	pshufd	$229, %xmm0, %xmm1      # xmm1 = xmm0[1,1,2,3]
	movd	%xmm1, %esi
	cmpl	84(%r14), %esi
	jne	.LBB0_97
# %bb.94:
	pshufd	$78, %xmm0, %xmm1       # xmm1 = xmm0[2,3,0,1]
	movd	%xmm1, %esi
	cmpl	88(%r14), %esi
	jne	.LBB0_97
# %bb.95:
	pshufd	$231, %xmm0, %xmm1      # xmm1 = xmm0[3,1,2,3]
	movd	%xmm1, %esi
	cmpl	92(%r14), %esi
	jne	.LBB0_97
# %bb.96:
	cmpb	96(%r14), %r12b
	je	.LBB0_113
.LBB0_97:
	movzbl	153(%r14), %esi
	testb	$16, %sil
	jne	.LBB0_100
# %bb.98:
	testb	$8, %sil
	je	.LBB0_105
# %bb.99:
	testl	%edi, %edi
	jne	.LBB0_105
.LBB0_100:
	cmpl	104(%r14), %ebx
	jne	.LBB0_105
# %bb.101:
	pshufd	$229, %xmm0, %xmm1      # xmm1 = xmm0[1,1,2,3]
	movd	%xmm1, %esi
	cmpl	108(%r14), %esi
	jne	.LBB0_105
# %bb.102:
	pshufd	$78, %xmm0, %xmm1       # xmm1 = xmm0[2,3,0,1]
	movd	%xmm1, %esi
	cmpl	112(%r14), %esi
	jne	.LBB0_105
# %bb.103:
	pshufd	$231, %xmm0, %xmm1      # xmm1 = xmm0[3,1,2,3]
	movd	%xmm1, %esi
	cmpl	116(%r14), %esi
	jne	.LBB0_105
# %bb.104:
	cmpb	120(%r14), %r12b
	je	.LBB0_113
.LBB0_105:
	movzbl	154(%r14), %esi
	testb	$16, %sil
	jne	.LBB0_108
# %bb.106:
	testb	$8, %sil
	je	.LBB0_36
# %bb.107:
	testl	%edi, %edi
	jne	.LBB0_36
.LBB0_108:
	cmpl	128(%r14), %ebx
	jne	.LBB0_36
# %bb.109:
	pshufd	$229, %xmm0, %xmm1      # xmm1 = xmm0[1,1,2,3]
	movd	%xmm1, %esi
	cmpl	132(%r14), %esi
	jne	.LBB0_36
# %bb.110:
	pshufd	$78, %xmm0, %xmm1       # xmm1 = xmm0[2,3,0,1]
	movd	%xmm1, %esi
	cmpl	136(%r14), %esi
	jne	.LBB0_36
# %bb.111:
	pshufd	$231, %xmm0, %xmm1      # xmm1 = xmm0[3,1,2,3]
	movd	%xmm1, %esi
	cmpl	140(%r14), %esi
	jne	.LBB0_36
# %bb.112:
	cmpb	144(%r14), %r12b
	jne	.LBB0_36
.LBB0_113:
	testl	%edi, %edi
	je	.LBB0_319
# %bb.114:
	testq	%r10, %r10
	je	.LBB0_65
# %bb.115:
	movq	%r10, %r13
	movl	$neighbor_cache+32, %edi
	movb	ip_data+52(%rip), %dl
	xorl	%ebx, %ebx
	jmp	.LBB0_117
.LBB0_116:                              #   in Loop: Header=BB0_117 Depth=1
	addq	$1, %rbx
	addq	$56, %rdi
	cmpq	$10, %rbx
	jae	.LBB0_336
.LBB0_117:                              # =>This Inner Loop Header: Depth=1
	cmpl	-32(%rdi), %eax
	jne	.LBB0_116
# %bb.118:                              #   in Loop: Header=BB0_117 Depth=1
	cmpl	-28(%rdi), %ecx
	jne	.LBB0_116
# %bb.119:                              #   in Loop: Header=BB0_117 Depth=1
	cmpl	-24(%rdi), %r9d
	jne	.LBB0_116
# %bb.120:                              #   in Loop: Header=BB0_117 Depth=1
	cmpl	-20(%rdi), %r8d
	jne	.LBB0_116
# %bb.121:                              #   in Loop: Header=BB0_117 Depth=1
	cmpb	-16(%rdi), %dl
	jne	.LBB0_116
# %bb.122:
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$1, 16(%rdi)
	jne	.LBB0_339
# %bb.123:
	movq	%r14, -8(%rdi)
	movq	%r13, %rsi
	addq	$2, %rsi
	movzbl	260(%r14), %edx
	leaq	16(%rdi), %r12
	callq	memcpy
	jmp	.LBB0_338
.LBB0_125:
	xorl	%r12d, %r12d
.LBB0_126:
	movl	$destination_cache, %ebx
	xorl	%esi, %esi
	jmp	.LBB0_128
	.p2align	4, 0x90
.LBB0_127:                              #   in Loop: Header=BB0_128 Depth=1
	addq	$1, %rsi
	addq	$48, %rbx
	cmpq	$10, %rsi
	jae	.LBB0_35
.LBB0_128:                              # =>This Inner Loop Header: Depth=1
	cmpl	(%rbx), %eax
	jne	.LBB0_127
# %bb.129:                              #   in Loop: Header=BB0_128 Depth=1
	cmpl	4(%rbx), %ecx
	jne	.LBB0_127
# %bb.130:                              #   in Loop: Header=BB0_128 Depth=1
	cmpl	8(%rbx), %edx
	jne	.LBB0_127
# %bb.131:                              #   in Loop: Header=BB0_128 Depth=1
	cmpl	12(%rbx), %r8d
	jne	.LBB0_127
# %bb.132:                              #   in Loop: Header=BB0_128 Depth=1
	cmpb	16(%rbx), %dil
	jne	.LBB0_127
# %bb.133:
	movl	$42, __A_VARIABLE(%rip)
	testw	%si, %si
	js	.LBB0_36
# %bb.134:
	movdqu	8(%r13), %xmm1
	movd	%xmm1, %eax
	movl	%eax, %ecx
	andl	$49407, %ecx            # imm = 0xC0FF
	cmpl	$33022, %ecx            # imm = 0x80FE
	jne	.LBB0_340
# %bb.135:
	movb	264(%r14), %r13b
	addb	$1, %r13b
	jmp	.LBB0_341
.LBB0_137:
	movq	%r14, %rdi
	callq	nd6_send_rs
	testb	%al, %al
	setne	%cl
	movl	ip_data+36(%rip), %eax
.LBB0_138:
	movb	%cl, 266(%r14)
	movl	ip_data+40(%rip), %ecx
	movl	ip_data+44(%rip), %edx
	movl	ip_data+48(%rip), %esi
	movb	ip_data+52(%rip), %r8b
	movq	default_router_list(%rip), %rdi
	testq	%rdi, %rdi
	je	.LBB0_146
# %bb.139:
	cmpq	%r14, 24(%rdi)
	jne	.LBB0_146
# %bb.140:
	cmpl	(%rdi), %eax
	jne	.LBB0_146
# %bb.141:
	cmpl	4(%rdi), %ecx
	jne	.LBB0_146
# %bb.142:
	cmpl	8(%rdi), %edx
	jne	.LBB0_146
# %bb.143:
	cmpl	12(%rdi), %esi
	jne	.LBB0_146
# %bb.144:
	cmpb	16(%rdi), %r8b
	jne	.LBB0_146
# %bb.145:
	xorl	%ebx, %ebx
	jmp	.LBB0_206
.LBB0_146:
	movq	default_router_list+16(%rip), %rdi
	testq	%rdi, %rdi
	je	.LBB0_153
# %bb.147:
	cmpq	%r14, 24(%rdi)
	jne	.LBB0_153
# %bb.148:
	cmpl	(%rdi), %eax
	jne	.LBB0_153
# %bb.149:
	cmpl	4(%rdi), %ecx
	jne	.LBB0_153
# %bb.150:
	cmpl	8(%rdi), %edx
	jne	.LBB0_153
# %bb.151:
	cmpl	12(%rdi), %esi
	jne	.LBB0_153
# %bb.152:
	movl	$1, %ebx
	cmpb	16(%rdi), %r8b
	je	.LBB0_206
.LBB0_153:
	movq	default_router_list+32(%rip), %rdi
	testq	%rdi, %rdi
	je	.LBB0_160
# %bb.154:
	cmpq	%r14, 24(%rdi)
	jne	.LBB0_160
# %bb.155:
	cmpl	(%rdi), %eax
	jne	.LBB0_160
# %bb.156:
	cmpl	4(%rdi), %ecx
	jne	.LBB0_160
# %bb.157:
	cmpl	8(%rdi), %edx
	jne	.LBB0_160
# %bb.158:
	cmpl	12(%rdi), %esi
	jne	.LBB0_160
# %bb.159:
	movl	$2, %ebx
	cmpb	16(%rdi), %r8b
	je	.LBB0_206
.LBB0_160:
	movl	$42, __A_VARIABLE(%rip)
	movl	$neighbor_cache, %r12d
	xorl	%ebx, %ebx
	jmp	.LBB0_162
.LBB0_161:                              #   in Loop: Header=BB0_162 Depth=1
	addq	$1, %rbx
	addq	$56, %r12
	cmpq	$10, %rbx
	jae	.LBB0_168
.LBB0_162:                              # =>This Inner Loop Header: Depth=1
	cmpl	(%r12), %eax
	jne	.LBB0_161
# %bb.163:                              #   in Loop: Header=BB0_162 Depth=1
	cmpl	4(%r12), %ecx
	jne	.LBB0_161
# %bb.164:                              #   in Loop: Header=BB0_162 Depth=1
	cmpl	8(%r12), %edx
	jne	.LBB0_161
# %bb.165:                              #   in Loop: Header=BB0_162 Depth=1
	cmpl	12(%r12), %esi
	jne	.LBB0_161
# %bb.166:                              #   in Loop: Header=BB0_162 Depth=1
	cmpb	16(%r12), %r8b
	jne	.LBB0_161
# %bb.167:
	movl	$42, __A_VARIABLE(%rip)
	testb	%bl, %bl
	jns	.LBB0_171
	jmp	.LBB0_169
.LBB0_168:
	movl	$42, __A_VARIABLE(%rip)
.LBB0_169:
	callq	nd6_new_neighbor_cache_entry
	testb	%al, %al
	js	.LBB0_176
# %bb.170:
	movsbq	%al, %rbx
	imulq	$56, %rbx, %rax
	leaq	neighbor_cache(%rax), %r12
	movdqu	ip_data+36(%rip), %xmm0
	movdqu	%xmm0, neighbor_cache(%rax)
	movb	ip_data+52(%rip), %cl
	movb	%cl, neighbor_cache+16(%rax)
	movq	%r14, neighbor_cache+24(%rax)
	movq	$0, neighbor_cache+40(%rax)
	movb	$1, neighbor_cache+48(%rax)
	movl	$1, neighbor_cache+52(%rax)
	movq	%r14, %rdi
	movq	%r12, %rsi
	movl	$1, %edx
	callq	nd6_send_ns
	movl	$42, __A_VARIABLE(%rip)
	movq	default_router_list+32(%rip), %rdi
.LBB0_171:
	imulq	$56, %rbx, %rax
	movb	$1, neighbor_cache+49(%rax)
	cmpq	%r12, %rdi
	je	.LBB0_203
# %bb.172:
	movq	default_router_list+16(%rip), %rdx
	cmpq	%r12, %rdx
	je	.LBB0_204
# %bb.173:
	movq	default_router_list(%rip), %rsi
	xorl	%ebx, %ebx
	cmpq	%r12, %rsi
	je	.LBB0_206
# %bb.174:
	cmpq	$1, %rdi
	movb	$3, %cl
	sbbb	$0, %cl
	testq	%rdx, %rdx
	movzbl	%cl, %ecx
	movl	$1, %edx
	cmovnel	%ecx, %edx
	testq	%rsi, %rsi
	cmovel	%ebx, %edx
	cmpb	$3, %dl
	jne	.LBB0_205
# %bb.175:
	leaq	neighbor_cache+49(%rax), %rax
	movb	$0, (%rax)
.LBB0_176:
	movl	$42, __A_VARIABLE(%rip)
.LBB0_177:
	movq	%r15, %rdi
	callq	pbuf_free
	addw	$1, lwip_stats+298(%rip)
	jmp	.LBB0_67
.LBB0_178:
	cmpl	80(%r14), %eax
	jne	.LBB0_43
# %bb.179:
	cmpl	84(%r14), %ecx
	jne	.LBB0_43
# %bb.180:
	cmpl	88(%r14), %edx
	jne	.LBB0_43
# %bb.181:
	cmpl	92(%r14), %r8d
	jne	.LBB0_43
# %bb.182:
	cmpb	96(%r14), %sil
	jne	.LBB0_43
# %bb.183:
	movq	%r14, %rdi
	xorl	%esi, %esi
	movl	$64, %edx
	callq	netif_ip6_addr_set_state
	cmpb	$0, 153(%r14)
	je	.LBB0_186
# %bb.184:
	cmpl	$0, 160(%r14)
	je	.LBB0_186
# %bb.185:
	movq	%r14, %rdi
	movl	$1, %esi
	movl	$64, %edx
	callq	netif_ip6_addr_set_state
.LBB0_186:
	cmpb	$0, 154(%r14)
	je	.LBB0_35
# %bb.187:
	cmpl	$0, 164(%r14)
	je	.LBB0_35
# %bb.188:
	movq	%r14, %rdi
	movl	$2, %esi
	jmp	.LBB0_200
.LBB0_189:
	cmpl	104(%r14), %eax
	jne	.LBB0_44
# %bb.190:
	cmpl	108(%r14), %ecx
	jne	.LBB0_44
# %bb.191:
	cmpl	112(%r14), %edx
	jne	.LBB0_44
# %bb.192:
	cmpl	116(%r14), %r8d
	jne	.LBB0_44
# %bb.193:
	movb	$1, %bl
	cmpb	120(%r14), %sil
	jne	.LBB0_44
	jmp	.LBB0_199
.LBB0_194:
	cmpl	128(%r14), %eax
	jne	.LBB0_45
# %bb.195:
	cmpl	132(%r14), %ecx
	jne	.LBB0_45
# %bb.196:
	cmpl	136(%r14), %edx
	jne	.LBB0_45
# %bb.197:
	cmpl	140(%r14), %r8d
	jne	.LBB0_45
# %bb.198:
	movb	$2, %bl
	cmpb	144(%r14), %sil
	jne	.LBB0_45
.LBB0_199:
	movzbl	%bl, %esi
	movq	%r14, %rdi
.LBB0_200:
	movl	$64, %edx
	callq	netif_ip6_addr_set_state
.LBB0_35:
	movl	$42, __A_VARIABLE(%rip)
.LBB0_36:
	movq	%r15, %rdi
	callq	pbuf_free
.LBB0_67:
	movl	$42, __A_VARIABLE(%rip)
	addq	$104, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB0_203:
	movl	$2, %ebx
	jmp	.LBB0_206
.LBB0_204:
	movl	$1, %ebx
	jmp	.LBB0_206
.LBB0_205:
	movzbl	%dl, %ebx
	movq	%rbx, %rax
	shlq	$4, %rax
	movq	%r12, default_router_list(%rax)
.LBB0_206:
	movl	$42, __A_VARIABLE(%rip)
	movzwl	6(%r13), %edi
	callq	lwip_htons
	movzwl	%ax, %eax
	shlq	$4, %rbx
	movl	%eax, default_router_list+8(%rbx)
	movl	12(%r13), %edi
	testl	%edi, %edi
	je	.LBB0_208
# %bb.207:
	callq	lwip_htonl
	movl	%eax, retrans_timer(%rip)
.LBB0_208:
	movl	8(%r13), %edi
	testl	%edi, %edi
	je	.LBB0_210
# %bb.209:
	callq	lwip_htonl
	movl	%eax, reachable_time(%rip)
.LBB0_210:
	movb	5(%r13), %al
	movb	%al, default_router_list+12(%rbx)
	cmpw	$18, 16(%r15)
	jb	.LBB0_36
# %bb.211:
	leaq	default_router_list(%rbx), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	leaq	160(%r14), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	leaq	164(%r14), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	movw	$16, %ax
	movl	$16, %ebx
	jmp	.LBB0_214
.LBB0_212:                              #   in Loop: Header=BB0_214 Depth=1
	addw	$1, lwip_stats+302(%rip)
.LBB0_213:                              #   in Loop: Header=BB0_214 Depth=1
	movzwl	%r13w, %eax
	addl	-112(%rbp), %eax        # 4-byte Folded Reload
	movzwl	16(%r15), %ecx
	movzwl	%ax, %ebx
	subl	%ebx, %ecx
                                        # kill: def $ax killed $ax killed $eax def $eax
	cmpl	$1, %ecx
	jle	.LBB0_36
.LBB0_214:                              # =>This Inner Loop Header: Depth=1
	movl	%eax, -112(%rbp)        # 4-byte Spill
	orl	$1, %eax
	movzwl	%ax, %esi
	movq	%r15, %rdi
	callq	pbuf_try_get_at
	testl	%eax, %eax
	jle	.LBB0_318
# %bb.215:                              #   in Loop: Header=BB0_214 Depth=1
	movzbl	%al, %eax
	leal	(,%rax,8), %r13d
	movzwl	16(%r15), %ecx
	movl	%ecx, %edx
	subl	%ebx, %edx
	cmpl	%r13d, %edx
	jl	.LBB0_318
# %bb.216:                              #   in Loop: Header=BB0_214 Depth=1
	movzwl	-112(%rbp), %ebx        # 2-byte Folded Reload
	cmpw	%cx, 18(%r15)
	jne	.LBB0_218
# %bb.217:                              #   in Loop: Header=BB0_214 Depth=1
	addq	8(%r15), %rbx
	movl	%r13d, %eax
	movq	%rbx, %r12
	jmp	.LBB0_221
.LBB0_218:                              #   in Loop: Header=BB0_214 Depth=1
	movl	%r13d, %ecx
	cmpw	$5, %ax
	jb	.LBB0_220
# %bb.219:                              #   in Loop: Header=BB0_214 Depth=1
	movq	%r15, %rdi
	movl	%ebx, %esi
	callq	pbuf_get_at
	movw	$32, %cx
	cmpb	$25, %al
	jne	.LBB0_318
.LBB0_220:                              #   in Loop: Header=BB0_214 Depth=1
	movzwl	%cx, %edx
	movl	$nd6_ra_buffer, %r12d
	movl	$nd6_ra_buffer, %esi
	movq	%r15, %rdi
	movl	%ebx, %ecx
	callq	pbuf_copy_partial
.LBB0_221:                              #   in Loop: Header=BB0_214 Depth=1
	movzbl	(%r12), %ecx
	addb	$-1, %cl
	cmpb	$23, %cl
	ja	.LBB0_212
# %bb.222:                              #   in Loop: Header=BB0_214 Depth=1
	movzbl	%cl, %ecx
	jmpq	*.LJTI0_1(,%rcx,8)
.LBB0_223:                              #   in Loop: Header=BB0_214 Depth=1
	cmpw	$8, %ax
	jb	.LBB0_318
# %bb.224:                              #   in Loop: Header=BB0_214 Depth=1
	movq	-88(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rdi
	testq	%rdi, %rdi
	je	.LBB0_213
# %bb.225:                              #   in Loop: Header=BB0_214 Depth=1
	cmpb	$1, 48(%rdi)
	jne	.LBB0_213
# %bb.226:                              #   in Loop: Header=BB0_214 Depth=1
	addq	$32, %rdi
	addq	$2, %r12
	movzbl	260(%r14), %edx
	movq	%r12, %rsi
	callq	memcpy
	movq	-88(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movb	$2, 48(%rax)
	movl	reachable_time(%rip), %ecx
	movl	%ecx, 52(%rax)
	jmp	.LBB0_213
.LBB0_227:                              #   in Loop: Header=BB0_214 Depth=1
	cmpw	$32, %ax
	jb	.LBB0_318
# %bb.228:                              #   in Loop: Header=BB0_214 Depth=1
	movdqu	16(%r12), %xmm1
	movd	%xmm1, %ebx
	movl	%ebx, %eax
	andl	$49407, %eax            # imm = 0xC0FF
	cmpl	$33022, %eax            # imm = 0x80FE
	je	.LBB0_213
# %bb.229:                              #   in Loop: Header=BB0_214 Depth=1
	cmpb	$0, 3(%r12)
	jns	.LBB0_272
# %bb.230:                              #   in Loop: Header=BB0_214 Depth=1
	cmpb	$64, 2(%r12)
	jne	.LBB0_272
# %bb.231:                              #   in Loop: Header=BB0_214 Depth=1
	movl	4(%r12), %edi
	movdqa	%xmm1, -64(%rbp)        # 16-byte Spill
	callq	lwip_htonl
	movdqa	-64(%rbp), %xmm1        # 16-byte Reload
	pshufd	$229, %xmm1, %xmm0      # xmm0 = xmm1[1,1,2,3]
	movd	%xmm0, %edx
	cmpl	%ebx, prefix_list(%rip)
	jne	.LBB0_241
# %bb.232:                              #   in Loop: Header=BB0_214 Depth=1
	cmpl	%edx, prefix_list+4(%rip)
	jne	.LBB0_241
# %bb.233:                              #   in Loop: Header=BB0_214 Depth=1
	cmpb	$0, prefix_list+16(%rip)
	jne	.LBB0_241
# %bb.234:                              #   in Loop: Header=BB0_214 Depth=1
	cmpq	%r14, prefix_list+24(%rip)
	jne	.LBB0_241
# %bb.235:                              #   in Loop: Header=BB0_214 Depth=1
	xorl	%ecx, %ecx
	jmp	.LBB0_271
.LBB0_236:                              #   in Loop: Header=BB0_214 Depth=1
	cmpw	$8, %ax
	jb	.LBB0_318
# %bb.237:                              #   in Loop: Header=BB0_214 Depth=1
	movl	4(%r12), %edi
	callq	lwip_htonl
                                        # kill: def $eax killed $eax def $rax
	leal	-1280(%rax), %ecx
	cmpl	$64255, %ecx            # imm = 0xFAFF
	ja	.LBB0_213
# %bb.238:                              #   in Loop: Header=BB0_214 Depth=1
	movzwl	250(%r14), %ecx
	testl	%ecx, %ecx
	je	.LBB0_240
# %bb.239:                              #   in Loop: Header=BB0_214 Depth=1
	movzwl	%ax, %edx
	cmpl	%ecx, %edx
	cmoval	%ecx, %eax
.LBB0_240:                              #   in Loop: Header=BB0_214 Depth=1
	movw	%ax, 252(%r14)
	jmp	.LBB0_213
.LBB0_241:                              #   in Loop: Header=BB0_214 Depth=1
	cmpl	%ebx, prefix_list+40(%rip)
	jne	.LBB0_245
# %bb.242:                              #   in Loop: Header=BB0_214 Depth=1
	cmpl	%edx, prefix_list+44(%rip)
	jne	.LBB0_245
# %bb.243:                              #   in Loop: Header=BB0_214 Depth=1
	cmpb	$0, prefix_list+56(%rip)
	jne	.LBB0_245
# %bb.244:                              #   in Loop: Header=BB0_214 Depth=1
	movl	$1, %ecx
	cmpq	%r14, prefix_list+64(%rip)
	je	.LBB0_271
.LBB0_245:                              #   in Loop: Header=BB0_214 Depth=1
	cmpl	%ebx, prefix_list+80(%rip)
	jne	.LBB0_249
# %bb.246:                              #   in Loop: Header=BB0_214 Depth=1
	cmpl	%edx, prefix_list+84(%rip)
	jne	.LBB0_249
# %bb.247:                              #   in Loop: Header=BB0_214 Depth=1
	cmpb	$0, prefix_list+96(%rip)
	jne	.LBB0_249
# %bb.248:                              #   in Loop: Header=BB0_214 Depth=1
	movl	$2, %ecx
	cmpq	%r14, prefix_list+104(%rip)
	je	.LBB0_271
.LBB0_249:                              #   in Loop: Header=BB0_214 Depth=1
	cmpl	%ebx, prefix_list+120(%rip)
	jne	.LBB0_253
# %bb.250:                              #   in Loop: Header=BB0_214 Depth=1
	cmpl	%edx, prefix_list+124(%rip)
	jne	.LBB0_253
# %bb.251:                              #   in Loop: Header=BB0_214 Depth=1
	cmpb	$0, prefix_list+136(%rip)
	jne	.LBB0_253
# %bb.252:                              #   in Loop: Header=BB0_214 Depth=1
	movl	$3, %ecx
	cmpq	%r14, prefix_list+144(%rip)
	je	.LBB0_271
.LBB0_253:                              #   in Loop: Header=BB0_214 Depth=1
	cmpl	%ebx, prefix_list+160(%rip)
	jne	.LBB0_257
# %bb.254:                              #   in Loop: Header=BB0_214 Depth=1
	cmpl	%edx, prefix_list+164(%rip)
	jne	.LBB0_257
# %bb.255:                              #   in Loop: Header=BB0_214 Depth=1
	cmpb	$0, prefix_list+176(%rip)
	jne	.LBB0_257
# %bb.256:                              #   in Loop: Header=BB0_214 Depth=1
	movl	$4, %ecx
	cmpq	%r14, prefix_list+184(%rip)
	je	.LBB0_271
.LBB0_257:                              #   in Loop: Header=BB0_214 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB0_272
# %bb.258:                              #   in Loop: Header=BB0_214 Depth=1
	cmpq	$0, prefix_list+24(%rip)
	movl	$prefix_list+24, %edx
	je	.LBB0_269
# %bb.259:                              #   in Loop: Header=BB0_214 Depth=1
	cmpl	$0, prefix_list+32(%rip)
	movl	$0, %ecx
	je	.LBB0_270
# %bb.260:                              #   in Loop: Header=BB0_214 Depth=1
	cmpq	$0, prefix_list+64(%rip)
	movl	$prefix_list+64, %edx
	movl	$1, %ecx
	je	.LBB0_270
# %bb.261:                              #   in Loop: Header=BB0_214 Depth=1
	cmpl	$0, prefix_list+72(%rip)
	je	.LBB0_270
# %bb.262:                              #   in Loop: Header=BB0_214 Depth=1
	cmpq	$0, prefix_list+104(%rip)
	movl	$prefix_list+104, %edx
	movl	$2, %ecx
	je	.LBB0_270
# %bb.263:                              #   in Loop: Header=BB0_214 Depth=1
	cmpl	$0, prefix_list+112(%rip)
	je	.LBB0_270
# %bb.264:                              #   in Loop: Header=BB0_214 Depth=1
	cmpq	$0, prefix_list+144(%rip)
	movl	$prefix_list+144, %edx
	movl	$3, %ecx
	je	.LBB0_270
# %bb.265:                              #   in Loop: Header=BB0_214 Depth=1
	cmpl	$0, prefix_list+152(%rip)
	je	.LBB0_270
# %bb.266:                              #   in Loop: Header=BB0_214 Depth=1
	cmpq	$0, prefix_list+184(%rip)
	movl	$prefix_list+184, %edx
	movl	$4, %ecx
	je	.LBB0_270
# %bb.267:                              #   in Loop: Header=BB0_214 Depth=1
	cmpl	$0, prefix_list+192(%rip)
	je	.LBB0_270
# %bb.268:                              #   in Loop: Header=BB0_214 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movdqa	-64(%rbp), %xmm1        # 16-byte Reload
	jmp	.LBB0_272
.LBB0_269:                              #   in Loop: Header=BB0_214 Depth=1
	xorl	%ecx, %ecx
.LBB0_270:                              #   in Loop: Header=BB0_214 Depth=1
	movq	%r14, (%rdx)
	leaq	(,%rcx,8), %rdx
	movdqa	-64(%rbp), %xmm1        # 16-byte Reload
	movdqu	%xmm1, prefix_list(%rdx,%rdx,4)
	movb	$0, prefix_list+16(%rdx,%rdx,4)
.LBB0_271:                              #   in Loop: Header=BB0_214 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	leaq	(%rcx,%rcx,4), %rcx
	movl	%eax, prefix_list+32(,%rcx,8)
.LBB0_272:                              #   in Loop: Header=BB0_214 Depth=1
	testb	$64, 3(%r12)
	je	.LBB0_213
# %bb.273:                              #   in Loop: Header=BB0_214 Depth=1
	movl	%ebx, -44(%rbp)         # 4-byte Spill
	movdqa	%xmm1, -64(%rbp)        # 16-byte Spill
	movl	4(%r12), %edi
	callq	lwip_htonl
	movl	%eax, %ebx
	movl	8(%r12), %edi
	callq	lwip_htonl
	cmpl	%ebx, %eax
	ja	.LBB0_288
# %bb.274:                              #   in Loop: Header=BB0_214 Depth=1
	cmpb	$64, 2(%r12)
	jne	.LBB0_288
# %bb.275:                              #   in Loop: Header=BB0_214 Depth=1
	movzbl	153(%r14), %r8d
	testb	%r8b, %r8b
	je	.LBB0_280
# %bb.276:                              #   in Loop: Header=BB0_214 Depth=1
	movq	-80(%rbp), %rcx         # 8-byte Reload
	movl	(%rcx), %ecx
	testl	%ecx, %ecx
	je	.LBB0_280
# %bb.277:                              #   in Loop: Header=BB0_214 Depth=1
	movl	-44(%rbp), %edx         # 4-byte Reload
	cmpl	104(%r14), %edx
	jne	.LBB0_280
# %bb.278:                              #   in Loop: Header=BB0_214 Depth=1
	pshufd	$229, -64(%rbp), %xmm0  # 16-byte Folded Reload
                                        # xmm0 = mem[1,1,2,3]
	movd	%xmm0, %edx
	cmpl	108(%r14), %edx
	jne	.LBB0_280
# %bb.279:                              #   in Loop: Header=BB0_214 Depth=1
	cmpb	$0, 120(%r14)
	je	.LBB0_307
.LBB0_280:                              #   in Loop: Header=BB0_214 Depth=1
	movzbl	154(%r14), %edx
	testb	%dl, %dl
	je	.LBB0_285
# %bb.281:                              #   in Loop: Header=BB0_214 Depth=1
	movq	-72(%rbp), %rcx         # 8-byte Reload
	movl	(%rcx), %ecx
	testl	%ecx, %ecx
	je	.LBB0_285
# %bb.282:                              #   in Loop: Header=BB0_214 Depth=1
	movl	-44(%rbp), %esi         # 4-byte Reload
	cmpl	128(%r14), %esi
	jne	.LBB0_285
# %bb.283:                              #   in Loop: Header=BB0_214 Depth=1
	pshufd	$229, -64(%rbp), %xmm0  # 16-byte Folded Reload
                                        # xmm0 = mem[1,1,2,3]
	movd	%xmm0, %esi
	cmpl	132(%r14), %esi
	jne	.LBB0_285
# %bb.284:                              #   in Loop: Header=BB0_214 Depth=1
	cmpb	$0, 144(%r14)
	je	.LBB0_308
.LBB0_285:                              #   in Loop: Header=BB0_214 Depth=1
	testl	%ebx, %ebx
	je	.LBB0_288
# %bb.286:                              #   in Loop: Header=BB0_214 Depth=1
	cmpb	$0, 265(%r14)
	je	.LBB0_288
# %bb.287:                              #   in Loop: Header=BB0_214 Depth=1
	movzbl	152(%r14), %ecx
	orb	$64, %cl
	cmpb	$64, %cl
	jne	.LBB0_289
.LBB0_288:                              #   in Loop: Header=BB0_214 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_213
.LBB0_289:                              #   in Loop: Header=BB0_214 Depth=1
	movl	%eax, %edi
	movl	88(%r14), %ecx
	movl	92(%r14), %r9d
	testb	%r8b, %r8b
	je	.LBB0_296
# %bb.290:                              #   in Loop: Header=BB0_214 Depth=1
	movl	-44(%rbp), %eax         # 4-byte Reload
	cmpl	104(%r14), %eax
	jne	.LBB0_295
# %bb.291:                              #   in Loop: Header=BB0_214 Depth=1
	pshufd	$229, -64(%rbp), %xmm0  # 16-byte Folded Reload
                                        # xmm0 = mem[1,1,2,3]
	movd	%xmm0, %eax
	cmpl	108(%r14), %eax
	jne	.LBB0_295
# %bb.292:                              #   in Loop: Header=BB0_214 Depth=1
	cmpl	112(%r14), %ecx
	jne	.LBB0_295
# %bb.293:                              #   in Loop: Header=BB0_214 Depth=1
	cmpl	116(%r14), %r9d
	jne	.LBB0_295
# %bb.294:                              #   in Loop: Header=BB0_214 Depth=1
	cmpb	$0, 120(%r14)
	je	.LBB0_288
.LBB0_295:                              #   in Loop: Header=BB0_214 Depth=1
	xorl	%eax, %eax
	jmp	.LBB0_297
.LBB0_296:                              #   in Loop: Header=BB0_214 Depth=1
	movb	$1, %al
.LBB0_297:                              #   in Loop: Header=BB0_214 Depth=1
	testb	%dl, %dl
	je	.LBB0_305
# %bb.298:                              #   in Loop: Header=BB0_214 Depth=1
	movl	-44(%rbp), %edx         # 4-byte Reload
	cmpl	128(%r14), %edx
	jne	.LBB0_304
# %bb.299:                              #   in Loop: Header=BB0_214 Depth=1
	pshufd	$229, -64(%rbp), %xmm0  # 16-byte Folded Reload
                                        # xmm0 = mem[1,1,2,3]
	movd	%xmm0, %edx
	cmpl	132(%r14), %edx
	jne	.LBB0_304
# %bb.300:                              #   in Loop: Header=BB0_214 Depth=1
	cmpl	136(%r14), %ecx
	jne	.LBB0_304
# %bb.301:                              #   in Loop: Header=BB0_214 Depth=1
	cmpl	140(%r14), %r9d
	jne	.LBB0_304
# %bb.302:                              #   in Loop: Header=BB0_214 Depth=1
	testb	%al, %al
	je	.LBB0_288
# %bb.303:                              #   in Loop: Header=BB0_214 Depth=1
	movb	$1, %dl
	cmpb	$0, 144(%r14)
	jne	.LBB0_306
	jmp	.LBB0_288
.LBB0_304:                              #   in Loop: Header=BB0_214 Depth=1
	movb	$1, %dl
	testb	%al, %al
	jne	.LBB0_306
	jmp	.LBB0_288
.LBB0_305:                              #   in Loop: Header=BB0_214 Depth=1
	cmpb	$1, %al
	movb	$1, %dl
	adcb	$0, %dl
.LBB0_306:                              #   in Loop: Header=BB0_214 Depth=1
	movzbl	%dl, %eax
	leaq	(%rax,%rax,2), %rdx
	movl	-44(%rbp), %esi         # 4-byte Reload
	movl	%esi, 80(%r14,%rdx,8)
	pshufd	$229, -64(%rbp), %xmm0  # 16-byte Folded Reload
                                        # xmm0 = mem[1,1,2,3]
	movd	%xmm0, 84(%r14,%rdx,8)
	movl	%ecx, 88(%r14,%rdx,8)
	movl	%r9d, 92(%r14,%rdx,8)
	movb	$0, 96(%r14,%rdx,8)
	movb	$6, 100(%r14,%rdx,8)
	movl	%ebx, 156(%r14,%rax,4)
	movl	%edi, 168(%r14,%rax,4)
	movsbl	%al, %esi
	movq	%r14, %rdi
	movl	$8, %edx
	callq	netif_ip6_addr_set_state
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_213
.LBB0_307:                              #   in Loop: Header=BB0_214 Depth=1
	movl	%eax, %r12d
	movl	$1, %eax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movb	$1, %sil
	movq	-80(%rbp), %rdi         # 8-byte Reload
	jmp	.LBB0_309
.LBB0_308:                              #   in Loop: Header=BB0_214 Depth=1
	movl	%eax, %r12d
	movl	$2, %eax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movb	$2, %sil
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movl	%edx, %r8d
.LBB0_309:                              #   in Loop: Header=BB0_214 Depth=1
	cmpl	$7200, %ebx             # imm = 0x1C20
	ja	.LBB0_313
# %bb.310:                              #   in Loop: Header=BB0_214 Depth=1
	cmpl	%ecx, %ebx
	ja	.LBB0_313
# %bb.311:                              #   in Loop: Header=BB0_214 Depth=1
	cmpl	$7201, %ecx             # imm = 0x1C21
	jb	.LBB0_314
# %bb.312:                              #   in Loop: Header=BB0_214 Depth=1
	movl	$7200, (%rdi)           # imm = 0x1C20
	jmp	.LBB0_314
.LBB0_313:                              #   in Loop: Header=BB0_214 Depth=1
	movl	%ebx, (%rdi)
	testl	%ebx, %ebx
	je	.LBB0_356
.LBB0_314:                              #   in Loop: Header=BB0_214 Depth=1
	testl	%r12d, %r12d
	je	.LBB0_317
# %bb.315:                              #   in Loop: Header=BB0_214 Depth=1
	cmpb	$16, %r8b
	jne	.LBB0_317
# %bb.316:                              #   in Loop: Header=BB0_214 Depth=1
	movzbl	%sil, %esi
	movq	%r14, %rdi
	movl	$48, %edx
	callq	netif_ip6_addr_set_state
.LBB0_317:                              #   in Loop: Header=BB0_214 Depth=1
	movq	-64(%rbp), %rax         # 8-byte Reload
	movl	%r12d, 168(%r14,%rax,4)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_213
.LBB0_318:
	addw	$1, lwip_stats+296(%rip)
	jmp	.LBB0_24
.LBB0_319:
	pshufd	$229, %xmm0, %xmm1      # xmm1 = xmm0[1,1,2,3]
	movd	%xmm1, %eax
	pshufd	$78, %xmm0, %xmm1       # xmm1 = xmm0[2,3,0,1]
	movd	%xmm1, %ecx
	pshufd	$231, %xmm0, %xmm0      # xmm0 = xmm0[3,1,2,3]
	movd	%xmm0, %esi
	movl	$153, %r13d
	movl	$80, %edi
	testb	%dl, %dl
	jne	.LBB0_320
	jmp	.LBB0_334
.LBB0_335:                              #   in Loop: Header=BB0_334 Depth=1
	movzbl	(%r14,%r13), %edx
	addq	$1, %r13
	addq	$24, %rdi
	testb	%dl, %dl
	je	.LBB0_334
.LBB0_320:
	cmpl	(%r14,%rdi), %ebx
	jne	.LBB0_334
# %bb.321:
	cmpl	4(%r14,%rdi), %eax
	jne	.LBB0_334
# %bb.322:
	cmpl	8(%r14,%rdi), %ecx
	jne	.LBB0_334
# %bb.323:
	cmpl	12(%r14,%rdi), %esi
	jne	.LBB0_334
# %bb.324:
	cmpb	16(%r14,%rdi), %r12b
	jne	.LBB0_334
# %bb.325:
	movl	%esi, -80(%rbp)         # 4-byte Spill
	leaq	(%r14,%rdi), %rsi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	movq	%r14, %rdi
	movl	$34, %edx
	movl	%eax, -112(%rbp)        # 4-byte Spill
	movl	%ecx, -88(%rbp)         # 4-byte Spill
	callq	nd6_send_na
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movl	-80(%rbp), %esi         # 4-byte Reload
	movl	-88(%rbp), %ecx         # 4-byte Reload
	movl	-112(%rbp), %eax        # 4-byte Reload
	testb	$8, -1(%r14,%r13)
	je	.LBB0_334
# %bb.326:
	leal	-153(%r13), %eax
	movsbl	%al, %esi
	movq	%r14, %rdi
	movl	$64, %edx
	callq	netif_ip6_addr_set_state
	cmpq	$153, %r13
	jne	.LBB0_333
# %bb.327:
	cmpb	$0, 153(%r14)
	je	.LBB0_330
# %bb.328:
	cmpl	$0, 160(%r14)
	je	.LBB0_330
# %bb.329:
	movq	%r14, %rdi
	movl	$1, %esi
	movl	$64, %edx
	callq	netif_ip6_addr_set_state
.LBB0_330:
	cmpb	$0, 154(%r14)
	je	.LBB0_333
# %bb.331:
	cmpl	$0, 164(%r14)
	je	.LBB0_333
# %bb.332:
	movq	%r14, %rdi
	movl	$2, %esi
	movl	$64, %edx
	callq	netif_ip6_addr_set_state
.LBB0_333:
	movl	$42, __A_VARIABLE(%rip)
	movl	-112(%rbp), %eax        # 4-byte Reload
	movl	-88(%rbp), %ecx         # 4-byte Reload
	movl	-80(%rbp), %esi         # 4-byte Reload
	movq	-72(%rbp), %rdi         # 8-byte Reload
.LBB0_334:                              # =>This Inner Loop Header: Depth=1
	cmpq	$155, %r13
	jne	.LBB0_335
	jmp	.LBB0_36
.LBB0_336:
	movl	$42, __A_VARIABLE(%rip)
	callq	nd6_new_neighbor_cache_entry
	testb	%al, %al
	js	.LBB0_177
# %bb.337:
	movsbq	%al, %rbx
	imulq	$56, %rbx, %r12
	movq	%r14, neighbor_cache+24(%r12)
	leaq	neighbor_cache+32(%r12), %rdi
	movq	%r13, %rsi
	addq	$2, %rsi
	movzbl	260(%r14), %edx
	callq	memcpy
	movdqu	ip_data+36(%rip), %xmm0
	movdqu	%xmm0, neighbor_cache(%r12)
	movb	ip_data+52(%rip), %al
	movb	%al, neighbor_cache+16(%r12)
	leaq	neighbor_cache+48(%r12), %r12
.LBB0_338:
	movb	$4, (%r12)
	imulq	$56, %rbx, %rax
	movl	$5, neighbor_cache+52(%rax)
.LBB0_339:
	leaq	-144(%rbp), %rsi
	movq	%r14, %rdi
	movl	$96, %edx
	callq	nd6_send_na
	jmp	.LBB0_36
.LBB0_340:
	xorl	%r13d, %r13d
.LBB0_341:
	movdqu	%xmm1, 20(%rbx)
	movb	%r13b, 36(%rbx)
	testq	%r12, %r12
	je	.LBB0_36
# %bb.342:
	cmpb	$2, (%r12)
	jne	.LBB0_36
# %bb.343:
	pshufd	$229, %xmm1, %xmm0      # xmm0 = xmm1[1,1,2,3]
	movd	%xmm0, %ecx
	pshufd	$78, %xmm1, %xmm0       # xmm0 = xmm1[2,3,0,1]
	movd	%xmm0, %edx
	movdqa	%xmm1, -112(%rbp)       # 16-byte Spill
	pshufd	$231, %xmm1, %xmm0      # xmm0 = xmm1[3,1,2,3]
	movd	%xmm0, %edi
	movl	$neighbor_cache+32, %ebx
	xorl	%esi, %esi
	jmp	.LBB0_345
.LBB0_344:                              #   in Loop: Header=BB0_345 Depth=1
	addq	$1, %rsi
	addq	$56, %rbx
	cmpq	$10, %rsi
	jae	.LBB0_353
.LBB0_345:                              # =>This Inner Loop Header: Depth=1
	cmpl	-32(%rbx), %eax
	jne	.LBB0_344
# %bb.346:                              #   in Loop: Header=BB0_345 Depth=1
	cmpl	-28(%rbx), %ecx
	jne	.LBB0_344
# %bb.347:                              #   in Loop: Header=BB0_345 Depth=1
	cmpl	-24(%rbx), %edx
	jne	.LBB0_344
# %bb.348:                              #   in Loop: Header=BB0_345 Depth=1
	cmpl	-20(%rbx), %edi
	jne	.LBB0_344
# %bb.349:                              #   in Loop: Header=BB0_345 Depth=1
	cmpb	-16(%rbx), %r13b
	jne	.LBB0_344
# %bb.350:
	movl	$42, __A_VARIABLE(%rip)
	testb	%sil, %sil
	js	.LBB0_354
# %bb.351:
	cmpb	$1, 16(%rbx)
	jne	.LBB0_36
# %bb.352:
	addq	$2, %r12
	movzbl	260(%r14), %edx
	movq	%rbx, %rdi
	movq	%r12, %rsi
	callq	memcpy
	movb	$4, 16(%rbx)
	movl	$5, 20(%rbx)
	jmp	.LBB0_36
.LBB0_353:
	movl	$42, __A_VARIABLE(%rip)
.LBB0_354:
	callq	nd6_new_neighbor_cache_entry
	testb	%al, %al
	js	.LBB0_36
# %bb.355:
	movsbq	%al, %rax
	imulq	$56, %rax, %rbx
	movq	%r14, neighbor_cache+24(%rbx)
	leaq	neighbor_cache+32(%rbx), %rdi
	addq	$2, %r12
	movzbl	260(%r14), %edx
	movq	%r12, %rsi
	callq	memcpy
	movdqa	-112(%rbp), %xmm0       # 16-byte Reload
	movdqu	%xmm0, neighbor_cache(%rbx)
	movb	%r13b, neighbor_cache+16(%rbx)
	movb	$4, neighbor_cache+48(%rbx)
	movl	$5, neighbor_cache+52(%rbx)
	jmp	.LBB0_36
.LBB0_356:
	movl	$.L.str, %edi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$.L.str.1, %edi
	movl	$.L.str.2, %esi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$3, %edi
	callq	ukplat_terminate
.Lfunc_end0:
	.size	nd6_input, .Lfunc_end0-nd6_input
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI0_0:
	.quad	.LBB0_2
	.quad	.LBB0_31
	.quad	.LBB0_25
	.quad	.LBB0_28
.LJTI0_1:
	.quad	.LBB0_223
	.quad	.LBB0_212
	.quad	.LBB0_227
	.quad	.LBB0_212
	.quad	.LBB0_236
	.quad	.LBB0_212
	.quad	.LBB0_212
	.quad	.LBB0_212
	.quad	.LBB0_212
	.quad	.LBB0_212
	.quad	.LBB0_212
	.quad	.LBB0_212
	.quad	.LBB0_212
	.quad	.LBB0_212
	.quad	.LBB0_212
	.quad	.LBB0_212
	.quad	.LBB0_212
	.quad	.LBB0_212
	.quad	.LBB0_212
	.quad	.LBB0_212
	.quad	.LBB0_212
	.quad	.LBB0_212
	.quad	.LBB0_212
	.quad	.LBB0_213
                                        # -- End function
	.text
	.p2align	4, 0x90         # -- Begin function nd6_send_q
	.type	nd6_send_q,@function
nd6_send_q:                             # @nd6_send_q
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$24, %rsp
	cmpb	$9, %dil
	ja	.LBB1_9
# %bb.1:
	movsbq	%dil, %rax
	imulq	$56, %rax, %rax
	movq	neighbor_cache+40(%rax), %rbx
	testq	%rbx, %rbx
	je	.LBB1_9
# %bb.2:
	leaq	neighbor_cache+40(%rax), %r15
	leaq	-48(%rbp), %r14
	jmp	.LBB1_3
	.p2align	4, 0x90
.LBB1_7:                                #   in Loop: Header=BB1_3 Depth=1
	movq	-16(%r15), %rdi
	movzbl	264(%rdi), %eax
	addb	$1, %al
.LBB1_8:                                #   in Loop: Header=BB1_3 Depth=1
	movb	%al, -32(%rbp)
	movq	%r14, %rdx
	callq	*208(%rdi)
	movq	8(%rbx), %rdi
	callq	pbuf_free
	movl	$12, %edi
	movq	%rbx, %rsi
	callq	memp_free
	movq	(%r15), %rbx
	testq	%rbx, %rbx
	je	.LBB1_9
.LBB1_3:                                # =>This Inner Loop Header: Depth=1
	movq	(%rbx), %rax
	movq	%rax, (%r15)
	movq	8(%rbx), %rsi
	movq	8(%rsi), %rax
	movdqu	24(%rax), %xmm0
	movdqa	%xmm0, -48(%rbp)
	movb	$0, -32(%rbp)
	movd	%xmm0, %eax
	movl	%eax, %ecx
	andl	$49407, %ecx            # imm = 0xC0FF
	cmpl	$33022, %ecx            # imm = 0x80FE
	je	.LBB1_7
# %bb.4:                                #   in Loop: Header=BB1_3 Depth=1
	andl	$36863, %eax            # imm = 0x8FFF
	cmpl	$511, %eax              # imm = 0x1FF
	je	.LBB1_7
# %bb.5:                                #   in Loop: Header=BB1_3 Depth=1
	movzwl	%ax, %eax
	cmpl	$767, %eax              # imm = 0x2FF
	je	.LBB1_7
# %bb.6:                                #   in Loop: Header=BB1_3 Depth=1
	movq	-16(%r15), %rdi
	xorl	%eax, %eax
	jmp	.LBB1_8
.LBB1_9:
	movl	$42, __A_VARIABLE(%rip)
	addq	$24, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	nd6_send_q, .Lfunc_end1-nd6_send_q
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function nd6_send_na
	.type	nd6_send_na,@function
nd6_send_na:                            # @nd6_send_na
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	testq	%rsi, %rsi
	je	.LBB2_12
# %bb.1:
	movl	%edx, %r12d
	movq	%rsi, %r13
	movq	%rdi, %r14
	movzbl	260(%rdi), %ebx
	leal	2(%rbx), %eax
                                        # kill: def $ebx killed $ebx killed $rbx def $rbx
	addl	$2, %ebx
	shrl	$3, %ebx
	andb	$7, %al
	cmpb	$1, %al
	sbbw	$-1, %bx
	leal	24(,%rbx,8), %eax
	movzwl	%ax, %esi
	movl	$54, %edi
	movl	$640, %edx              # imm = 0x280
	callq	pbuf_alloc
	testq	%rax, %rax
	je	.LBB2_2
# %bb.3:
	movq	%rax, %r15
	movq	%r14, %rcx
	movl	%r12d, %r14d
	movq	8(%rax), %r12
	movl	$136, (%r12)
	movl	%r14d, %eax
	andb	$-16, %al
	movb	%al, 4(%r12)
	movw	$0, 5(%r12)
	movb	$0, 7(%r12)
	movl	(%r13), %eax
	movl	%eax, 8(%r12)
	movl	4(%r13), %eax
	movl	%eax, 12(%r12)
	movl	8(%r13), %eax
	movl	%eax, 16(%r12)
	movl	12(%r13), %eax
	movl	%eax, 20(%r12)
	movb	$2, 24(%r12)
	movb	%bl, 25(%r12)
	leaq	26(%r12), %rdi
	leaq	254(%rcx), %rsi
	movq	%rcx, %rbx
	movzbl	260(%rcx), %edx
	callq	memcpy
	testb	$1, %r14b
	jne	.LBB2_4
# %bb.5:
	movl	$ip_data+36, %r8d
	testb	$2, %r14b
	je	.LBB2_8
# %bb.6:
	movq	$767, multicast_address(%rip) # imm = 0x2FF
	movl	$0, multicast_address+8(%rip)
	movl	$16777216, %eax         # imm = 0x1000000
	jmp	.LBB2_7
.LBB2_2:
	addw	$1, lwip_stats+298(%rip)
	jmp	.LBB2_11
.LBB2_4:
	movq	$767, multicast_address(%rip) # imm = 0x2FF
	movl	$16777216, multicast_address+8(%rip) # imm = 0x1000000
	movl	$255, %eax
	orl	12(%r13), %eax
.LBB2_7:
	movl	%eax, multicast_address+12(%rip)
	movl	$multicast_address, %r8d
	movb	264(%rbx), %al
	addb	$1, %al
	movb	%al, multicast_address+16(%rip)
.LBB2_8:
	testb	$16, 248(%rbx)
	je	.LBB2_10
# %bb.9:
	movzwl	18(%r15), %edx
	movq	%r15, %rdi
	movl	$58, %esi
	movq	%r13, %rcx
	movq	%r8, %r14
	callq	ip6_chksum_pseudo
	movq	%r14, %r8
	movw	%ax, 2(%r12)
.LBB2_10:
	addw	$1, lwip_stats+286(%rip)
	movq	%rbx, (%rsp)
	movq	%r15, %rdi
	movq	%r13, %rsi
	movq	%r8, %rdx
	movl	$255, %ecx
	xorl	%r8d, %r8d
	movl	$58, %r9d
	callq	ip6_output_if
	movq	%r15, %rdi
	callq	pbuf_free
.LBB2_11:
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB2_12:
	movl	$.L.str.5, %edi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$.L.str.1, %edi
	movl	$.L.str.2, %esi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$3, %edi
	callq	ukplat_terminate
.Lfunc_end2:
	.size	nd6_send_na, .Lfunc_end2-nd6_send_na
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function nd6_new_neighbor_cache_entry
	.type	nd6_new_neighbor_cache_entry,@function
nd6_new_neighbor_cache_entry:           # @nd6_new_neighbor_cache_entry
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	movb	neighbor_cache+48(%rip), %al
	testb	%al, %al
	je	.LBB3_1
# %bb.2:
	movb	neighbor_cache+104(%rip), %dl
	testb	%dl, %dl
	je	.LBB3_3
# %bb.148:
	movb	neighbor_cache+160(%rip), %cl
	testb	%cl, %cl
	je	.LBB3_149
# %bb.150:
	movb	neighbor_cache+216(%rip), %r14b
	testb	%r14b, %r14b
	je	.LBB3_151
# %bb.152:
	movb	neighbor_cache+272(%rip), %r11b
	testb	%r11b, %r11b
	je	.LBB3_153
# %bb.154:
	movb	neighbor_cache+328(%rip), %r10b
	testb	%r10b, %r10b
	je	.LBB3_155
# %bb.156:
	movb	neighbor_cache+384(%rip), %r9b
	testb	%r9b, %r9b
	je	.LBB3_157
# %bb.158:
	movb	neighbor_cache+440(%rip), %r8b
	testb	%r8b, %r8b
	je	.LBB3_159
# %bb.160:
	movb	neighbor_cache+496(%rip), %dil
	testb	%dil, %dil
	je	.LBB3_161
# %bb.162:
	movb	neighbor_cache+552(%rip), %r15b
	testb	%r15b, %r15b
	je	.LBB3_163
# %bb.164:
	cmpb	$3, %al
	jne	.LBB3_7
# %bb.165:
	cmpb	$0, neighbor_cache+49(%rip)
	jne	.LBB3_7
.LBB3_129:
	xorl	%ebx, %ebx
	movl	$neighbor_cache+49, %r14d
	movl	$neighbor_cache+48, %r15d
	xorl	%eax, %eax
	jmp	.LBB3_4
.LBB3_1:
	xorl	%ebx, %ebx
	jmp	.LBB3_77
.LBB3_3:
	movb	$1, %bl
	jmp	.LBB3_77
.LBB3_149:
	movb	$2, %bl
	jmp	.LBB3_77
.LBB3_151:
	movb	$3, %bl
	jmp	.LBB3_77
.LBB3_153:
	movb	$4, %bl
	jmp	.LBB3_77
.LBB3_155:
	movb	$5, %bl
	jmp	.LBB3_77
.LBB3_157:
	movb	$6, %bl
	jmp	.LBB3_77
.LBB3_159:
	movb	$7, %bl
	jmp	.LBB3_77
.LBB3_161:
	movb	$8, %bl
	jmp	.LBB3_77
.LBB3_163:
	movb	$9, %bl
	jmp	.LBB3_77
.LBB3_7:
	cmpb	$3, %dl
	jne	.LBB3_130
# %bb.8:
	cmpb	$0, neighbor_cache+105(%rip)
	jne	.LBB3_130
.LBB3_9:
	movl	$neighbor_cache+105, %r14d
	movl	$neighbor_cache+104, %r15d
	movl	$1, %eax
	movb	$1, %bl
	jmp	.LBB3_4
.LBB3_130:
	cmpb	$3, %cl
	jne	.LBB3_132
# %bb.131:
	cmpb	$0, neighbor_cache+161(%rip)
	jne	.LBB3_132
.LBB3_33:
	movl	$neighbor_cache+161, %r14d
	movl	$neighbor_cache+160, %r15d
	movl	$2, %eax
	movb	$2, %bl
	jmp	.LBB3_4
.LBB3_132:
	cmpb	$3, %r14b
	jne	.LBB3_134
# %bb.133:
	cmpb	$0, neighbor_cache+217(%rip)
	jne	.LBB3_134
.LBB3_107:
	movl	$neighbor_cache+217, %r14d
	movl	$neighbor_cache+216, %r15d
	movl	$3, %eax
	movb	$3, %bl
	jmp	.LBB3_4
.LBB3_134:
	cmpb	$3, %r11b
	jne	.LBB3_136
# %bb.135:
	cmpb	$0, neighbor_cache+273(%rip)
	jne	.LBB3_136
.LBB3_110:
	movl	$neighbor_cache+273, %r14d
	movl	$neighbor_cache+272, %r15d
	movl	$4, %eax
	movb	$4, %bl
	jmp	.LBB3_4
.LBB3_136:
	cmpb	$3, %r10b
	jne	.LBB3_138
# %bb.137:
	cmpb	$0, neighbor_cache+329(%rip)
	jne	.LBB3_138
.LBB3_113:
	movl	$neighbor_cache+329, %r14d
	movl	$neighbor_cache+328, %r15d
	movl	$5, %eax
	movb	$5, %bl
	jmp	.LBB3_4
.LBB3_138:
	cmpb	$3, %r9b
	jne	.LBB3_140
# %bb.139:
	cmpb	$0, neighbor_cache+385(%rip)
	jne	.LBB3_140
.LBB3_116:
	movl	$neighbor_cache+385, %r14d
	movl	$neighbor_cache+384, %r15d
	movl	$6, %eax
	movb	$6, %bl
	jmp	.LBB3_4
.LBB3_140:
	cmpb	$3, %r8b
	jne	.LBB3_142
# %bb.141:
	cmpb	$0, neighbor_cache+441(%rip)
	jne	.LBB3_142
.LBB3_119:
	movl	$neighbor_cache+441, %r14d
	movl	$neighbor_cache+440, %r15d
	movl	$7, %eax
	movb	$7, %bl
	jmp	.LBB3_4
.LBB3_142:
	cmpb	$3, %dil
	jne	.LBB3_144
# %bb.143:
	cmpb	$0, neighbor_cache+497(%rip)
	jne	.LBB3_144
.LBB3_122:
	movl	$neighbor_cache+497, %r14d
	movl	$neighbor_cache+496, %r15d
	movl	$8, %eax
	movb	$8, %bl
	jmp	.LBB3_4
.LBB3_144:
	cmpb	$3, %r15b
	jne	.LBB3_146
# %bb.145:
	cmpb	$0, neighbor_cache+553(%rip)
	jne	.LBB3_146
.LBB3_125:
	movl	$neighbor_cache+553, %r14d
	movl	$neighbor_cache+552, %r15d
	movl	$9, %eax
	movb	$9, %bl
.LBB3_4:
	imulq	$56, %rax, %r12
	movq	neighbor_cache+40(%r12), %rdi
	testq	%rdi, %rdi
	je	.LBB3_6
# %bb.5:
	leaq	neighbor_cache+40(%r12), %r13
	callq	nd6_free_q
	movq	$0, (%r13)
.LBB3_6:
	movb	$0, (%r15)
	movb	$0, (%r14)
	movq	$0, neighbor_cache+24(%r12)
	movl	$0, neighbor_cache+52(%r12)
	xorps	%xmm0, %xmm0
	movups	%xmm0, neighbor_cache(%r12)
	movb	$0, neighbor_cache+16(%r12)
.LBB3_76:
	movl	$42, __A_VARIABLE(%rip)
.LBB3_77:
	movl	$42, __A_VARIABLE(%rip)
	movl	%ebx, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB3_146:
	cmpb	$5, %al
	jne	.LBB3_10
# %bb.147:
	cmpb	$0, neighbor_cache+49(%rip)
	je	.LBB3_129
.LBB3_10:
	cmpb	$5, %dl
	jne	.LBB3_12
# %bb.11:
	cmpb	$0, neighbor_cache+105(%rip)
	je	.LBB3_9
.LBB3_12:
	cmpb	$5, %cl
	jne	.LBB3_14
# %bb.13:
	cmpb	$0, neighbor_cache+161(%rip)
	je	.LBB3_33
.LBB3_14:
	cmpb	$5, %r14b
	jne	.LBB3_16
# %bb.15:
	cmpb	$0, neighbor_cache+217(%rip)
	je	.LBB3_107
.LBB3_16:
	cmpb	$5, %r11b
	jne	.LBB3_18
# %bb.17:
	cmpb	$0, neighbor_cache+273(%rip)
	je	.LBB3_110
.LBB3_18:
	cmpb	$5, %r10b
	jne	.LBB3_20
# %bb.19:
	cmpb	$0, neighbor_cache+329(%rip)
	je	.LBB3_113
.LBB3_20:
	cmpb	$5, %r9b
	jne	.LBB3_22
# %bb.21:
	cmpb	$0, neighbor_cache+385(%rip)
	je	.LBB3_116
.LBB3_22:
	cmpb	$5, %r8b
	jne	.LBB3_24
# %bb.23:
	cmpb	$0, neighbor_cache+441(%rip)
	je	.LBB3_119
.LBB3_24:
	cmpb	$5, %dil
	jne	.LBB3_26
# %bb.25:
	cmpb	$0, neighbor_cache+497(%rip)
	je	.LBB3_122
.LBB3_26:
	cmpb	$5, %r15b
	jne	.LBB3_28
# %bb.27:
	cmpb	$0, neighbor_cache+553(%rip)
	je	.LBB3_125
.LBB3_28:
	cmpb	$4, %al
	jne	.LBB3_29
# %bb.128:
	cmpb	$0, neighbor_cache+49(%rip)
	je	.LBB3_129
.LBB3_29:
	cmpb	$4, %dl
	jne	.LBB3_31
# %bb.30:
	cmpb	$0, neighbor_cache+105(%rip)
	je	.LBB3_9
.LBB3_31:
	cmpb	$4, %cl
	jne	.LBB3_105
# %bb.32:
	cmpb	$0, neighbor_cache+161(%rip)
	je	.LBB3_33
.LBB3_105:
	cmpb	$4, %r14b
	jne	.LBB3_108
# %bb.106:
	cmpb	$0, neighbor_cache+217(%rip)
	je	.LBB3_107
.LBB3_108:
	cmpb	$4, %r11b
	jne	.LBB3_111
# %bb.109:
	cmpb	$0, neighbor_cache+273(%rip)
	je	.LBB3_110
.LBB3_111:
	cmpb	$4, %r10b
	jne	.LBB3_114
# %bb.112:
	cmpb	$0, neighbor_cache+329(%rip)
	je	.LBB3_113
.LBB3_114:
	cmpb	$4, %r9b
	jne	.LBB3_117
# %bb.115:
	cmpb	$0, neighbor_cache+385(%rip)
	je	.LBB3_116
.LBB3_117:
	cmpb	$4, %r8b
	jne	.LBB3_120
# %bb.118:
	cmpb	$0, neighbor_cache+441(%rip)
	je	.LBB3_119
.LBB3_120:
	cmpb	$4, %dil
	jne	.LBB3_123
# %bb.121:
	cmpb	$0, neighbor_cache+497(%rip)
	je	.LBB3_122
.LBB3_123:
	cmpb	$4, %r15b
	jne	.LBB3_126
# %bb.124:
	cmpb	$0, neighbor_cache+553(%rip)
	je	.LBB3_125
.LBB3_126:
	movl	%eax, %ebx
	xorb	$2, %bl
	movl	neighbor_cache+52(%rip), %r12d
	cmpl	$-1, %r12d
	sete	%r13b
	orb	neighbor_cache+49(%rip), %bl
	movl	$-1, %esi
	cmovel	%r12d, %esi
	setne	%r12b
	orb	%r13b, %r12b
	negb	%r12b
	cmpb	$2, %dl
	jne	.LBB3_79
# %bb.127:
	cmpb	$0, neighbor_cache+105(%rip)
	jne	.LBB3_79
# %bb.78:
	movl	neighbor_cache+108(%rip), %ebx
	cmpl	%esi, %ebx
	movzbl	%r12b, %r13d
	movl	$1, %r12d
	cmovael	%r13d, %r12d
	cmovbl	%ebx, %esi
.LBB3_79:
	cmpb	$2, %cl
	jne	.LBB3_82
# %bb.80:
	cmpb	$0, neighbor_cache+161(%rip)
	jne	.LBB3_82
# %bb.81:
	movl	neighbor_cache+164(%rip), %ebx
	cmpl	%esi, %ebx
	movzbl	%r12b, %r13d
	movl	$2, %r12d
	cmovael	%r13d, %r12d
	cmovbl	%ebx, %esi
.LBB3_82:
	cmpb	$2, %r14b
	jne	.LBB3_85
# %bb.83:
	cmpb	$0, neighbor_cache+217(%rip)
	jne	.LBB3_85
# %bb.84:
	movl	neighbor_cache+220(%rip), %ebx
	cmpl	%esi, %ebx
	movzbl	%r12b, %r13d
	movl	$3, %r12d
	cmovael	%r13d, %r12d
	cmovbl	%ebx, %esi
.LBB3_85:
	cmpb	$2, %r11b
	jne	.LBB3_88
# %bb.86:
	cmpb	$0, neighbor_cache+273(%rip)
	jne	.LBB3_88
# %bb.87:
	movl	neighbor_cache+276(%rip), %ebx
	cmpl	%esi, %ebx
	movzbl	%r12b, %r13d
	movl	$4, %r12d
	cmovael	%r13d, %r12d
	cmovbl	%ebx, %esi
.LBB3_88:
	cmpb	$2, %r10b
	jne	.LBB3_91
# %bb.89:
	cmpb	$0, neighbor_cache+329(%rip)
	jne	.LBB3_91
# %bb.90:
	movl	neighbor_cache+332(%rip), %ebx
	cmpl	%esi, %ebx
	movzbl	%r12b, %r13d
	movl	$5, %r12d
	cmovael	%r13d, %r12d
	cmovbl	%ebx, %esi
.LBB3_91:
	cmpb	$2, %r9b
	jne	.LBB3_94
# %bb.92:
	cmpb	$0, neighbor_cache+385(%rip)
	jne	.LBB3_94
# %bb.93:
	movl	neighbor_cache+388(%rip), %ebx
	cmpl	%esi, %ebx
	movzbl	%r12b, %r13d
	movl	$6, %r12d
	cmovael	%r13d, %r12d
	cmovbl	%ebx, %esi
.LBB3_94:
	cmpb	$2, %r8b
	jne	.LBB3_97
# %bb.95:
	cmpb	$0, neighbor_cache+441(%rip)
	jne	.LBB3_97
# %bb.96:
	movl	neighbor_cache+444(%rip), %ebx
	cmpl	%esi, %ebx
	movzbl	%r12b, %r13d
	movl	$7, %r12d
	cmovael	%r13d, %r12d
	cmovbl	%ebx, %esi
.LBB3_97:
	cmpb	$2, %dil
	jne	.LBB3_100
# %bb.98:
	cmpb	$0, neighbor_cache+497(%rip)
	jne	.LBB3_100
# %bb.99:
	movl	neighbor_cache+500(%rip), %ebx
	cmpl	%esi, %ebx
	movzbl	%r12b, %r13d
	movl	$8, %r12d
	cmovael	%r13d, %r12d
	cmovbl	%ebx, %esi
.LBB3_100:
	cmpb	$2, %r15b
	jne	.LBB3_103
# %bb.101:
	cmpb	$0, neighbor_cache+553(%rip)
	jne	.LBB3_103
# %bb.102:
	movb	$9, %bl
	cmpl	%esi, neighbor_cache+556(%rip)
	jb	.LBB3_72
.LBB3_103:
	movl	%r12d, %ebx
	testb	%r12b, %r12b
	js	.LBB3_104
.LBB3_72:
	movsbq	%bl, %rax
	imulq	$56, %rax, %r14
	cmpb	$0, neighbor_cache+49(%r14)
	jne	.LBB3_76
# %bb.73:
	leaq	neighbor_cache+49(%r14), %r15
	movq	neighbor_cache+40(%r14), %rdi
	testq	%rdi, %rdi
	je	.LBB3_75
# %bb.74:
	leaq	neighbor_cache+40(%r14), %r12
	callq	nd6_free_q
	movq	$0, (%r12)
.LBB3_75:
	movb	$0, neighbor_cache+48(%r14)
	movb	$0, (%r15)
	movq	$0, neighbor_cache+24(%r14)
	movl	$0, neighbor_cache+52(%r14)
	xorps	%xmm0, %xmm0
	movups	%xmm0, neighbor_cache(%r14)
	movb	$0, neighbor_cache+16(%r14)
	jmp	.LBB3_76
.LBB3_104:                              # %.preheader
	movb	$-1, %bl
	xorl	%r13d, %r13d
	movl	$neighbor_cache+52, %r12d
	movl	$0, -44(%rbp)           # 4-byte Folded Spill
	jmp	.LBB3_34
.LBB3_38:                               #   in Loop: Header=BB3_34 Depth=1
	addq	$1, %r13
	addq	$56, %r12
	cmpq	$10, %r13
	je	.LBB3_39
.LBB3_34:                               # =>This Inner Loop Header: Depth=1
	cmpq	$0, -12(%r12)
	jne	.LBB3_38
# %bb.35:                               #   in Loop: Header=BB3_34 Depth=1
	cmpb	$1, -4(%r12)
	jne	.LBB3_38
# %bb.36:                               #   in Loop: Header=BB3_34 Depth=1
	cmpb	$0, -3(%r12)
	jne	.LBB3_38
# %bb.37:                               #   in Loop: Header=BB3_34 Depth=1
	movl	(%r12), %esi
	movl	%esi, -48(%rbp)         # 4-byte Spill
	movl	-44(%rbp), %esi         # 4-byte Reload
	cmpl	%esi, -48(%rbp)         # 4-byte Folded Reload
	movzbl	%bl, %ebx
	cmovael	%r13d, %ebx
	cmovael	-48(%rbp), %esi         # 4-byte Folded Reload
	movl	%esi, -44(%rbp)         # 4-byte Spill
	jmp	.LBB3_38
.LBB3_39:
	testb	%bl, %bl
	js	.LBB3_40
# %bb.71:
	cmpb	$9, %bl
	ja	.LBB3_76
	jmp	.LBB3_72
.LBB3_40:
	xorb	$1, %al
	xorl	%esi, %esi
	orb	neighbor_cache+49(%rip), %al
	sete	%al
	jne	.LBB3_42
# %bb.41:
	movl	neighbor_cache+52(%rip), %esi
.LBB3_42:
	addb	$-1, %al
	cmpb	$1, %dl
	jne	.LBB3_45
# %bb.43:
	cmpb	$0, neighbor_cache+105(%rip)
	jne	.LBB3_45
# %bb.44:
	movl	neighbor_cache+108(%rip), %edx
	cmpl	%esi, %edx
	movzbl	%al, %ebx
	movl	$1, %eax
	cmovbl	%ebx, %eax
	cmovael	%edx, %esi
.LBB3_45:
	cmpb	$1, %cl
	jne	.LBB3_48
# %bb.46:
	cmpb	$0, neighbor_cache+161(%rip)
	jne	.LBB3_48
# %bb.47:
	movl	neighbor_cache+164(%rip), %ecx
	cmpl	%esi, %ecx
	movzbl	%al, %edx
	movl	$2, %eax
	cmovbl	%edx, %eax
	cmovael	%ecx, %esi
.LBB3_48:
	cmpb	$1, %r14b
	jne	.LBB3_51
# %bb.49:
	cmpb	$0, neighbor_cache+217(%rip)
	jne	.LBB3_51
# %bb.50:
	movl	neighbor_cache+220(%rip), %ecx
	cmpl	%esi, %ecx
	movzbl	%al, %edx
	movl	$3, %eax
	cmovbl	%edx, %eax
	cmovael	%ecx, %esi
.LBB3_51:
	cmpb	$1, %r11b
	jne	.LBB3_54
# %bb.52:
	cmpb	$0, neighbor_cache+273(%rip)
	jne	.LBB3_54
# %bb.53:
	movl	neighbor_cache+276(%rip), %ecx
	cmpl	%esi, %ecx
	movzbl	%al, %edx
	movl	$4, %eax
	cmovbl	%edx, %eax
	cmovael	%ecx, %esi
.LBB3_54:
	cmpb	$1, %r10b
	jne	.LBB3_57
# %bb.55:
	cmpb	$0, neighbor_cache+329(%rip)
	jne	.LBB3_57
# %bb.56:
	movl	neighbor_cache+332(%rip), %ecx
	cmpl	%esi, %ecx
	movzbl	%al, %edx
	movl	$5, %eax
	cmovbl	%edx, %eax
	cmovael	%ecx, %esi
.LBB3_57:
	cmpb	$1, %r9b
	jne	.LBB3_60
# %bb.58:
	cmpb	$0, neighbor_cache+385(%rip)
	jne	.LBB3_60
# %bb.59:
	movl	neighbor_cache+388(%rip), %ecx
	cmpl	%esi, %ecx
	movzbl	%al, %edx
	movl	$6, %eax
	cmovbl	%edx, %eax
	cmovael	%ecx, %esi
.LBB3_60:
	cmpb	$1, %r8b
	jne	.LBB3_63
# %bb.61:
	cmpb	$0, neighbor_cache+441(%rip)
	jne	.LBB3_63
# %bb.62:
	movl	neighbor_cache+444(%rip), %ecx
	cmpl	%esi, %ecx
	movzbl	%al, %edx
	movl	$7, %eax
	cmovbl	%edx, %eax
	cmovael	%ecx, %esi
.LBB3_63:
	cmpb	$1, %dil
	jne	.LBB3_66
# %bb.64:
	cmpb	$0, neighbor_cache+497(%rip)
	jne	.LBB3_66
# %bb.65:
	movl	neighbor_cache+500(%rip), %ecx
	cmpl	%esi, %ecx
	movzbl	%al, %edx
	movl	$8, %eax
	cmovbl	%edx, %eax
	cmovael	%ecx, %esi
.LBB3_66:
	cmpb	$0, neighbor_cache+553(%rip)
	jne	.LBB3_69
# %bb.67:
	cmpb	$1, %r15b
	jne	.LBB3_69
# %bb.68:
	movb	$9, %bl
	cmpl	%esi, neighbor_cache+556(%rip)
	jae	.LBB3_72
.LBB3_69:
	movl	%eax, %ebx
	testb	%al, %al
	jns	.LBB3_72
# %bb.70:
	movb	$-1, %bl
	jmp	.LBB3_77
.Lfunc_end3:
	.size	nd6_new_neighbor_cache_entry, .Lfunc_end3-nd6_new_neighbor_cache_entry
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4               # -- Begin function nd6_send_rs
.LCPI4_0:
	.long	767                     # 0x2ff
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	33554432                # 0x2000000
	.text
	.p2align	4, 0x90
	.type	nd6_send_rs,@function
nd6_send_rs:                            # @nd6_send_rs
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
	leaq	80(%rdi), %r14
	testb	$16, 152(%rdi)
	movl	$ip6_addr_any, %eax
	cmoveq	%rax, %r14
	movaps	.LCPI4_0(%rip), %xmm0   # xmm0 = [767,0,0,33554432]
	movaps	%xmm0, multicast_address(%rip)
	movb	264(%rdi), %cl
	addb	$1, %cl
	movb	%cl, multicast_address+16(%rip)
	cmpq	%rax, %r14
	je	.LBB4_1
# %bb.2:
	movzbl	260(%r12), %ebx
	leal	2(%rbx), %eax
                                        # kill: def $ebx killed $ebx killed $rbx def $rbx
	addl	$2, %ebx
	shrl	$3, %ebx
	andb	$7, %al
	cmpb	$1, %al
	sbbw	$-1, %bx
	jmp	.LBB4_3
.LBB4_1:
	xorl	%ebx, %ebx
.LBB4_3:
	leal	8(,%rbx,8), %eax
	movzwl	%ax, %esi
	movl	$54, %edi
	movl	$640, %edx              # imm = 0x280
	callq	pbuf_alloc
	testq	%rax, %rax
	je	.LBB4_4
# %bb.5:
	movq	%rax, %r15
	movl	$ip6_addr_any, %eax
	movq	8(%r15), %r13
	movq	$133, (%r13)
	cmpq	%rax, %r14
	je	.LBB4_7
# %bb.6:
	movb	$1, 8(%r13)
	movb	%bl, 9(%r13)
	leaq	10(%r13), %rdi
	leaq	254(%r12), %rsi
	movzbl	260(%r12), %edx
	callq	memcpy
.LBB4_7:
	testb	$16, 248(%r12)
	je	.LBB4_9
# %bb.8:
	movzwl	18(%r15), %edx
	movl	$multicast_address, %r8d
	movq	%r15, %rdi
	movl	$58, %esi
	movq	%r14, %rcx
	callq	ip6_chksum_pseudo
	movw	%ax, 2(%r13)
.LBB4_9:
	addw	$1, lwip_stats+286(%rip)
	movl	$ip6_addr_any, %eax
	xorl	%esi, %esi
	cmpq	%rax, %r14
	cmovneq	%r14, %rsi
	movq	%r12, (%rsp)
	movl	$multicast_address, %edx
	movq	%r15, %rdi
	movl	$255, %ecx
	xorl	%r8d, %r8d
	movl	$58, %r9d
	callq	ip6_output_if
	movl	%eax, %ebx
	movq	%r15, %rdi
	callq	pbuf_free
	jmp	.LBB4_10
.LBB4_4:
	addw	$1, lwip_stats+298(%rip)
	movb	$-2, %bl
.LBB4_10:
	movl	$42, __A_VARIABLE(%rip)
	movl	%ebx, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end4:
	.size	nd6_send_rs, .Lfunc_end4-nd6_send_rs
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4               # -- Begin function nd6_tmr
.LCPI5_0:
	.zero	16
	.text
	.globl	nd6_tmr
	.p2align	4, 0x90
	.type	nd6_tmr,@function
nd6_tmr:                                # @nd6_tmr
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movl	$neighbor_cache, %ebx
	xorl	%r14d, %r14d
	jmp	.LBB5_1
.LBB5_14:                               #   in Loop: Header=BB5_1 Depth=1
	addl	$1, 52(%rbx)
	.p2align	4, 0x90
.LBB5_23:                               #   in Loop: Header=BB5_1 Depth=1
	addq	$1, %r14
	addq	$56, %rbx
	cmpq	$10, %r14
	je	.LBB5_24
.LBB5_1:                                # =>This Inner Loop Header: Depth=1
	movzbl	48(%rbx), %eax
	addb	$-1, %al
	cmpb	$4, %al
	ja	.LBB5_23
# %bb.2:                                #   in Loop: Header=BB5_1 Depth=1
	movzbl	%al, %eax
	jmpq	*.LJTI5_0(,%rax,8)
.LBB5_3:                                #   in Loop: Header=BB5_1 Depth=1
	movl	52(%rbx), %eax
	cmpl	$3, %eax
	jb	.LBB5_8
# %bb.4:                                #   in Loop: Header=BB5_1 Depth=1
	cmpb	$0, 49(%rbx)
	je	.LBB5_5
.LBB5_8:                                #   in Loop: Header=BB5_1 Depth=1
	addl	$1, %eax
	movl	%eax, 52(%rbx)
	movq	24(%rbx), %rdi
	movq	%rbx, %rsi
	movl	$1, %edx
	jmp	.LBB5_21
.LBB5_9:                                #   in Loop: Header=BB5_1 Depth=1
	cmpq	$0, 40(%rbx)
	je	.LBB5_11
# %bb.10:                               #   in Loop: Header=BB5_1 Depth=1
	movsbl	%r14b, %edi
	callq	nd6_send_q
.LBB5_11:                               #   in Loop: Header=BB5_1 Depth=1
	movl	52(%rbx), %eax
	cmpl	$1000, %eax             # imm = 0x3E8
	ja	.LBB5_13
# %bb.12:                               #   in Loop: Header=BB5_1 Depth=1
	movb	$3, 48(%rbx)
	movl	$0, 52(%rbx)
	jmp	.LBB5_23
.LBB5_15:                               #   in Loop: Header=BB5_1 Depth=1
	movl	52(%rbx), %eax
	cmpl	$1, %eax
	ja	.LBB5_17
# %bb.16:                               #   in Loop: Header=BB5_1 Depth=1
	movb	$5, 48(%rbx)
	movl	$0, 52(%rbx)
	jmp	.LBB5_23
.LBB5_18:                               #   in Loop: Header=BB5_1 Depth=1
	movl	52(%rbx), %eax
	cmpl	$3, %eax
	jb	.LBB5_20
# %bb.19:                               #   in Loop: Header=BB5_1 Depth=1
	cmpb	$0, 49(%rbx)
	je	.LBB5_5
.LBB5_20:                               #   in Loop: Header=BB5_1 Depth=1
	addl	$1, %eax
	movl	%eax, 52(%rbx)
	movq	24(%rbx), %rdi
	movq	%rbx, %rsi
	xorl	%edx, %edx
.LBB5_21:                               #   in Loop: Header=BB5_1 Depth=1
	callq	nd6_send_ns
.LBB5_22:                               #   in Loop: Header=BB5_1 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB5_23
.LBB5_13:                               #   in Loop: Header=BB5_1 Depth=1
	addl	$-1000, %eax            # imm = 0xFC18
	movl	%eax, 52(%rbx)
	jmp	.LBB5_23
.LBB5_17:                               #   in Loop: Header=BB5_1 Depth=1
	addl	$-1, %eax
	movl	%eax, 52(%rbx)
	jmp	.LBB5_23
.LBB5_5:                                #   in Loop: Header=BB5_1 Depth=1
	movq	40(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB5_7
# %bb.6:                                #   in Loop: Header=BB5_1 Depth=1
	callq	nd6_free_q
	movq	$0, 40(%rbx)
.LBB5_7:                                #   in Loop: Header=BB5_1 Depth=1
	movw	$0, 48(%rbx)
	movq	$0, 24(%rbx)
	movl	$0, 52(%rbx)
	xorps	%xmm0, %xmm0
	movups	%xmm0, (%rbx)
	movb	$0, 16(%rbx)
	jmp	.LBB5_22
.LBB5_24:
	addl	$1, destination_cache+44(%rip)
	addl	$1, destination_cache+92(%rip)
	addl	$1, destination_cache+140(%rip)
	addl	$1, destination_cache+188(%rip)
	addl	$1, destination_cache+236(%rip)
	addl	$1, destination_cache+284(%rip)
	addl	$1, destination_cache+332(%rip)
	addl	$1, destination_cache+380(%rip)
	addl	$1, destination_cache+428(%rip)
	addl	$1, destination_cache+476(%rip)
	xorl	%eax, %eax
	xorps	%xmm0, %xmm0
	jmp	.LBB5_25
	.p2align	4, 0x90
.LBB5_36:                               #   in Loop: Header=BB5_25 Depth=1
	addl	$-1, %edi
	movl	%edi, (%r9)
.LBB5_37:                               #   in Loop: Header=BB5_25 Depth=1
	addq	$1, %rax
	cmpq	$3, %rax
	je	.LBB5_38
.LBB5_25:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_28 Depth 2
	movq	%rax, %rcx
	shlq	$4, %rcx
	movq	default_router_list(%rcx), %rsi
	testq	%rsi, %rsi
	je	.LBB5_37
# %bb.26:                               #   in Loop: Header=BB5_25 Depth=1
	leaq	default_router_list+8(%rcx), %r9
	movl	default_router_list+8(%rcx), %edi
	cmpl	$1, %edi
	ja	.LBB5_36
# %bb.27:                               #   in Loop: Header=BB5_25 Depth=1
	leaq	default_router_list(%rcx), %r8
	movq	$-480, %rbx             # imm = 0xFE20
	jmp	.LBB5_28
	.p2align	4, 0x90
.LBB5_34:                               #   in Loop: Header=BB5_28 Depth=2
	addq	$48, %rbx
	je	.LBB5_35
.LBB5_28:                               #   Parent Loop BB5_25 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	destination_cache+500(%rbx), %edi
	cmpl	(%rsi), %edi
	jne	.LBB5_34
# %bb.29:                               #   in Loop: Header=BB5_28 Depth=2
	movl	destination_cache+504(%rbx), %edi
	cmpl	4(%rsi), %edi
	jne	.LBB5_34
# %bb.30:                               #   in Loop: Header=BB5_28 Depth=2
	movl	destination_cache+508(%rbx), %edi
	cmpl	8(%rsi), %edi
	jne	.LBB5_34
# %bb.31:                               #   in Loop: Header=BB5_28 Depth=2
	movl	destination_cache+512(%rbx), %edi
	cmpl	12(%rsi), %edi
	jne	.LBB5_34
# %bb.32:                               #   in Loop: Header=BB5_28 Depth=2
	movzbl	destination_cache+516(%rbx), %edx
	cmpb	16(%rsi), %dl
	jne	.LBB5_34
# %bb.33:                               #   in Loop: Header=BB5_28 Depth=2
	movaps	%xmm0, destination_cache+480(%rbx)
	movb	$0, destination_cache+496(%rbx)
	jmp	.LBB5_34
	.p2align	4, 0x90
.LBB5_35:                               #   in Loop: Header=BB5_25 Depth=1
	movb	$0, 49(%rsi)
	movq	$0, (%r8)
	movl	$0, (%r9)
	movb	$0, default_router_list+12(%rcx)
	jmp	.LBB5_37
.LBB5_38:
	cmpq	$0, prefix_list+24(%rip)
	je	.LBB5_42
# %bb.39:
	movl	prefix_list+32(%rip), %eax
	cmpl	$1, %eax
	ja	.LBB5_41
# %bb.40:
	movl	$0, prefix_list+32(%rip)
	movq	$0, prefix_list+24(%rip)
.LBB5_42:
	cmpq	$0, prefix_list+64(%rip)
	jne	.LBB5_43
	jmp	.LBB5_80
.LBB5_41:
	addl	$-1, %eax
	movl	%eax, prefix_list+32(%rip)
	cmpq	$0, prefix_list+64(%rip)
	je	.LBB5_80
.LBB5_43:
	movl	prefix_list+72(%rip), %eax
	cmpl	$2, %eax
	jae	.LBB5_44
# %bb.79:
	movl	$0, prefix_list+72(%rip)
	movq	$0, prefix_list+64(%rip)
.LBB5_80:
	cmpq	$0, prefix_list+104(%rip)
	jne	.LBB5_81
	jmp	.LBB5_84
.LBB5_44:
	addl	$-1, %eax
	movl	%eax, prefix_list+72(%rip)
	cmpq	$0, prefix_list+104(%rip)
	je	.LBB5_84
.LBB5_81:
	movl	prefix_list+112(%rip), %eax
	cmpl	$2, %eax
	jae	.LBB5_82
# %bb.83:
	movl	$0, prefix_list+112(%rip)
	movq	$0, prefix_list+104(%rip)
.LBB5_84:
	cmpq	$0, prefix_list+144(%rip)
	jne	.LBB5_85
	jmp	.LBB5_88
.LBB5_82:
	addl	$-1, %eax
	movl	%eax, prefix_list+112(%rip)
	cmpq	$0, prefix_list+144(%rip)
	je	.LBB5_88
.LBB5_85:
	movl	prefix_list+152(%rip), %eax
	cmpl	$2, %eax
	jae	.LBB5_86
# %bb.87:
	movl	$0, prefix_list+152(%rip)
	movq	$0, prefix_list+144(%rip)
.LBB5_88:
	cmpq	$0, prefix_list+184(%rip)
	jne	.LBB5_89
	jmp	.LBB5_92
.LBB5_86:
	addl	$-1, %eax
	movl	%eax, prefix_list+152(%rip)
	cmpq	$0, prefix_list+184(%rip)
	je	.LBB5_92
.LBB5_89:
	movl	prefix_list+192(%rip), %eax
	cmpl	$2, %eax
	jae	.LBB5_90
# %bb.91:
	movl	$0, prefix_list+192(%rip)
	movq	$0, prefix_list+184(%rip)
.LBB5_92:
	movq	netif_list(%rip), %r14
	jmp	.LBB5_67
.LBB5_90:
	addl	$-1, %eax
	movl	%eax, prefix_list+192(%rip)
	movq	netif_list(%rip), %r14
	jmp	.LBB5_67
	.p2align	4, 0x90
.LBB5_66:                               #   in Loop: Header=BB5_67 Depth=1
	movq	(%r14), %r14
.LBB5_67:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_46 Depth 2
	testq	%r14, %r14
	je	.LBB5_68
# %bb.45:                               #   in Loop: Header=BB5_67 Depth=1
	leaq	80(%r14), %r15
	xorl	%ebx, %ebx
	jmp	.LBB5_46
.LBB5_60:                               #   in Loop: Header=BB5_46 Depth=2
	movb	$48, %al
.LBB5_62:                               #   in Loop: Header=BB5_46 Depth=2
	movzbl	%al, %edx
	movsbl	%bl, %esi
	movq	%r14, %rdi
	callq	netif_ip6_addr_set_state
.LBB5_65:                               #   in Loop: Header=BB5_46 Depth=2
	addq	$1, %rbx
	addq	$24, %r15
	cmpq	$3, %rbx
	je	.LBB5_66
.LBB5_46:                               #   Parent Loop BB5_67 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	152(%r14,%rbx), %eax
	testb	%al, %al
	je	.LBB5_57
# %bb.47:                               #   in Loop: Header=BB5_46 Depth=2
	movl	156(%r14,%rbx,4), %ecx
	cmpl	$-1, %ecx
	je	.LBB5_52
# %bb.48:                               #   in Loop: Header=BB5_46 Depth=2
	testl	%ecx, %ecx
	je	.LBB5_57
# %bb.49:                               #   in Loop: Header=BB5_46 Depth=2
	cmpl	$1, %ecx
	jne	.LBB5_51
# %bb.50:                               #   in Loop: Header=BB5_46 Depth=2
	movl	$0, 156(%r14,%rbx,4)
	movl	$0, 168(%r14,%rbx,4)
	movsbl	%bl, %esi
	movq	%r14, %rdi
	xorl	%edx, %edx
	callq	netif_ip6_addr_set_state
	jmp	.LBB5_57
.LBB5_51:                               #   in Loop: Header=BB5_46 Depth=2
	addl	$-1, %ecx
	movl	%ecx, 156(%r14,%rbx,4)
.LBB5_52:                               #   in Loop: Header=BB5_46 Depth=2
	movl	168(%r14,%rbx,4), %ecx
	cmpl	$1, %ecx
	ja	.LBB5_55
# %bb.53:                               #   in Loop: Header=BB5_46 Depth=2
	movl	$0, 168(%r14,%rbx,4)
	cmpb	$48, %al
	jne	.LBB5_57
# %bb.54:                               #   in Loop: Header=BB5_46 Depth=2
	movsbl	%bl, %esi
	movq	%r14, %rdi
	movl	$16, %edx
	callq	netif_ip6_addr_set_state
	jmp	.LBB5_57
.LBB5_55:                               #   in Loop: Header=BB5_46 Depth=2
	cmpl	$-1, %ecx
	je	.LBB5_57
# %bb.56:                               #   in Loop: Header=BB5_46 Depth=2
	addl	$-1, %ecx
	movl	%ecx, 168(%r14,%rbx,4)
	.p2align	4, 0x90
.LBB5_57:                               #   in Loop: Header=BB5_46 Depth=2
	movzbl	152(%r14,%rbx), %eax
	testb	$8, %al
	je	.LBB5_65
# %bb.58:                               #   in Loop: Header=BB5_46 Depth=2
	testb	$7, %al
	je	.LBB5_63
# %bb.59:                               #   in Loop: Header=BB5_46 Depth=2
	cmpl	$0, 156(%r14,%rbx,4)
	je	.LBB5_60
# %bb.61:                               #   in Loop: Header=BB5_46 Depth=2
	cmpl	$0, 168(%r14,%rbx,4)
	setne	%al
	shlb	$5, %al
	orb	$16, %al
	jmp	.LBB5_62
.LBB5_63:                               #   in Loop: Header=BB5_46 Depth=2
	movzbl	261(%r14), %ecx
	andb	$5, %cl
	cmpb	$5, %cl
	jne	.LBB5_65
# %bb.64:                               #   in Loop: Header=BB5_46 Depth=2
	addb	$1, %al
	movsbl	%bl, %esi
	movzbl	%al, %edx
	movq	%r14, %rdi
	callq	netif_ip6_addr_set_state
	movq	%r14, %rdi
	movq	%r15, %rsi
	movl	$5, %edx
	callq	nd6_send_ns
	jmp	.LBB5_65
.LBB5_68:
	movb	nd6_tmr_rs_reduction(%rip), %al
	testb	%al, %al
	je	.LBB5_69
# %bb.77:
	addb	$-1, %al
	movb	%al, nd6_tmr_rs_reduction(%rip)
.LBB5_78:
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB5_69:
	movb	$3, nd6_tmr_rs_reduction(%rip)
	movq	netif_list(%rip), %rbx
	jmp	.LBB5_70
	.p2align	4, 0x90
.LBB5_76:                               #   in Loop: Header=BB5_70 Depth=1
	movq	(%rbx), %rbx
.LBB5_70:                               # =>This Inner Loop Header: Depth=1
	testq	%rbx, %rbx
	je	.LBB5_78
# %bb.71:                               #   in Loop: Header=BB5_70 Depth=1
	cmpb	$0, 266(%rbx)
	je	.LBB5_76
# %bb.72:                               #   in Loop: Header=BB5_70 Depth=1
	movzbl	261(%rbx), %eax
	andb	$5, %al
	cmpb	$5, %al
	jne	.LBB5_76
# %bb.73:                               #   in Loop: Header=BB5_70 Depth=1
	movzbl	152(%rbx), %eax
	orb	$64, %al
	cmpb	$64, %al
	je	.LBB5_76
# %bb.74:                               #   in Loop: Header=BB5_70 Depth=1
	movq	%rbx, %rdi
	callq	nd6_send_rs
	testb	%al, %al
	jne	.LBB5_76
# %bb.75:                               #   in Loop: Header=BB5_70 Depth=1
	addb	$-1, 266(%rbx)
	jmp	.LBB5_76
.Lfunc_end5:
	.size	nd6_tmr, .Lfunc_end5-nd6_tmr
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI5_0:
	.quad	.LBB5_3
	.quad	.LBB5_9
	.quad	.LBB5_14
	.quad	.LBB5_15
	.quad	.LBB5_18
                                        # -- End function
	.text
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
	.p2align	4, 0x90         # -- Begin function nd6_send_ns
	.type	nd6_send_ns,@function
nd6_send_ns:                            # @nd6_send_ns
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
	je	.LBB7_16
# %bb.1:
	movl	%edx, %ebx
	movq	%rsi, %r14
	testb	$4, %bl
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	jne	.LBB7_2
# %bb.3:
	testb	$16, 152(%rdi)
	jne	.LBB7_4
.LBB7_2:
	movl	$ip6_addr_any, %eax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	xorl	%r13d, %r13d
	jmp	.LBB7_5
.LBB7_4:
	leaq	80(%rdi), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movzbl	260(%rdi), %r13d
	addl	$9, %r13d
	shrl	$3, %r13d
.LBB7_5:
	movzwl	%r13w, %eax
	leal	24(,%rax,8), %esi
	movl	$54, %edi
	movl	$640, %edx              # imm = 0x280
	callq	pbuf_alloc
	testq	%rax, %rax
	je	.LBB7_6
# %bb.7:
	movq	%rax, %r12
	movq	8(%rax), %r15
	movq	$135, (%r15)
	movl	(%r14), %eax
	movl	%eax, 8(%r15)
	movl	4(%r14), %eax
	movl	%eax, 12(%r15)
	movl	8(%r14), %eax
	movl	%eax, 16(%r15)
	movl	12(%r14), %eax
	movl	%eax, 20(%r15)
	testw	%r13w, %r13w
	je	.LBB7_9
# %bb.8:
	movb	$1, 24(%r15)
	movb	%r13b, 25(%r15)
	leaq	26(%r15), %rdi
	movq	-56(%rbp), %rax         # 8-byte Reload
	leaq	254(%rax), %rsi
	movzbl	260(%rax), %edx
	callq	memcpy
.LBB7_9:
	testb	$1, %bl
	jne	.LBB7_10
# %bb.11:
	movq	-56(%rbp), %r13         # 8-byte Reload
	testq	%r13, %r13
	movq	-48(%rbp), %rbx         # 8-byte Reload
	je	.LBB7_13
# %bb.12:
	testb	$16, 248(%r13)
	je	.LBB7_14
.LBB7_13:
	movzwl	18(%r12), %edx
	movq	%r12, %rdi
	movl	$58, %esi
	movq	%rbx, %rcx
	movq	%r14, %r8
	callq	ip6_chksum_pseudo
	movw	%ax, 2(%r15)
.LBB7_14:
	addw	$1, lwip_stats+286(%rip)
	movl	$ip6_addr_any, %eax
	xorl	%esi, %esi
	cmpq	%rax, %rbx
	cmovneq	%rbx, %rsi
	movq	%r13, (%rsp)
	movq	%r12, %rdi
	movq	%r14, %rdx
	movl	$255, %ecx
	xorl	%r8d, %r8d
	movl	$58, %r9d
	callq	ip6_output_if
	movq	%r12, %rdi
	callq	pbuf_free
	jmp	.LBB7_15
.LBB7_6:
	addw	$1, lwip_stats+298(%rip)
.LBB7_15:
	movl	$42, __A_VARIABLE(%rip)
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB7_10:
	movq	$767, multicast_address(%rip) # imm = 0x2FF
	movl	$16777216, multicast_address+8(%rip) # imm = 0x1000000
	movl	$255, %eax
	orl	12(%r14), %eax
	movl	%eax, multicast_address+12(%rip)
	movq	-56(%rbp), %r13         # 8-byte Reload
	movb	264(%r13), %al
	addb	$1, %al
	movb	%al, multicast_address+16(%rip)
	movl	$multicast_address, %r14d
	movq	-48(%rbp), %rbx         # 8-byte Reload
	testb	$16, 248(%r13)
	jne	.LBB7_13
	jmp	.LBB7_14
.LBB7_16:
	movl	$.L.str.5, %edi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$.L.str.1, %edi
	movl	$.L.str.2, %esi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$3, %edi
	callq	ukplat_terminate
.Lfunc_end7:
	.size	nd6_send_ns, .Lfunc_end7-nd6_send_ns
                                        # -- End function
	.globl	nd6_clear_destination_cache # -- Begin function nd6_clear_destination_cache
	.p2align	4, 0x90
	.type	nd6_clear_destination_cache,@function
nd6_clear_destination_cache:            # @nd6_clear_destination_cache
# %bb.0:
	xorps	%xmm0, %xmm0
	movaps	%xmm0, destination_cache(%rip)
	movb	$0, destination_cache+16(%rip)
	movaps	%xmm0, destination_cache+48(%rip)
	movb	$0, destination_cache+64(%rip)
	movaps	%xmm0, destination_cache+96(%rip)
	movb	$0, destination_cache+112(%rip)
	movaps	%xmm0, destination_cache+144(%rip)
	movb	$0, destination_cache+160(%rip)
	movaps	%xmm0, destination_cache+192(%rip)
	movb	$0, destination_cache+208(%rip)
	movaps	%xmm0, destination_cache+240(%rip)
	movb	$0, destination_cache+256(%rip)
	movaps	%xmm0, destination_cache+288(%rip)
	movb	$0, destination_cache+304(%rip)
	movaps	%xmm0, destination_cache+336(%rip)
	movb	$0, destination_cache+352(%rip)
	movaps	%xmm0, destination_cache+384(%rip)
	movb	$0, destination_cache+400(%rip)
	movaps	%xmm0, destination_cache+432(%rip)
	movb	$0, destination_cache+448(%rip)
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end8:
	.size	nd6_clear_destination_cache, .Lfunc_end8-nd6_clear_destination_cache
                                        # -- End function
	.globl	nd6_find_route          # -- Begin function nd6_find_route
	.p2align	4, 0x90
	.type	nd6_find_route,@function
nd6_find_route:                         # @nd6_find_route
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	prefix_list+24(%rip), %rbx
	testq	%rbx, %rbx
	je	.LBB9_5
# %bb.1:
	movl	prefix_list(%rip), %eax
	cmpl	(%rdi), %eax
	jne	.LBB9_5
# %bb.2:
	movl	prefix_list+4(%rip), %eax
	cmpl	4(%rdi), %eax
	jne	.LBB9_5
# %bb.3:
	movb	prefix_list+16(%rip), %al
	cmpb	16(%rdi), %al
	jne	.LBB9_5
# %bb.4:
	movb	261(%rbx), %al
	andb	$5, %al
	cmpb	$5, %al
	je	.LBB9_28
.LBB9_5:
	movq	prefix_list+64(%rip), %rbx
	testq	%rbx, %rbx
	je	.LBB9_10
# %bb.6:
	movl	prefix_list+40(%rip), %eax
	cmpl	(%rdi), %eax
	jne	.LBB9_10
# %bb.7:
	movl	prefix_list+44(%rip), %eax
	cmpl	4(%rdi), %eax
	jne	.LBB9_10
# %bb.8:
	movb	prefix_list+56(%rip), %al
	cmpb	16(%rdi), %al
	jne	.LBB9_10
# %bb.9:
	movb	261(%rbx), %al
	andb	$5, %al
	cmpb	$5, %al
	je	.LBB9_28
.LBB9_10:
	movq	prefix_list+104(%rip), %rbx
	testq	%rbx, %rbx
	je	.LBB9_15
# %bb.11:
	movl	prefix_list+80(%rip), %eax
	cmpl	(%rdi), %eax
	jne	.LBB9_15
# %bb.12:
	movl	prefix_list+84(%rip), %eax
	cmpl	4(%rdi), %eax
	jne	.LBB9_15
# %bb.13:
	movb	prefix_list+96(%rip), %al
	cmpb	16(%rdi), %al
	jne	.LBB9_15
# %bb.14:
	movb	261(%rbx), %al
	andb	$5, %al
	cmpb	$5, %al
	je	.LBB9_28
.LBB9_15:
	movq	prefix_list+144(%rip), %rbx
	testq	%rbx, %rbx
	je	.LBB9_20
# %bb.16:
	movl	prefix_list+120(%rip), %eax
	cmpl	(%rdi), %eax
	jne	.LBB9_20
# %bb.17:
	movl	prefix_list+124(%rip), %eax
	cmpl	4(%rdi), %eax
	jne	.LBB9_20
# %bb.18:
	movb	prefix_list+136(%rip), %al
	cmpb	16(%rdi), %al
	jne	.LBB9_20
# %bb.19:
	movb	261(%rbx), %al
	andb	$5, %al
	cmpb	$5, %al
	je	.LBB9_28
.LBB9_20:
	movq	prefix_list+184(%rip), %rbx
	testq	%rbx, %rbx
	je	.LBB9_25
# %bb.21:
	movl	prefix_list+160(%rip), %eax
	cmpl	(%rdi), %eax
	jne	.LBB9_25
# %bb.22:
	movl	prefix_list+164(%rip), %eax
	cmpl	4(%rdi), %eax
	jne	.LBB9_25
# %bb.23:
	movb	prefix_list+176(%rip), %al
	cmpb	16(%rdi), %al
	jne	.LBB9_25
# %bb.24:
	movb	261(%rbx), %al
	andb	$5, %al
	cmpb	$5, %al
	je	.LBB9_28
.LBB9_25:
	xorl	%ebx, %ebx
	xorl	%edi, %edi
	callq	nd6_select_router
	testb	%al, %al
	js	.LBB9_28
# %bb.26:
	movsbq	%al, %rax
	shlq	$4, %rax
	movq	default_router_list(%rax), %rax
	testq	%rax, %rax
	je	.LBB9_29
# %bb.27:
	movq	24(%rax), %rbx
.LBB9_28:
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.LBB9_29:
	movl	$.L.str.3, %edi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$.L.str.1, %edi
	movl	$.L.str.2, %esi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$3, %edi
	callq	ukplat_terminate
.Lfunc_end9:
	.size	nd6_find_route, .Lfunc_end9-nd6_find_route
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function nd6_select_router
	.type	nd6_select_router,@function
nd6_select_router:                      # @nd6_select_router
# %bb.0:
	movq	default_router_list(%rip), %rax
	movb	$-1, %cl
	testq	%rax, %rax
	je	.LBB10_9
# %bb.1:
	movq	24(%rax), %rdx
	testq	%rdx, %rdx
	je	.LBB10_9
# %bb.2:
	testq	%rdi, %rdi
	je	.LBB10_4
# %bb.3:
	cmpq	%rdi, %rdx
	jne	.LBB10_9
	jmp	.LBB10_5
.LBB10_4:
	movb	261(%rdx), %dl
	andb	$5, %dl
	cmpb	$5, %dl
	jne	.LBB10_9
.LBB10_5:
	movb	48(%rax), %al
	cmpb	$1, %al
	je	.LBB10_9
# %bb.6:
	cmpb	$2, %al
	jne	.LBB10_8
# %bb.7:
	xorl	%eax, %eax
.LBB10_26:
	movl	$42, __A_VARIABLE(%rip)
                                        # kill: def $al killed $al killed $rax
	retq
.LBB10_8:
	xorl	%ecx, %ecx
.LBB10_9:
	movq	default_router_list+16(%rip), %rax
	testq	%rax, %rax
	je	.LBB10_17
# %bb.10:
	movq	24(%rax), %rdx
	testq	%rdx, %rdx
	je	.LBB10_17
# %bb.11:
	testq	%rdi, %rdi
	je	.LBB10_13
# %bb.12:
	cmpq	%rdi, %rdx
	jne	.LBB10_17
	jmp	.LBB10_14
.LBB10_13:
	movb	261(%rdx), %dl
	andb	$5, %dl
	cmpb	$5, %dl
	jne	.LBB10_17
.LBB10_14:
	movb	48(%rax), %dl
	cmpb	$1, %dl
	je	.LBB10_17
# %bb.15:
	movb	$1, %al
	cmpb	$2, %dl
	je	.LBB10_26
# %bb.16:
	testb	%cl, %cl
	movzbl	%cl, %eax
	movl	$1, %ecx
	cmovnsl	%eax, %ecx
.LBB10_17:
	movq	default_router_list+32(%rip), %rax
	testq	%rax, %rax
	je	.LBB10_25
# %bb.18:
	movq	24(%rax), %rdx
	testq	%rdx, %rdx
	je	.LBB10_25
# %bb.19:
	testq	%rdi, %rdi
	je	.LBB10_21
# %bb.20:
	cmpq	%rdi, %rdx
	jne	.LBB10_25
	jmp	.LBB10_22
.LBB10_21:
	movb	261(%rdx), %dl
	andb	$5, %dl
	cmpb	$5, %dl
	jne	.LBB10_25
.LBB10_22:
	movb	48(%rax), %al
	cmpb	$1, %al
	je	.LBB10_25
# %bb.23:
	cmpb	$2, %al
	je	.LBB10_26
# %bb.24:
	testb	%cl, %cl
	movzbl	%cl, %ecx
	movl	$2, %eax
	cmovnsl	%ecx, %eax
	movl	$42, __A_VARIABLE(%rip)
                                        # kill: def $al killed $al killed $rax
	retq
.LBB10_25:
	movl	%ecx, %eax
	testb	%cl, %cl
	jns	.LBB10_26
# %bb.27:
	movb	nd6_select_router.last_router(%rip), %al
	testq	%rdi, %rdi
	jne	.LBB10_29
# %bb.28:
	addb	$1, %al
	xorl	%ecx, %ecx
	cmpb	$2, %al
	movzbl	%al, %eax
	cmovgl	%ecx, %eax
	movb	%al, nd6_select_router.last_router(%rip)
.LBB10_29:
	movsbq	%al, %rcx
	shlq	$4, %rcx
	movq	default_router_list(%rcx), %rcx
	testq	%rcx, %rcx
	je	.LBB10_34
# %bb.30:
	movq	24(%rcx), %rcx
	testq	%rcx, %rcx
	je	.LBB10_34
# %bb.31:
	testq	%rdi, %rdi
	je	.LBB10_33
# %bb.32:
	cmpq	%rdi, %rcx
	jne	.LBB10_34
	jmp	.LBB10_26
.LBB10_33:
	movb	261(%rcx), %cl
	andb	$5, %cl
	cmpb	$5, %cl
	je	.LBB10_26
.LBB10_34:
	addb	$1, %al
	xorl	%ecx, %ecx
	cmpb	$2, %al
	movzbl	%al, %eax
	cmovgl	%ecx, %eax
	movsbq	%al, %rdx
	shlq	$4, %rdx
	movq	default_router_list(%rdx), %rdx
	testq	%rdx, %rdx
	je	.LBB10_39
# %bb.35:
	movq	24(%rdx), %rdx
	testq	%rdx, %rdx
	je	.LBB10_39
# %bb.36:
	testq	%rdi, %rdi
	je	.LBB10_38
# %bb.37:
	cmpq	%rdi, %rdx
	jne	.LBB10_39
	jmp	.LBB10_26
.LBB10_38:
	movb	261(%rdx), %dl
	andb	$5, %dl
	cmpb	$5, %dl
	je	.LBB10_26
.LBB10_39:
	addl	$1, %eax
	cmpb	$2, %al
	movzbl	%al, %eax
	cmovgl	%ecx, %eax
	movsbq	%al, %rcx
	shlq	$4, %rcx
	movq	default_router_list(%rcx), %rcx
	testq	%rcx, %rcx
	je	.LBB10_44
# %bb.40:
	movq	24(%rcx), %rcx
	testq	%rcx, %rcx
	je	.LBB10_44
# %bb.41:
	testq	%rdi, %rdi
	je	.LBB10_43
# %bb.42:
	cmpq	%rdi, %rcx
	jne	.LBB10_44
	jmp	.LBB10_26
.LBB10_43:
	movb	261(%rcx), %cl
	andb	$5, %cl
	cmpb	$5, %cl
	je	.LBB10_26
.LBB10_44:
	movb	$-1, %al
	movl	$42, __A_VARIABLE(%rip)
                                        # kill: def $al killed $al killed $rax
	retq
.Lfunc_end10:
	.size	nd6_select_router, .Lfunc_end10-nd6_select_router
                                        # -- End function
	.globl	nd6_get_next_hop_addr_or_queue # -- Begin function nd6_get_next_hop_addr_or_queue
	.p2align	4, 0x90
	.type	nd6_get_next_hop_addr_or_queue,@function
nd6_get_next_hop_addr_or_queue:         # @nd6_get_next_hop_addr_or_queue
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$24, %rsp
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	movq	%rsi, -48(%rbp)         # 8-byte Spill
	movq	%rdi, %r12
	movl	(%rdx), %edi
	movzbl	nd6_cached_destination_index(%rip), %ebx
	leaq	(%rbx,%rbx,2), %rcx
	shlq	$4, %rcx
	cmpl	destination_cache(%rcx), %edi
	jne	.LBB11_6
# %bb.1:
	movl	4(%rdx), %esi
	cmpl	destination_cache+4(%rcx), %esi
	jne	.LBB11_6
# %bb.2:
	movl	8(%rdx), %esi
	cmpl	destination_cache+8(%rcx), %esi
	jne	.LBB11_6
# %bb.3:
	movl	12(%rdx), %esi
	cmpl	destination_cache+12(%rcx), %esi
	jne	.LBB11_6
# %bb.4:
	movb	16(%rdx), %al
	cmpb	destination_cache+16(%rcx), %al
	jne	.LBB11_6
# %bb.5:
	addw	$1, lwip_stats+308(%rip)
	jmp	.LBB11_85
.LBB11_6:
	movl	$destination_cache+16, %ecx
	xorl	%ebx, %ebx
	jmp	.LBB11_7
	.p2align	4, 0x90
.LBB11_12:                              #   in Loop: Header=BB11_7 Depth=1
	addq	$1, %rbx
	addq	$48, %rcx
	cmpq	$10, %rbx
	jae	.LBB11_13
.LBB11_7:                               # =>This Inner Loop Header: Depth=1
	cmpl	-16(%rcx), %edi
	jne	.LBB11_12
# %bb.8:                                #   in Loop: Header=BB11_7 Depth=1
	movl	4(%rdx), %eax
	cmpl	-12(%rcx), %eax
	jne	.LBB11_12
# %bb.9:                                #   in Loop: Header=BB11_7 Depth=1
	movl	8(%rdx), %eax
	cmpl	-8(%rcx), %eax
	jne	.LBB11_12
# %bb.10:                               #   in Loop: Header=BB11_7 Depth=1
	movl	12(%rdx), %eax
	cmpl	-4(%rcx), %eax
	jne	.LBB11_12
# %bb.11:                               #   in Loop: Header=BB11_7 Depth=1
	movzbl	16(%rdx), %eax
	cmpb	(%rcx), %al
	jne	.LBB11_12
# %bb.15:
	movl	$42, __A_VARIABLE(%rip)
	cmpw	$127, %bx
	jae	.LBB11_129
# %bb.16:
	movb	%bl, nd6_cached_destination_index(%rip)
	jmp	.LBB11_85
.LBB11_13:
	movl	$42, __A_VARIABLE(%rip)
	movl	destination_cache+4(%rip), %eax
	orl	destination_cache(%rip), %eax
	orl	destination_cache+8(%rip), %eax
	orl	destination_cache+12(%rip), %eax
	je	.LBB11_14
# %bb.17:
	movl	destination_cache+52(%rip), %eax
	orl	destination_cache+48(%rip), %eax
	orl	destination_cache+56(%rip), %eax
	orl	destination_cache+60(%rip), %eax
	je	.LBB11_18
# %bb.19:
	movl	destination_cache+100(%rip), %eax
	orl	destination_cache+96(%rip), %eax
	orl	destination_cache+104(%rip), %eax
	orl	destination_cache+108(%rip), %eax
	je	.LBB11_20
# %bb.21:
	movl	destination_cache+148(%rip), %eax
	orl	destination_cache+144(%rip), %eax
	orl	destination_cache+152(%rip), %eax
	orl	destination_cache+156(%rip), %eax
	je	.LBB11_22
# %bb.23:
	movl	destination_cache+196(%rip), %eax
	orl	destination_cache+192(%rip), %eax
	orl	destination_cache+200(%rip), %eax
	orl	destination_cache+204(%rip), %eax
	je	.LBB11_24
# %bb.25:
	movl	destination_cache+244(%rip), %eax
	orl	destination_cache+240(%rip), %eax
	orl	destination_cache+248(%rip), %eax
	orl	destination_cache+252(%rip), %eax
	je	.LBB11_26
# %bb.27:
	movl	destination_cache+292(%rip), %eax
	orl	destination_cache+288(%rip), %eax
	orl	destination_cache+296(%rip), %eax
	orl	destination_cache+300(%rip), %eax
	je	.LBB11_28
# %bb.29:
	movl	destination_cache+340(%rip), %eax
	orl	destination_cache+336(%rip), %eax
	orl	destination_cache+344(%rip), %eax
	orl	destination_cache+348(%rip), %eax
	je	.LBB11_30
# %bb.31:
	movl	destination_cache+388(%rip), %eax
	orl	destination_cache+384(%rip), %eax
	orl	destination_cache+392(%rip), %eax
	orl	destination_cache+396(%rip), %eax
	je	.LBB11_32
# %bb.33:
	movl	destination_cache+436(%rip), %eax
	orl	destination_cache+432(%rip), %eax
	orl	destination_cache+440(%rip), %eax
	orl	destination_cache+444(%rip), %eax
	je	.LBB11_34
# %bb.35:
	xorl	%eax, %eax
	cmpl	$0, destination_cache+44(%rip)
	sete	%al
	cmpl	$0, destination_cache+92(%rip)
	leal	(%rax,%rax,8), %eax
	movl	$1, %ecx
	cmovel	%eax, %ecx
	cmpl	$0, destination_cache+140(%rip)
	movl	$2, %eax
	cmovel	%ecx, %eax
	cmpl	$0, destination_cache+188(%rip)
	movl	$3, %ecx
	cmovel	%eax, %ecx
	cmpl	$0, destination_cache+236(%rip)
	movl	$4, %eax
	cmovel	%ecx, %eax
	cmpl	$0, destination_cache+284(%rip)
	movl	$5, %ecx
	cmovel	%eax, %ecx
	cmpl	$0, destination_cache+332(%rip)
	movl	$6, %eax
	cmovel	%ecx, %eax
	cmpl	$0, destination_cache+380(%rip)
	movl	$7, %ecx
	cmovel	%eax, %ecx
	cmpl	$0, destination_cache+428(%rip)
	movl	$8, %eax
	cmovel	%ecx, %eax
	cmpl	$0, destination_cache+476(%rip)
	movl	$9, %ecx
	cmovel	%eax, %ecx
	jmp	.LBB11_36
.LBB11_14:
	xorl	%ecx, %ecx
	jmp	.LBB11_36
.LBB11_18:
	movb	$1, %cl
	jmp	.LBB11_36
.LBB11_20:
	movb	$2, %cl
	jmp	.LBB11_36
.LBB11_22:
	movb	$3, %cl
	jmp	.LBB11_36
.LBB11_24:
	movb	$4, %cl
	jmp	.LBB11_36
.LBB11_26:
	movb	$5, %cl
	jmp	.LBB11_36
.LBB11_28:
	movb	$6, %cl
	jmp	.LBB11_36
.LBB11_30:
	movb	$7, %cl
	jmp	.LBB11_36
.LBB11_32:
	movb	$8, %cl
	jmp	.LBB11_36
.LBB11_34:
	movb	$9, %cl
.LBB11_36:
	movl	$42, __A_VARIABLE(%rip)
	movb	%cl, nd6_cached_destination_index(%rip)
	movzbl	%cl, %ebx
	leaq	(%rbx,%rbx,2), %r13
	shlq	$4, %r13
	leaq	destination_cache(%r13), %r14
	testq	%rdx, %rdx
	je	.LBB11_37
# %bb.38:
	movl	%edi, (%r14)
	movl	4(%rdx), %eax
	movq	%rbx, %rsi
	shlq	$4, %rsi
	leaq	(%rsi,%rsi,2), %r15
	addq	$destination_cache+4, %r15
	movl	%eax, destination_cache+4(%rsi,%rsi,2)
	movl	8(%rdx), %r8d
	movl	%r8d, destination_cache+8(%rsi,%rsi,2)
	movl	12(%rdx), %eax
	leaq	(%rsi,%rsi,2), %r10
	addq	$destination_cache+12, %r10
	movl	%eax, destination_cache+12(%rsi,%rsi,2)
	movb	16(%rdx), %sil
	jmp	.LBB11_39
.LBB11_37:
	movq	%rbx, %rax
	shlq	$4, %rax
	leaq	(%rax,%rax,2), %r15
	addq	$destination_cache+4, %r15
	leaq	(%rax,%rax,2), %r10
	addq	$destination_cache+12, %r10
	xorps	%xmm0, %xmm0
	movaps	%xmm0, (%r14)
	xorl	%r8d, %r8d
	xorl	%edi, %edi
	xorl	%esi, %esi
.LBB11_39:
	movb	%sil, destination_cache+16(%r13)
	movl	(%rdx), %ecx
	movl	%ecx, %eax
	andl	$49407, %eax            # imm = 0xC0FF
	cmpl	$33022, %eax            # imm = 0x80FE
	je	.LBB11_81
# %bb.40:
	cmpq	%r12, prefix_list+24(%rip)
	jne	.LBB11_45
# %bb.41:
	cmpl	$0, prefix_list+32(%rip)
	je	.LBB11_45
# %bb.42:
	cmpl	prefix_list(%rip), %ecx
	jne	.LBB11_45
# %bb.43:
	movl	4(%rdx), %eax
	cmpl	prefix_list+4(%rip), %eax
	jne	.LBB11_45
# %bb.44:
	movb	16(%rdx), %al
	cmpb	prefix_list+16(%rip), %al
	je	.LBB11_80
.LBB11_45:
	cmpq	%r12, prefix_list+64(%rip)
	jne	.LBB11_50
# %bb.46:
	cmpl	$0, prefix_list+72(%rip)
	je	.LBB11_50
# %bb.47:
	cmpl	prefix_list+40(%rip), %ecx
	jne	.LBB11_50
# %bb.48:
	movl	4(%rdx), %eax
	cmpl	prefix_list+44(%rip), %eax
	jne	.LBB11_50
# %bb.49:
	movb	16(%rdx), %al
	cmpb	prefix_list+56(%rip), %al
	je	.LBB11_80
.LBB11_50:
	cmpq	%r12, prefix_list+104(%rip)
	jne	.LBB11_55
# %bb.51:
	cmpl	$0, prefix_list+112(%rip)
	je	.LBB11_55
# %bb.52:
	cmpl	prefix_list+80(%rip), %ecx
	jne	.LBB11_55
# %bb.53:
	movl	4(%rdx), %eax
	cmpl	prefix_list+84(%rip), %eax
	jne	.LBB11_55
# %bb.54:
	movb	16(%rdx), %al
	cmpb	prefix_list+96(%rip), %al
	je	.LBB11_80
.LBB11_55:
	cmpq	%r12, prefix_list+144(%rip)
	jne	.LBB11_60
# %bb.56:
	cmpl	$0, prefix_list+152(%rip)
	je	.LBB11_60
# %bb.57:
	cmpl	prefix_list+120(%rip), %ecx
	jne	.LBB11_60
# %bb.58:
	movl	4(%rdx), %eax
	cmpl	prefix_list+124(%rip), %eax
	jne	.LBB11_60
# %bb.59:
	movb	16(%rdx), %al
	cmpb	prefix_list+136(%rip), %al
	je	.LBB11_80
.LBB11_60:
	cmpq	%r12, prefix_list+184(%rip)
	jne	.LBB11_65
# %bb.61:
	cmpl	$0, prefix_list+192(%rip)
	je	.LBB11_65
# %bb.62:
	cmpl	prefix_list+160(%rip), %ecx
	jne	.LBB11_65
# %bb.63:
	movl	4(%rdx), %eax
	cmpl	prefix_list+164(%rip), %eax
	jne	.LBB11_65
# %bb.64:
	movb	16(%rdx), %al
	cmpb	prefix_list+176(%rip), %al
	jne	.LBB11_65
.LBB11_80:
	movl	$42, __A_VARIABLE(%rip)
.LBB11_81:
	movzwl	252(%r12), %eax
	movq	%rbx, %rcx
	shlq	$4, %rcx
	movw	%ax, destination_cache+40(%rcx,%rcx,2)
	movl	%edi, destination_cache+20(%rcx,%rcx,2)
	movl	(%r15), %eax
	movl	%eax, destination_cache+24(%rcx,%rcx,2)
	movl	%r8d, destination_cache+28(%rcx,%rcx,2)
	movl	(%r10), %eax
	movl	%eax, destination_cache+32(%rcx,%rcx,2)
	movb	%sil, destination_cache+36(%rcx,%rcx,2)
.LBB11_85:
	movq	%rbx, %rsi
	shlq	$4, %rsi
	movl	destination_cache+20(%rsi,%rsi,2), %ecx
	movb	nd6_cached_neighbor_index(%rip), %al
	movzbl	%al, %edx
	imulq	$56, %rdx, %r9
	leaq	(%rsi,%rsi,2), %r10
	addq	$destination_cache+24, %r10
	cmpl	neighbor_cache(%r9), %ecx
	jne	.LBB11_91
# %bb.86:
	movl	(%r10), %edi
	cmpl	neighbor_cache+4(%r9), %edi
	jne	.LBB11_91
# %bb.87:
	leaq	(%rbx,%rbx,2), %r8
	shlq	$4, %r8
	movl	destination_cache+28(%r8), %edi
	cmpl	neighbor_cache+8(%r9), %edi
	jne	.LBB11_91
# %bb.88:
	movl	destination_cache+32(%r8), %edi
	cmpl	neighbor_cache+12(%r9), %edi
	jne	.LBB11_91
# %bb.89:
	movb	destination_cache+36(%r8), %dl
	cmpb	neighbor_cache+16(%r9), %dl
	jne	.LBB11_91
# %bb.90:
	addw	$1, lwip_stats+308(%rip)
	jmp	.LBB11_100
.LBB11_91:
	leaq	(%rsi,%rsi,2), %rsi
	addq	$destination_cache+36, %rsi
	movl	$neighbor_cache+16, %edi
	xorl	%eax, %eax
	jmp	.LBB11_92
	.p2align	4, 0x90
.LBB11_97:                              #   in Loop: Header=BB11_92 Depth=1
	addq	$1, %rax
	addq	$56, %rdi
	cmpq	$10, %rax
	jae	.LBB11_98
.LBB11_92:                              # =>This Inner Loop Header: Depth=1
	cmpl	-16(%rdi), %ecx
	jne	.LBB11_97
# %bb.93:                               #   in Loop: Header=BB11_92 Depth=1
	movl	(%r10), %edx
	cmpl	-12(%rdi), %edx
	jne	.LBB11_97
# %bb.94:                               #   in Loop: Header=BB11_92 Depth=1
	movl	-8(%rsi), %edx
	cmpl	-8(%rdi), %edx
	jne	.LBB11_97
# %bb.95:                               #   in Loop: Header=BB11_92 Depth=1
	movl	-4(%rsi), %edx
	cmpl	-4(%rdi), %edx
	jne	.LBB11_97
# %bb.96:                               #   in Loop: Header=BB11_92 Depth=1
	movzbl	(%rsi), %edx
	cmpb	(%rdi), %dl
	jne	.LBB11_97
# %bb.130:
	movl	$42, __A_VARIABLE(%rip)
	movb	%al, nd6_cached_neighbor_index(%rip)
	leaq	(%rbx,%rbx,2), %rcx
	shlq	$4, %rcx
	movl	$0, destination_cache+44(%rcx)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB11_101
.LBB11_98:
	movl	$42, __A_VARIABLE(%rip)
	callq	nd6_new_neighbor_cache_entry
	testb	%al, %al
	js	.LBB11_126
# %bb.99:
	movb	%al, nd6_cached_neighbor_index(%rip)
	movzbl	nd6_cached_destination_index(%rip), %ecx
	shlq	$4, %rcx
	movsbq	%al, %rax
	imulq	$56, %rax, %rax
	leaq	neighbor_cache(%rax), %rsi
	movups	destination_cache+20(%rcx,%rcx,2), %xmm0
	movups	%xmm0, neighbor_cache(%rax)
	movb	destination_cache+36(%rcx,%rcx,2), %cl
	movb	%cl, neighbor_cache+16(%rax)
	movq	%r12, neighbor_cache+24(%rax)
	movw	$1, neighbor_cache+48(%rax)
	movl	$1, neighbor_cache+52(%rax)
	movq	%r12, %rdi
	movl	$1, %edx
	callq	nd6_send_ns
	movl	$42, __A_VARIABLE(%rip)
	movzbl	nd6_cached_destination_index(%rip), %ebx
	movb	nd6_cached_neighbor_index(%rip), %al
.LBB11_100:
	leaq	(%rbx,%rbx,2), %rcx
	shlq	$4, %rcx
	movl	$0, destination_cache+44(%rcx)
	movl	$42, __A_VARIABLE(%rip)
	testb	%al, %al
	js	.LBB11_128
.LBB11_101:
	movsbq	%al, %rcx
	imulq	$56, %rcx, %rbx
	movb	neighbor_cache+48(%rbx), %cl
	leal	-4(%rcx), %edx
	cmpb	$2, %dl
	jb	.LBB11_105
# %bb.102:
	cmpb	$2, %cl
	je	.LBB11_105
# %bb.103:
	cmpb	$3, %cl
	jne	.LBB11_106
# %bb.104:
	leaq	neighbor_cache+48(%rbx), %rax
	movb	$4, (%rax)
	movl	$5, neighbor_cache+52(%rbx)
.LBB11_105:
	leaq	neighbor_cache+32(%rbx), %rax
	movq	-56(%rbp), %rcx         # 8-byte Reload
	movq	%rax, (%rcx)
	xorl	%eax, %eax
	jmp	.LBB11_128
.LBB11_65:
	testb	$16, 152(%r12)
	je	.LBB11_70
# %bb.66:
	cmpl	$0, 156(%r12)
	jne	.LBB11_70
# %bb.67:
	cmpl	80(%r12), %ecx
	jne	.LBB11_70
# %bb.68:
	movl	4(%rdx), %eax
	cmpl	84(%r12), %eax
	jne	.LBB11_70
# %bb.69:
	movb	16(%rdx), %al
	cmpb	96(%r12), %al
	je	.LBB11_80
.LBB11_70:
	testb	$16, 153(%r12)
	je	.LBB11_75
# %bb.71:
	cmpl	$0, 160(%r12)
	jne	.LBB11_75
# %bb.72:
	cmpl	104(%r12), %ecx
	jne	.LBB11_75
# %bb.73:
	movl	4(%rdx), %eax
	cmpl	108(%r12), %eax
	jne	.LBB11_75
# %bb.74:
	movb	16(%rdx), %al
	cmpb	120(%r12), %al
	je	.LBB11_80
.LBB11_75:
	testb	$16, 154(%r12)
	je	.LBB11_82
# %bb.76:
	cmpl	$0, 164(%r12)
	jne	.LBB11_82
# %bb.77:
	cmpl	128(%r12), %ecx
	jne	.LBB11_82
# %bb.78:
	movl	4(%rdx), %eax
	cmpl	132(%r12), %eax
	jne	.LBB11_82
# %bb.79:
	movb	16(%rdx), %al
	cmpb	144(%r12), %al
	je	.LBB11_80
.LBB11_82:
	movq	%r10, -64(%rbp)         # 8-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	movq	%r12, %rdi
	callq	nd6_select_router
	testb	%al, %al
	js	.LBB11_83
# %bb.84:
	movzwl	252(%r12), %ecx
	movq	%rbx, %rdx
	shlq	$4, %rdx
	movw	%cx, destination_cache+40(%rdx,%rdx,2)
	movsbq	%al, %rax
	shlq	$4, %rax
	movq	default_router_list(%rax), %rax
	movl	(%rax), %ecx
	movl	%ecx, destination_cache+20(%rdx,%rdx,2)
	movl	4(%rax), %ecx
	movl	%ecx, destination_cache+24(%rdx,%rdx,2)
	movl	8(%rax), %ecx
	movl	%ecx, destination_cache+28(%rdx,%rdx,2)
	movl	12(%rax), %ecx
	movl	%ecx, destination_cache+32(%rdx,%rdx,2)
	movb	16(%rax), %al
	movb	%al, destination_cache+36(%rdx,%rdx,2)
	jmp	.LBB11_85
.LBB11_83:
	leaq	destination_cache+16(%r13), %rax
	movl	$0, (%r14)
	movl	$0, (%r15)
	movl	$0, destination_cache+8(%r13)
	movq	-64(%rbp), %rcx         # 8-byte Reload
	movl	$0, (%rcx)
	movb	$0, (%rax)
	movb	$-4, %al
	jmp	.LBB11_127
.LBB11_106:
	movq	-56(%rbp), %rcx         # 8-byte Reload
	movq	$0, (%rcx)
	cmpb	$9, %al
	movb	$-16, %al
	ja	.LBB11_127
# %bb.107:
	movq	-48(%rbp), %r14         # 8-byte Reload
	testq	%r14, %r14
	je	.LBB11_131
# %bb.108:
	movq	%r14, %rax
	.p2align	4, 0x90
.LBB11_109:                             # =>This Inner Loop Header: Depth=1
	testb	$64, 20(%rax)
	jne	.LBB11_112
# %bb.110:                              #   in Loop: Header=BB11_109 Depth=1
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.LBB11_109
# %bb.111:
	movq	%r14, %rdi
	callq	pbuf_ref
	jmp	.LBB11_117
.LBB11_131:
	xorl	%edi, %edi
	callq	pbuf_ref
	jmp	.LBB11_126
.LBB11_112:
	movl	$14, %edi
	movl	$640, %esi              # imm = 0x280
	movq	%r14, %rdx
	callq	pbuf_clone
	movq	%rax, %r14
	testq	%rax, %rax
	jne	.LBB11_117
# %bb.113:
	leaq	neighbor_cache+40(%rbx), %r15
.LBB11_114:                             # =>This Inner Loop Header: Depth=1
	movq	(%r15), %rdi
	testq	%rdi, %rdi
	je	.LBB11_126
# %bb.115:                              #   in Loop: Header=BB11_114 Depth=1
	movq	(%rdi), %rax
	movq	%rax, (%r15)
	movq	$0, (%rdi)
	callq	nd6_free_q
	movl	$14, %edi
	movl	$640, %esi              # imm = 0x280
	movq	-48(%rbp), %rdx         # 8-byte Reload
	callq	pbuf_clone
	testq	%rax, %rax
	je	.LBB11_114
# %bb.116:
	movq	%rax, %r14
.LBB11_117:
	movl	$12, %edi
	callq	memp_malloc
	testq	%rax, %rax
	jne	.LBB11_120
# %bb.118:
	movq	neighbor_cache+40(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB11_120
# %bb.119:
	leaq	neighbor_cache+40(%rbx), %rax
	movq	(%rdi), %rcx
	movq	%rcx, (%rax)
	movq	$0, (%rdi)
	callq	nd6_free_q
	movl	$12, %edi
	callq	memp_malloc
.LBB11_120:
	testq	%rax, %rax
	je	.LBB11_125
# %bb.121:
	movq	$0, (%rax)
	movq	%r14, 8(%rax)
	movq	neighbor_cache+40(%rbx), %rcx
	testq	%rcx, %rcx
	je	.LBB11_124
	.p2align	4, 0x90
.LBB11_122:                             # =>This Inner Loop Header: Depth=1
	movq	%rcx, %rdx
	movq	(%rcx), %rcx
	testq	%rcx, %rcx
	jne	.LBB11_122
# %bb.123:
	movq	%rax, (%rdx)
	xorl	%eax, %eax
	jmp	.LBB11_127
.LBB11_125:
	movq	%r14, %rdi
	callq	pbuf_free
.LBB11_126:
	movb	$-1, %al
.LBB11_127:
	movl	$42, __A_VARIABLE(%rip)
.LBB11_128:
	movl	$42, __A_VARIABLE(%rip)
                                        # kill: def $al killed $al killed $rax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB11_124:
	leaq	neighbor_cache+40(%rbx), %rcx
	movq	%rax, (%rcx)
	xorl	%eax, %eax
	jmp	.LBB11_127
.LBB11_129:
	movl	$.L.str.9, %edi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$.L.str.1, %edi
	movl	$.L.str.2, %esi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$3, %edi
	callq	ukplat_terminate
.Lfunc_end11:
	.size	nd6_get_next_hop_addr_or_queue, .Lfunc_end11-nd6_get_next_hop_addr_or_queue
                                        # -- End function
	.globl	nd6_get_destination_mtu # -- Begin function nd6_get_destination_mtu
	.p2align	4, 0x90
	.type	nd6_get_destination_mtu,@function
nd6_get_destination_mtu:                # @nd6_get_destination_mtu
# %bb.0:
	movl	(%rdi), %r8d
	movl	$destination_cache, %eax
	xorl	%edx, %edx
	jmp	.LBB12_1
	.p2align	4, 0x90
.LBB12_6:                               #   in Loop: Header=BB12_1 Depth=1
	addq	$1, %rdx
	addq	$48, %rax
	cmpq	$10, %rdx
	jae	.LBB12_7
.LBB12_1:                               # =>This Inner Loop Header: Depth=1
	cmpl	(%rax), %r8d
	jne	.LBB12_6
# %bb.2:                                #   in Loop: Header=BB12_1 Depth=1
	movl	4(%rdi), %ecx
	cmpl	4(%rax), %ecx
	jne	.LBB12_6
# %bb.3:                                #   in Loop: Header=BB12_1 Depth=1
	movl	8(%rdi), %ecx
	cmpl	8(%rax), %ecx
	jne	.LBB12_6
# %bb.4:                                #   in Loop: Header=BB12_1 Depth=1
	movl	12(%rdi), %ecx
	cmpl	12(%rax), %ecx
	jne	.LBB12_6
# %bb.5:                                #   in Loop: Header=BB12_1 Depth=1
	movzbl	16(%rdi), %ecx
	cmpb	16(%rax), %cl
	jne	.LBB12_6
# %bb.8:
	movl	$42, __A_VARIABLE(%rip)
	movzwl	40(%rax), %eax
	testw	%ax, %ax
	je	.LBB12_9
# %bb.12:
	movl	$42, __A_VARIABLE(%rip)
	retq
.LBB12_7:
	movl	$42, __A_VARIABLE(%rip)
.LBB12_9:
	testq	%rsi, %rsi
	je	.LBB12_10
# %bb.11:
	movzwl	252(%rsi), %eax
	movl	$42, __A_VARIABLE(%rip)
	retq
.LBB12_10:
	movw	$1280, %ax              # imm = 0x500
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end12:
	.size	nd6_get_destination_mtu, .Lfunc_end12-nd6_get_destination_mtu
                                        # -- End function
	.globl	nd6_reachability_hint   # -- Begin function nd6_reachability_hint
	.p2align	4, 0x90
	.type	nd6_reachability_hint,@function
nd6_reachability_hint:                  # @nd6_reachability_hint
# %bb.0:
	movl	(%rdi), %r9d
	movzbl	nd6_cached_destination_index(%rip), %eax
	leaq	(%rax,%rax,2), %r8
	shlq	$4, %r8
	cmpl	destination_cache(%r8), %r9d
	jne	.LBB13_6
# %bb.1:
	movl	4(%rdi), %esi
	cmpl	destination_cache+4(%r8), %esi
	jne	.LBB13_6
# %bb.2:
	movl	8(%rdi), %esi
	cmpl	destination_cache+8(%r8), %esi
	jne	.LBB13_6
# %bb.3:
	movl	12(%rdi), %esi
	cmpl	destination_cache+12(%r8), %esi
	jne	.LBB13_6
# %bb.4:
	movb	16(%rdi), %dl
	cmpb	destination_cache+16(%r8), %dl
	jne	.LBB13_6
# %bb.5:
	addw	$1, lwip_stats+308(%rip)
	jmp	.LBB13_15
.LBB13_6:
	movl	$destination_cache+16, %edx
	xorl	%eax, %eax
	jmp	.LBB13_7
	.p2align	4, 0x90
.LBB13_12:                              #   in Loop: Header=BB13_7 Depth=1
	addq	$1, %rax
	addq	$48, %rdx
	cmpq	$10, %rax
	jae	.LBB13_13
.LBB13_7:                               # =>This Inner Loop Header: Depth=1
	cmpl	-16(%rdx), %r9d
	jne	.LBB13_12
# %bb.8:                                #   in Loop: Header=BB13_7 Depth=1
	movl	4(%rdi), %esi
	cmpl	-12(%rdx), %esi
	jne	.LBB13_12
# %bb.9:                                #   in Loop: Header=BB13_7 Depth=1
	movl	8(%rdi), %esi
	cmpl	-8(%rdx), %esi
	jne	.LBB13_12
# %bb.10:                               #   in Loop: Header=BB13_7 Depth=1
	movl	12(%rdi), %esi
	cmpl	-4(%rdx), %esi
	jne	.LBB13_12
# %bb.11:                               #   in Loop: Header=BB13_7 Depth=1
	movzbl	16(%rdi), %ecx
	cmpb	(%rdx), %cl
	jne	.LBB13_12
# %bb.14:
	movl	$42, __A_VARIABLE(%rip)
	testw	%ax, %ax
	js	.LBB13_33
.LBB13_15:
	movswq	%ax, %r8
	movq	%r8, %rsi
	shlq	$4, %rsi
	movl	destination_cache+20(%rsi,%rsi,2), %ecx
	movb	nd6_cached_neighbor_index(%rip), %al
	movzbl	%al, %edx
	imulq	$56, %rdx, %r9
	leaq	(%rsi,%rsi,2), %r10
	addq	$destination_cache+24, %r10
	cmpl	neighbor_cache(%r9), %ecx
	jne	.LBB13_21
# %bb.16:
	movl	(%r10), %edi
	cmpl	neighbor_cache+4(%r9), %edi
	jne	.LBB13_21
# %bb.17:
	leaq	(%r8,%r8,2), %r8
	shlq	$4, %r8
	movl	destination_cache+28(%r8), %edi
	cmpl	neighbor_cache+8(%r9), %edi
	jne	.LBB13_21
# %bb.18:
	movl	destination_cache+32(%r8), %edi
	cmpl	neighbor_cache+12(%r9), %edi
	jne	.LBB13_21
# %bb.19:
	movb	destination_cache+36(%r8), %dl
	cmpb	neighbor_cache+16(%r9), %dl
	jne	.LBB13_21
# %bb.20:
	addw	$1, lwip_stats+308(%rip)
	jmp	.LBB13_30
.LBB13_13:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	retq
.LBB13_21:
	leaq	(%rsi,%rsi,2), %rsi
	addq	$destination_cache+36, %rsi
	movl	$neighbor_cache+16, %edi
	xorl	%eax, %eax
	jmp	.LBB13_22
	.p2align	4, 0x90
.LBB13_27:                              #   in Loop: Header=BB13_22 Depth=1
	addq	$1, %rax
	addq	$56, %rdi
	cmpq	$10, %rax
	jae	.LBB13_28
.LBB13_22:                              # =>This Inner Loop Header: Depth=1
	cmpl	-16(%rdi), %ecx
	jne	.LBB13_27
# %bb.23:                               #   in Loop: Header=BB13_22 Depth=1
	movl	(%r10), %edx
	cmpl	-12(%rdi), %edx
	jne	.LBB13_27
# %bb.24:                               #   in Loop: Header=BB13_22 Depth=1
	movl	-8(%rsi), %edx
	cmpl	-8(%rdi), %edx
	jne	.LBB13_27
# %bb.25:                               #   in Loop: Header=BB13_22 Depth=1
	movl	-4(%rsi), %edx
	cmpl	-4(%rdi), %edx
	jne	.LBB13_27
# %bb.26:                               #   in Loop: Header=BB13_22 Depth=1
	movzbl	(%rsi), %edx
	cmpb	(%rdi), %dl
	jne	.LBB13_27
	jmp	.LBB13_29
.LBB13_28:
	movb	$-1, %al
.LBB13_29:
	movl	$42, __A_VARIABLE(%rip)
.LBB13_30:
	testb	%al, %al
	js	.LBB13_33
# %bb.31:
	movsbq	%al, %rax
	imulq	$56, %rax, %rax
	cmpb	$2, neighbor_cache+48(%rax)
	jb	.LBB13_33
# %bb.32:
	leaq	neighbor_cache+48(%rax), %rcx
	movb	$2, (%rcx)
	movl	reachable_time(%rip), %ecx
	movl	%ecx, neighbor_cache+52(%rax)
.LBB13_33:
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end13:
	.size	nd6_reachability_hint, .Lfunc_end13-nd6_reachability_hint
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4               # -- Begin function nd6_cleanup_netif
.LCPI14_0:
	.zero	16
	.text
	.globl	nd6_cleanup_netif
	.p2align	4, 0x90
	.type	nd6_cleanup_netif,@function
nd6_cleanup_netif:                      # @nd6_cleanup_netif
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movq	%rdi, %r14
	cmpq	%rdi, prefix_list+24(%rip)
	je	.LBB14_1
# %bb.2:
	cmpq	%r14, prefix_list+64(%rip)
	je	.LBB14_3
.LBB14_4:
	cmpq	%r14, prefix_list+104(%rip)
	je	.LBB14_5
.LBB14_6:
	cmpq	%r14, prefix_list+144(%rip)
	je	.LBB14_7
.LBB14_8:
	cmpq	%r14, prefix_list+184(%rip)
	je	.LBB14_22
.LBB14_9:
	xorl	%ebx, %ebx
	jmp	.LBB14_10
	.p2align	4, 0x90
.LBB14_18:                              #   in Loop: Header=BB14_10 Depth=1
	movw	$0, neighbor_cache+48(%rbx)
	movq	$0, neighbor_cache+24(%rbx)
	movl	$0, neighbor_cache+52(%rbx)
	xorps	%xmm0, %xmm0
	movups	%xmm0, neighbor_cache(%rbx)
	movb	$0, neighbor_cache+16(%rbx)
	movl	$42, __A_VARIABLE(%rip)
.LBB14_19:                              #   in Loop: Header=BB14_10 Depth=1
	addq	$56, %rbx
	cmpq	$560, %rbx              # imm = 0x230
	je	.LBB14_20
.LBB14_10:                              # =>This Inner Loop Header: Depth=1
	cmpq	%r14, neighbor_cache+24(%rbx)
	jne	.LBB14_19
# %bb.11:                               #   in Loop: Header=BB14_10 Depth=1
	leaq	neighbor_cache(%rbx), %rax
	cmpq	default_router_list(%rip), %rax
	je	.LBB14_12
# %bb.13:                               #   in Loop: Header=BB14_10 Depth=1
	cmpq	default_router_list+16(%rip), %rax
	je	.LBB14_14
.LBB14_15:                              #   in Loop: Header=BB14_10 Depth=1
	cmpq	default_router_list+32(%rip), %rax
	je	.LBB14_21
.LBB14_16:                              #   in Loop: Header=BB14_10 Depth=1
	movb	$0, neighbor_cache+49(%rbx)
	movq	neighbor_cache+40(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB14_18
# %bb.17:                               #   in Loop: Header=BB14_10 Depth=1
	callq	nd6_free_q
	movq	$0, neighbor_cache+40(%rbx)
	jmp	.LBB14_18
.LBB14_12:                              #   in Loop: Header=BB14_10 Depth=1
	movq	$0, default_router_list(%rip)
	movb	$0, default_router_list+12(%rip)
	cmpq	default_router_list+16(%rip), %rax
	jne	.LBB14_15
.LBB14_14:                              #   in Loop: Header=BB14_10 Depth=1
	movq	$0, default_router_list+16(%rip)
	movb	$0, default_router_list+28(%rip)
	cmpq	default_router_list+32(%rip), %rax
	jne	.LBB14_16
.LBB14_21:                              #   in Loop: Header=BB14_10 Depth=1
	movq	$0, default_router_list+32(%rip)
	movb	$0, default_router_list+44(%rip)
	jmp	.LBB14_16
.LBB14_20:
	xorps	%xmm0, %xmm0
	movaps	%xmm0, destination_cache(%rip)
	movb	$0, destination_cache+16(%rip)
	movaps	%xmm0, destination_cache+48(%rip)
	movb	$0, destination_cache+64(%rip)
	movaps	%xmm0, destination_cache+96(%rip)
	movb	$0, destination_cache+112(%rip)
	movaps	%xmm0, destination_cache+144(%rip)
	movb	$0, destination_cache+160(%rip)
	movaps	%xmm0, destination_cache+192(%rip)
	movb	$0, destination_cache+208(%rip)
	movaps	%xmm0, destination_cache+240(%rip)
	movb	$0, destination_cache+256(%rip)
	movaps	%xmm0, destination_cache+288(%rip)
	movb	$0, destination_cache+304(%rip)
	movaps	%xmm0, destination_cache+336(%rip)
	movb	$0, destination_cache+352(%rip)
	movaps	%xmm0, destination_cache+384(%rip)
	movb	$0, destination_cache+400(%rip)
	movaps	%xmm0, destination_cache+432(%rip)
	movb	$0, destination_cache+448(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.LBB14_1:
	movq	$0, prefix_list+24(%rip)
	cmpq	%r14, prefix_list+64(%rip)
	jne	.LBB14_4
.LBB14_3:
	movq	$0, prefix_list+64(%rip)
	cmpq	%r14, prefix_list+104(%rip)
	jne	.LBB14_6
.LBB14_5:
	movq	$0, prefix_list+104(%rip)
	cmpq	%r14, prefix_list+144(%rip)
	jne	.LBB14_8
.LBB14_7:
	movq	$0, prefix_list+144(%rip)
	cmpq	%r14, prefix_list+184(%rip)
	jne	.LBB14_9
.LBB14_22:
	movq	$0, prefix_list+184(%rip)
	jmp	.LBB14_9
.Lfunc_end14:
	.size	nd6_cleanup_netif, .Lfunc_end14-nd6_cleanup_netif
                                        # -- End function
	.globl	nd6_adjust_mld_membership # -- Begin function nd6_adjust_mld_membership
	.p2align	4, 0x90
	.type	nd6_adjust_mld_membership,@function
nd6_adjust_mld_membership:              # @nd6_adjust_mld_membership
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movslq	%esi, %r8
	movb	152(%rdi,%r8), %cl
	xorl	%esi, %esi
	movl	%ecx, %eax
	orb	$64, %al
	cmpb	$64, %al
	je	.LBB15_2
# %bb.1:
	xorl	%esi, %esi
	cmpb	$8, %cl
	setne	%sil
.LBB15_2:
	movl	%edx, %eax
	orb	$64, %al
	cmpb	$64, %al
	jne	.LBB15_4
# %bb.3:
	xorl	%edx, %edx
	jmp	.LBB15_5
.LBB15_4:
	cmpb	$8, %dl
	setne	%dl
.LBB15_5:
	movzbl	%dl, %eax
	cmpl	%eax, %esi
	je	.LBB15_9
# %bb.6:
	movq	$767, multicast_address(%rip) # imm = 0x2FF
	movl	$16777216, multicast_address+8(%rip) # imm = 0x1000000
	leaq	(%r8,%r8,2), %rax
	movl	$255, %ecx
	orl	92(%rdi,%rax,8), %ecx
	movl	%ecx, multicast_address+12(%rip)
	movb	264(%rdi), %al
	addb	$1, %al
	movb	%al, multicast_address+16(%rip)
	movl	$multicast_address, %esi
	testb	%dl, %dl
	je	.LBB15_8
# %bb.7:
	callq	mld6_joingroup_netif
	jmp	.LBB15_9
.LBB15_8:
	callq	mld6_leavegroup_netif
.LBB15_9:
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end15:
	.size	nd6_adjust_mld_membership, .Lfunc_end15-nd6_adjust_mld_membership
                                        # -- End function
	.globl	nd6_restart_netif       # -- Begin function nd6_restart_netif
	.p2align	4, 0x90
	.type	nd6_restart_netif,@function
nd6_restart_netif:                      # @nd6_restart_netif
# %bb.0:
	movb	$3, 266(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end16:
	.size	nd6_restart_netif, .Lfunc_end16-nd6_restart_netif
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function nd6_free_q
	.type	nd6_free_q,@function
nd6_free_q:                             # @nd6_free_q
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	testq	%rdi, %rdi
	je	.LBB17_1
# %bb.3:
	movq	%rdi, %rbx
	movq	8(%rdi), %rdi
	testq	%rdi, %rdi
	je	.LBB17_4
	.p2align	4, 0x90
.LBB17_5:                               # =>This Inner Loop Header: Depth=1
	movq	%rbx, %r14
	movq	(%rbx), %rbx
	callq	pbuf_free
	movl	$12, %edi
	movq	%r14, %rsi
	callq	memp_free
	testq	%rbx, %rbx
	je	.LBB17_8
# %bb.6:                                #   in Loop: Header=BB17_5 Depth=1
	movq	8(%rbx), %rdi
	testq	%rdi, %rdi
	jne	.LBB17_5
# %bb.7:
	movl	$.L.str.8, %edi
.LBB17_2:
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$.L.str.1, %edi
	movl	$.L.str.2, %esi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$3, %edi
	callq	ukplat_terminate
.LBB17_8:
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.LBB17_1:
	movl	$.L.str.6, %edi
	jmp	.LBB17_2
.LBB17_4:
	movl	$.L.str.7, %edi
	jmp	.LBB17_2
.Lfunc_end17:
	.size	nd6_free_q, .Lfunc_end17-nd6_free_q
                                        # -- End function
	.type	reachable_time,@object  # @reachable_time
	.data
	.globl	reachable_time
	.p2align	2
reachable_time:
	.long	30000                   # 0x7530
	.size	reachable_time, 4

	.type	retrans_timer,@object   # @retrans_timer
	.globl	retrans_timer
	.p2align	2
retrans_timer:
	.long	1000                    # 0x3e8
	.size	retrans_timer, 4

	.type	neighbor_cache,@object  # @neighbor_cache
	.comm	neighbor_cache,560,16
	.type	default_router_list,@object # @default_router_list
	.comm	default_router_list,48,16
	.type	nd6_ra_buffer,@object   # @nd6_ra_buffer
	.local	nd6_ra_buffer
	.comm	nd6_ra_buffer,32,4
	.type	prefix_list,@object     # @prefix_list
	.comm	prefix_list,200,16
	.type	destination_cache,@object # @destination_cache
	.comm	destination_cache,480,16
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"bad valid lifetime"
	.size	.L.str, 19

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Assertion failure: %s\n"
	.size	.L.str.1, 23

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"!(1)"
	.size	.L.str.2, 5

	.type	nd6_tmr_rs_reduction,@object # @nd6_tmr_rs_reduction
	.local	nd6_tmr_rs_reduction
	.comm	nd6_tmr_rs_reduction,1,1
	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"selected router must have a neighbor entry"
	.size	.L.str.3, 43

	.type	nd6_cached_destination_index,@object # @nd6_cached_destination_index
	.local	nd6_cached_destination_index
	.comm	nd6_cached_destination_index,1,1
	.type	nd6_cached_neighbor_index,@object # @nd6_cached_neighbor_index
	.local	nd6_cached_neighbor_index
	.comm	nd6_cached_neighbor_index,1,1
	.type	multicast_address,@object # @multicast_address
	.local	multicast_address
	.comm	multicast_address,20,16
	.type	uk_pr_crit.__str,@object # @uk_pr_crit.__str
	.section	.data_shared,"aw",@progbits
uk_pr_crit.__str:
	.asciz	"liblwip"
	.size	uk_pr_crit.__str, 8

	.type	uk_pr_crit.__str.4,@object # @uk_pr_crit.__str.4
uk_pr_crit.__str.4:
	.asciz	"nd6.c"
	.size	uk_pr_crit.__str.4, 6

	.type	.L.str.5,@object        # @.str.5
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.5:
	.asciz	"target address is required"
	.size	.L.str.5, 27

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"q != NULL"
	.size	.L.str.6, 10

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"q->p != NULL"
	.size	.L.str.7, 13

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"r->p != NULL"
	.size	.L.str.8, 13

	.type	nd6_select_router.last_router,@object # @nd6_select_router.last_router
	.local	nd6_select_router.last_router
	.comm	nd6_select_router.last_router,1,1
	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"type overflow"
	.size	.L.str.9, 14

	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
