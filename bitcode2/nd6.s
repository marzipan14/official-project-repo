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
	subq	$88, %rsp
	movq	%rsi, %r14
	movq	%rdi, %r15
	addw	$1, lwip_stats+288(%rip)
	movq	8(%rdi), %r13
	movb	(%r13), %al
	movl	$42, __A_VARIABLE(%rip)
	leal	122(%rax), %ecx
	cmpb	$3, %cl
	ja	.LBB0_4
# %bb.1:
	movzbl	%cl, %eax
	jmpq	*.LJTI0_0(,%rax,8)
.LBB0_2:
	cmpw	$15, 18(%r15)
	movl	$42, __A_VARIABLE(%rip)
	ja	.LBB0_30
# %bb.3:
	movq	%r15, %rdi
	callq	pbuf_free
	addw	$1, lwip_stats+296(%rip)
	jmp	.LBB0_34
.LBB0_4:
	cmpb	$2, %al
	jne	.LBB0_27
# %bb.5:
	cmpw	$47, 18(%r15)
	movl	$42, __A_VARIABLE(%rip)
	jbe	.LBB0_26
# %bb.6:
	movl	32(%r13), %eax
	movl	36(%r13), %ecx
	movl	40(%r13), %edx
	movl	44(%r13), %r8d
	movl	%eax, %esi
	andl	$49407, %esi            # imm = 0xC0FF
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$33022, %esi            # imm = 0x80FE
	je	.LBB0_9
# %bb.7:
	movl	%eax, %esi
	andl	$36863, %esi            # imm = 0x8FFF
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$511, %rsi              # imm = 0x1FF
	je	.LBB0_9
# %bb.8:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$767, %esi              # imm = 0x2FF
	jne	.LBB0_67
.LBB0_9:
	movb	264(%r14), %dil
	addb	$1, %dil
	movl	$42, __A_VARIABLE(%rip)
.LBB0_10:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$destination_cache, %ebx
	xorl	%esi, %esi
	jmp	.LBB0_12
	.p2align	4, 0x90
.LBB0_11:                               #   in Loop: Header=BB0_12 Depth=1
	addq	$1, %rsi
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$48, %rbx
	cmpq	$10, %rsi
	jae	.LBB0_208
.LBB0_12:                               # =>This Inner Loop Header: Depth=1
	cmpl	(%rbx), %eax
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_11
# %bb.13:                               #   in Loop: Header=BB0_12 Depth=1
	cmpl	4(%rbx), %ecx
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_11
# %bb.14:                               #   in Loop: Header=BB0_12 Depth=1
	cmpl	8(%rbx), %edx
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_11
# %bb.15:                               #   in Loop: Header=BB0_12 Depth=1
	cmpl	12(%rbx), %r8d
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_11
# %bb.16:                               #   in Loop: Header=BB0_12 Depth=1
	cmpb	16(%rbx), %dil
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_11
# %bb.17:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testw	%si, %si
	js	.LBB0_209
# %bb.18:
	movl	4(%r13), %edi
	callq	lwip_htonl
	cmpl	$65535, %eax            # imm = 0xFFFF
	movl	$65535, %ecx            # imm = 0xFFFF
	cmovbl	%eax, %ecx
	movw	%cx, 40(%rbx)
	jmp	.LBB0_213
.LBB0_19:
	movzwl	18(%r15), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$23, %rax
	jbe	.LBB0_26
# %bb.20:
	movdqu	8(%r13), %xmm1
	movdqa	%xmm1, -128(%rbp)
	movb	$0, -112(%rbp)
	movd	%xmm1, %r12d
	movl	%r12d, %ecx
	andl	$49407, %ecx            # imm = 0xC0FF
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$33022, %ecx            # imm = 0x80FE
	jne	.LBB0_38
# %bb.21:
	movb	264(%r14), %bl
	addb	$1, %bl
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_39
.LBB0_22:
	movzwl	18(%r15), %edi
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$23, %rdi
	jbe	.LBB0_26
# %bb.23:
	movl	8(%r13), %eax
	movl	12(%r13), %ecx
	movl	16(%r13), %edx
	movl	20(%r13), %r8d
	movl	%eax, %esi
	andl	$49407, %esi            # imm = 0xC0FF
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$33022, %esi            # imm = 0x80FE
	jne	.LBB0_45
# %bb.24:
	movb	264(%r14), %sil
	addb	$1, %sil
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_46
.LBB0_25:
	movzwl	18(%r15), %ebx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$39, %rbx
	ja	.LBB0_36
.LBB0_26:
	movq	%r15, %rdi
	callq	pbuf_free
	addw	$1, lwip_stats+296(%rip)
	jmp	.LBB0_64
.LBB0_27:
	addw	$1, lwip_stats+302(%rip)
	addw	$1, lwip_stats+292(%rip)
.LBB0_28:
	movl	$42, __A_VARIABLE(%rip)
.LBB0_29:
	movq	%r15, %rdi
	callq	pbuf_free
	jmp	.LBB0_66
.LBB0_30:
	movl	$49407, %eax            # imm = 0xC0FF
	andl	ip_data+36(%rip), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$33022, %eax            # imm = 0x80FE
	jne	.LBB0_33
# %bb.31:
	movq	ip_data+24(%rip), %rax
	cmpb	$-1, 7(%rax)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_33
# %bb.32:
	cmpb	$0, 1(%r13)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB0_68
.LBB0_33:
	movq	%r15, %rdi
	callq	pbuf_free
	addw	$1, lwip_stats+302(%rip)
.LBB0_34:
	movl	$lwip_stats+292, %eax
.LBB0_35:
	addw	$1, (%rax)
	jmp	.LBB0_65
.LBB0_36:
	movl	24(%r13), %eax
	movl	28(%r13), %ecx
	movl	32(%r13), %edx
	movl	36(%r13), %r8d
	movl	%eax, %esi
	andl	$49407, %esi            # imm = 0xC0FF
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$33022, %esi            # imm = 0x80FE
	jne	.LBB0_58
# %bb.37:
	movb	264(%r14), %dil
	addb	$1, %dil
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_59
.LBB0_38:
	xorl	%ebx, %ebx
.LBB0_39:
	movb	%bl, -112(%rbp)
	movq	ip_data+24(%rip), %rcx
	cmpb	$-1, 7(%rcx)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_63
# %bb.40:
	cmpb	$0, 1(%r13)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_63
# %bb.41:
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$-1, %r12b
	je	.LBB0_63
# %bb.42:
	movl	$42, __A_VARIABLE(%rip)
	cmpw	$26, %ax
	jb	.LBB0_44
# %bb.43:
	movzbl	25(%r13), %ecx
	leaq	24(,%rcx,8), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rax, %rcx
	jbe	.LBB0_159
.LBB0_44:
	movl	$42, __A_VARIABLE(%rip)
	xorl	%r13d, %r13d
	jmp	.LBB0_160
.LBB0_45:
	xorl	%esi, %esi
.LBB0_46:
	movq	ip_data+24(%rip), %rbx
	cmpb	$-1, 7(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_63
# %bb.47:
	cmpb	$0, 1(%r13)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_63
# %bb.48:
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$-1, %al
	je	.LBB0_63
# %bb.49:
	cmpb	$-1, ip_data+60(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_70
# %bb.50:
	movb	152(%r14), %bl
	movl	$42, __A_VARIABLE(%rip)
	testb	%bl, %bl
	je	.LBB0_133
# %bb.51:
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$64, %bl
	je	.LBB0_133
# %bb.52:
	cmpl	80(%r14), %eax
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_133
# %bb.53:
	cmpl	84(%r14), %ecx
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_133
# %bb.54:
	cmpl	88(%r14), %edx
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_133
# %bb.55:
	cmpl	92(%r14), %r8d
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_133
# %bb.56:
	cmpb	96(%r14), %sil
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_133
# %bb.57:
	xorl	%ebx, %ebx
	jmp	.LBB0_147
.LBB0_58:
	xorl	%edi, %edi
.LBB0_59:
	movl	$49407, %esi            # imm = 0xC0FF
	andl	ip_data+36(%rip), %esi
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$33022, %esi            # imm = 0x80FE
	jne	.LBB0_63
# %bb.60:
	movq	ip_data+24(%rip), %rsi
	cmpb	$-1, 7(%rsi)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_63
# %bb.61:
	cmpb	$0, 1(%r13)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_63
# %bb.62:
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$-1, %al
	jne	.LBB0_85
.LBB0_63:
	movq	%r15, %rdi
	callq	pbuf_free
	addw	$1, lwip_stats+302(%rip)
.LBB0_64:
	addw	$1, lwip_stats+292(%rip)
.LBB0_65:
	movl	$42, __A_VARIABLE(%rip)
.LBB0_66:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$88, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB0_67:
	xorl	%edi, %edi
	jmp	.LBB0_10
.LBB0_68:
	cmpb	$3, 266(%r14)
	movl	$42, __A_VARIABLE(%rip)
	jae	.LBB0_88
# %bb.69:
	xorl	%eax, %eax
	jmp	.LBB0_89
.LBB0_70:                               # %.preheader
	movl	$neighbor_cache+48, %ebx
	xorl	%r12d, %r12d
	jmp	.LBB0_72
.LBB0_71:                               #   in Loop: Header=BB0_72 Depth=1
	addq	$1, %r12
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$56, %rbx
	cmpq	$10, %r12
	jae	.LBB0_208
.LBB0_72:                               # =>This Inner Loop Header: Depth=1
	cmpl	-48(%rbx), %eax
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_71
# %bb.73:                               #   in Loop: Header=BB0_72 Depth=1
	cmpl	-44(%rbx), %ecx
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_71
# %bb.74:                               #   in Loop: Header=BB0_72 Depth=1
	cmpl	-40(%rbx), %edx
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_71
# %bb.75:                               #   in Loop: Header=BB0_72 Depth=1
	cmpl	-36(%rbx), %r8d
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_71
# %bb.76:                               #   in Loop: Header=BB0_72 Depth=1
	cmpb	-32(%rbx), %sil
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_71
# %bb.77:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testb	%r12b, %r12b
	js	.LBB0_209
# %bb.78:
	testb	$32, 4(%r13)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_80
# %bb.79:
	cmpb	$1, (%rbx)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_83
.LBB0_80:
	movl	$42, __A_VARIABLE(%rip)
	cmpw	$25, %di
	jbe	.LBB0_26
# %bb.81:
	movzbl	25(%r13), %eax
	leaq	24(,%rax,8), %rax
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rdi, %rax
	ja	.LBB0_26
# %bb.82:
	movq	%rbx, %rdi
	addq	$-16, %rdi
	addq	$26, %r13
	movzbl	260(%r14), %edx
	movq	%r13, %rsi
	callq	memcpy
	movl	$42, __A_VARIABLE(%rip)
.LBB0_83:
	imulq	$56, %r12, %rax
	movq	%r14, neighbor_cache+24(%rax)
	movb	$2, (%rbx)
	movl	reachable_time(%rip), %ecx
	movl	%ecx, neighbor_cache+52(%rax)
	cmpq	$0, neighbor_cache+40(%rax)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB0_213
# %bb.84:
	movsbl	%r12b, %edi
	callq	nd6_send_q
	jmp	.LBB0_212
.LBB0_85:
	movl	$42, __A_VARIABLE(%rip)
	cmpw	$42, %bx
	jb	.LBB0_87
# %bb.86:
	movzbl	41(%r13), %esi
	leaq	40(,%rsi,8), %rsi
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rbx, %rsi
	jbe	.LBB0_197
.LBB0_87:
	movl	$42, __A_VARIABLE(%rip)
	xorl	%r12d, %r12d
	jmp	.LBB0_198
.LBB0_88:
	movq	%r14, %rdi
	callq	nd6_send_rs
	testb	%al, %al
	setne	%al
	movl	$42, __A_VARIABLE(%rip)
.LBB0_89:
	movb	%al, 266(%r14)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	ip_data+36(%rip), %eax
	movl	ip_data+40(%rip), %ecx
	movl	ip_data+44(%rip), %edx
	movl	ip_data+48(%rip), %esi
	movb	ip_data+52(%rip), %r8b
	movq	default_router_list(%rip), %rdi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB0_97
# %bb.90:
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r14, 24(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_97
# %bb.91:
	cmpl	(%rdi), %eax
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_97
# %bb.92:
	cmpl	4(%rdi), %ecx
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_97
# %bb.93:
	cmpl	8(%rdi), %edx
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_97
# %bb.94:
	cmpl	12(%rdi), %esi
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_97
# %bb.95:
	cmpb	16(%rdi), %r8b
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB0_96
.LBB0_97:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	default_router_list+16(%rip), %rdi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB0_104
# %bb.98:
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r14, 24(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_104
# %bb.99:
	cmpl	(%rdi), %eax
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_104
# %bb.100:
	cmpl	4(%rdi), %ecx
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_104
# %bb.101:
	cmpl	8(%rdi), %edx
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_104
# %bb.102:
	cmpl	12(%rdi), %esi
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_104
# %bb.103:
	movb	$1, %bl
	cmpb	16(%rdi), %r8b
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB0_216
.LBB0_104:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	default_router_list+32(%rip), %rdi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB0_111
# %bb.105:
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r14, 24(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_111
# %bb.106:
	cmpl	(%rdi), %eax
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_111
# %bb.107:
	cmpl	4(%rdi), %ecx
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_111
# %bb.108:
	cmpl	8(%rdi), %edx
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_111
# %bb.109:
	cmpl	12(%rdi), %esi
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_111
# %bb.110:
	movb	$2, %bl
	cmpb	16(%rdi), %r8b
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB0_216
.LBB0_111:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$neighbor_cache, %r12d
	xorl	%ebx, %ebx
	jmp	.LBB0_113
.LBB0_112:                              #   in Loop: Header=BB0_113 Depth=1
	addq	$1, %rbx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$56, %r12
	cmpq	$10, %rbx
	jae	.LBB0_119
.LBB0_113:                              # =>This Inner Loop Header: Depth=1
	cmpl	(%r12), %eax
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_112
# %bb.114:                              #   in Loop: Header=BB0_113 Depth=1
	cmpl	4(%r12), %ecx
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_112
# %bb.115:                              #   in Loop: Header=BB0_113 Depth=1
	cmpl	8(%r12), %edx
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_112
# %bb.116:                              #   in Loop: Header=BB0_113 Depth=1
	cmpl	12(%r12), %esi
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_112
# %bb.117:                              #   in Loop: Header=BB0_113 Depth=1
	cmpb	16(%r12), %r8b
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_112
# %bb.118:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testb	%bl, %bl
	jns	.LBB0_122
	jmp	.LBB0_120
.LBB0_119:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB0_120:
	callq	nd6_new_neighbor_cache_entry
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testb	%al, %al
	js	.LBB0_132
# %bb.121:
	movl	ip_data+36(%rip), %ecx
	movl	$42, __A_VARIABLE(%rip)
	movsbq	%al, %rbx
	imulq	$56, %rbx, %rax
	leaq	neighbor_cache(%rax), %r12
	movl	%ecx, neighbor_cache(%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	ip_data+40(%rip), %ecx
	movl	$42, __A_VARIABLE(%rip)
	movl	%ecx, neighbor_cache+4(%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	ip_data+44(%rip), %ecx
	movl	$42, __A_VARIABLE(%rip)
	movl	%ecx, neighbor_cache+8(%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	ip_data+48(%rip), %ecx
	movl	$42, __A_VARIABLE(%rip)
	movl	%ecx, neighbor_cache+12(%rax)
	movl	$42, __A_VARIABLE(%rip)
	movb	ip_data+52(%rip), %cl
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	movq	default_router_list+32(%rip), %rdi
.LBB0_122:
	imulq	$56, %rbx, %rax
	movb	$1, neighbor_cache+49(%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r12, %rdi
	je	.LBB0_195
# %bb.123:
	movl	$42, __A_VARIABLE(%rip)
	movb	$3, %bl
	testq	%rdi, %rdi
	jne	.LBB0_125
# %bb.124:
	movl	$42, __A_VARIABLE(%rip)
	movb	$2, %bl
.LBB0_125:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	default_router_list+16(%rip), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r12, %rcx
	je	.LBB0_196
# %bb.126:
	movl	$42, __A_VARIABLE(%rip)
	testq	%rcx, %rcx
	jne	.LBB0_128
# %bb.127:
	movl	$42, __A_VARIABLE(%rip)
	movb	$1, %bl
.LBB0_128:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	default_router_list(%rip), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r12, %rcx
	je	.LBB0_96
# %bb.129:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rcx, %rcx
	je	.LBB0_214
# %bb.130:
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$3, %bl
	jl	.LBB0_215
# %bb.131:
	leaq	neighbor_cache+49(%rax), %rax
	movb	$0, (%rax)
	movl	$42, __A_VARIABLE(%rip)
.LBB0_132:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r15, %rdi
	callq	pbuf_free
	movl	$lwip_stats+298, %eax
	jmp	.LBB0_35
.LBB0_133:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movb	153(%r14), %bl
	movl	$42, __A_VARIABLE(%rip)
	testb	%bl, %bl
	je	.LBB0_140
# %bb.134:
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$64, %bl
	je	.LBB0_140
# %bb.135:
	cmpl	104(%r14), %eax
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_140
# %bb.136:
	cmpl	108(%r14), %ecx
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_140
# %bb.137:
	cmpl	112(%r14), %edx
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_140
# %bb.138:
	cmpl	116(%r14), %r8d
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_140
# %bb.139:
	movb	$1, %bl
	cmpb	120(%r14), %sil
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB0_147
.LBB0_140:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movb	154(%r14), %bl
	movl	$42, __A_VARIABLE(%rip)
	testb	%bl, %bl
	je	.LBB0_148
# %bb.141:
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$64, %bl
	je	.LBB0_148
# %bb.142:
	cmpl	128(%r14), %eax
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_148
# %bb.143:
	cmpl	132(%r14), %ecx
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_148
# %bb.144:
	cmpl	136(%r14), %edx
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_148
# %bb.145:
	cmpl	140(%r14), %r8d
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_148
# %bb.146:
	movb	$2, %bl
	cmpb	144(%r14), %sil
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_148
.LBB0_147:
	movzbl	%bl, %esi
	movq	%r14, %rdi
	callq	nd6_duplicate_addr_detected
	jmp	.LBB0_209
.LBB0_148:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpw	$26, %di
	jb	.LBB0_26
# %bb.149:
	movzbl	25(%r13), %ebx
	leaq	24(,%rbx,8), %rbx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rdi, %rbx
	ja	.LBB0_26
# %bb.150:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$neighbor_cache+32, %edi
	xorl	%ebx, %ebx
	jmp	.LBB0_152
.LBB0_151:                              #   in Loop: Header=BB0_152 Depth=1
	addq	$1, %rbx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$56, %rdi
	cmpq	$10, %rbx
	jae	.LBB0_210
.LBB0_152:                              # =>This Inner Loop Header: Depth=1
	cmpl	-32(%rdi), %eax
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_151
# %bb.153:                              #   in Loop: Header=BB0_152 Depth=1
	cmpl	-28(%rdi), %ecx
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_151
# %bb.154:                              #   in Loop: Header=BB0_152 Depth=1
	cmpl	-24(%rdi), %edx
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_151
# %bb.155:                              #   in Loop: Header=BB0_152 Depth=1
	cmpl	-20(%rdi), %r8d
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_151
# %bb.156:                              #   in Loop: Header=BB0_152 Depth=1
	cmpb	-16(%rdi), %sil
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_151
# %bb.157:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testb	$32, 4(%r13)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB0_213
# %bb.158:
	addq	$26, %r13
	movzbl	260(%r14), %edx
	movq	%r13, %rsi
	callq	memcpy
	jmp	.LBB0_212
.LBB0_159:
	addq	$24, %r13
.LBB0_160:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	ip_data+36(%rip), %eax
	movl	ip_data+40(%rip), %ecx
	movl	%ecx, %esi
	orl	%eax, %esi
	movl	ip_data+44(%rip), %r9d
	movl	ip_data+48(%rip), %r8d
	movl	%r9d, %edx
	orl	%r8d, %edx
	orl	%esi, %edx
	movzbl	152(%r14), %edi
	movl	$42, __A_VARIABLE(%rip)
	testb	$16, %dil
	jne	.LBB0_163
# %bb.161:
	movl	$42, __A_VARIABLE(%rip)
	testb	$8, %dil
	je	.LBB0_168
# %bb.162:
	testl	%edx, %edx
	jne	.LBB0_168
.LBB0_163:
	cmpl	80(%r14), %r12d
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_168
# %bb.164:
	pshufd	$229, %xmm1, %xmm0      # xmm0 = xmm1[1,1,2,3]
	movd	%xmm0, %esi
	cmpl	84(%r14), %esi
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_168
# %bb.165:
	pshufd	$78, %xmm1, %xmm0       # xmm0 = xmm1[2,3,0,1]
	movd	%xmm0, %esi
	cmpl	88(%r14), %esi
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_168
# %bb.166:
	pshufd	$231, %xmm1, %xmm0      # xmm0 = xmm1[3,1,2,3]
	movd	%xmm0, %esi
	cmpl	92(%r14), %esi
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_168
# %bb.167:
	cmpb	96(%r14), %bl
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB0_184
.LBB0_168:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzbl	153(%r14), %esi
	movl	$42, __A_VARIABLE(%rip)
	testb	$16, %sil
	jne	.LBB0_171
# %bb.169:
	movl	$42, __A_VARIABLE(%rip)
	testb	$8, %sil
	je	.LBB0_176
# %bb.170:
	testl	%edx, %edx
	jne	.LBB0_176
.LBB0_171:
	cmpl	104(%r14), %r12d
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_176
# %bb.172:
	pshufd	$229, %xmm1, %xmm0      # xmm0 = xmm1[1,1,2,3]
	movd	%xmm0, %esi
	cmpl	108(%r14), %esi
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_176
# %bb.173:
	pshufd	$78, %xmm1, %xmm0       # xmm0 = xmm1[2,3,0,1]
	movd	%xmm0, %esi
	cmpl	112(%r14), %esi
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_176
# %bb.174:
	pshufd	$231, %xmm1, %xmm0      # xmm0 = xmm1[3,1,2,3]
	movd	%xmm0, %esi
	cmpl	116(%r14), %esi
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_176
# %bb.175:
	cmpb	120(%r14), %bl
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB0_184
.LBB0_176:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzbl	154(%r14), %esi
	movl	$42, __A_VARIABLE(%rip)
	testb	$16, %sil
	jne	.LBB0_179
# %bb.177:
	movl	$42, __A_VARIABLE(%rip)
	testb	$8, %sil
	je	.LBB0_208
# %bb.178:
	testl	%edx, %edx
	jne	.LBB0_208
.LBB0_179:
	cmpl	128(%r14), %r12d
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_208
# %bb.180:
	pshufd	$229, %xmm1, %xmm0      # xmm0 = xmm1[1,1,2,3]
	movd	%xmm0, %esi
	cmpl	132(%r14), %esi
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_208
# %bb.181:
	pshufd	$78, %xmm1, %xmm0       # xmm0 = xmm1[2,3,0,1]
	movd	%xmm0, %esi
	cmpl	136(%r14), %esi
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_208
# %bb.182:
	pshufd	$231, %xmm1, %xmm0      # xmm0 = xmm1[3,1,2,3]
	movd	%xmm0, %esi
	cmpl	140(%r14), %esi
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_208
# %bb.183:
	cmpb	144(%r14), %bl
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_208
.LBB0_184:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%edx, %edx
	je	.LBB0_344
# %bb.185:
	movl	$42, __A_VARIABLE(%rip)
	testq	%r13, %r13
	je	.LBB0_63
# %bb.186:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$neighbor_cache+32, %edi
	movb	ip_data+52(%rip), %dl
	xorl	%ebx, %ebx
	jmp	.LBB0_188
.LBB0_187:                              #   in Loop: Header=BB0_188 Depth=1
	addq	$1, %rbx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$56, %rdi
	cmpq	$10, %rbx
	jae	.LBB0_368
.LBB0_188:                              # =>This Inner Loop Header: Depth=1
	cmpl	-32(%rdi), %eax
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_187
# %bb.189:                              #   in Loop: Header=BB0_188 Depth=1
	cmpl	-28(%rdi), %ecx
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_187
# %bb.190:                              #   in Loop: Header=BB0_188 Depth=1
	cmpl	-24(%rdi), %r9d
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_187
# %bb.191:                              #   in Loop: Header=BB0_188 Depth=1
	cmpl	-20(%rdi), %r8d
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_187
# %bb.192:                              #   in Loop: Header=BB0_188 Depth=1
	cmpb	-16(%rdi), %dl
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_187
# %bb.193:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$1, 16(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_371
# %bb.194:
	movq	%r14, -8(%rdi)
	addq	$2, %r13
	movzbl	260(%r14), %edx
	leaq	16(%rdi), %r12
	movq	%r13, %rsi
	callq	memcpy
	jmp	.LBB0_370
.LBB0_195:
	movb	$2, %bl
	jmp	.LBB0_216
.LBB0_196:
	movb	$1, %bl
	jmp	.LBB0_216
.LBB0_197:
	leaq	40(%r13), %r12
.LBB0_198:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$destination_cache, %ebx
	xorl	%esi, %esi
	jmp	.LBB0_200
.LBB0_199:                              #   in Loop: Header=BB0_200 Depth=1
	addq	$1, %rsi
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$48, %rbx
	cmpq	$10, %rsi
	jae	.LBB0_208
.LBB0_200:                              # =>This Inner Loop Header: Depth=1
	cmpl	(%rbx), %eax
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_199
# %bb.201:                              #   in Loop: Header=BB0_200 Depth=1
	cmpl	4(%rbx), %ecx
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_199
# %bb.202:                              #   in Loop: Header=BB0_200 Depth=1
	cmpl	8(%rbx), %edx
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_199
# %bb.203:                              #   in Loop: Header=BB0_200 Depth=1
	cmpl	12(%rbx), %r8d
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_199
# %bb.204:                              #   in Loop: Header=BB0_200 Depth=1
	cmpb	16(%rbx), %dil
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_199
# %bb.205:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testw	%si, %si
	js	.LBB0_209
# %bb.206:
	movdqu	8(%r13), %xmm0
	movdqa	%xmm0, -64(%rbp)        # 16-byte Spill
	movd	%xmm0, %eax
	movl	%eax, %ecx
	andl	$49407, %ecx            # imm = 0xC0FF
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$33022, %ecx            # imm = 0x80FE
	jne	.LBB0_373
# %bb.207:
	movb	264(%r14), %r13b
	addb	$1, %r13b
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_374
.LBB0_208:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB0_209:
	movq	%r15, %rdi
	callq	pbuf_free
	jmp	.LBB0_65
.LBB0_96:
	xorl	%ebx, %ebx
	jmp	.LBB0_216
.LBB0_214:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%ebx, %ebx
.LBB0_215:
	movzbl	%bl, %eax
	shlq	$4, %rax
	movq	%r12, default_router_list(%rax)
.LBB0_216:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	6(%r13), %edi
	callq	lwip_htons
	movzwl	%ax, %eax
	movzbl	%bl, %ebx
	shlq	$4, %rbx
	movl	%eax, default_router_list+8(%rbx)
	movl	12(%r13), %edi
	movl	$42, __A_VARIABLE(%rip)
	testl	%edi, %edi
	je	.LBB0_218
# %bb.217:
	callq	lwip_htonl
	movl	%eax, retrans_timer(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB0_218:
	movl	8(%r13), %edi
	movl	$42, __A_VARIABLE(%rip)
	testl	%edi, %edi
	je	.LBB0_220
# %bb.219:
	callq	lwip_htonl
	movl	%eax, reachable_time(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB0_220:
	movb	5(%r13), %al
	movb	%al, default_router_list+12(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	cmpw	$18, 16(%r15)
	movl	$42, __A_VARIABLE(%rip)
	jb	.LBB0_213
# %bb.221:
	leaq	default_router_list(%rbx), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	leaq	160(%r14), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	leaq	164(%r14), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	movw	$16, %bx
	movl	$16, %r12d
	jmp	.LBB0_225
.LBB0_344:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testb	%dil, %dil
	je	.LBB0_352
# %bb.345:
	cmpl	80(%r14), %r12d
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_352
# %bb.346:
	pshufd	$229, %xmm1, %xmm0      # xmm0 = xmm1[1,1,2,3]
	movd	%xmm0, %eax
	cmpl	84(%r14), %eax
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_352
# %bb.347:
	pshufd	$78, %xmm1, %xmm0       # xmm0 = xmm1[2,3,0,1]
	movd	%xmm0, %eax
	cmpl	88(%r14), %eax
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_352
# %bb.348:
	pshufd	$231, %xmm1, %xmm0      # xmm0 = xmm1[3,1,2,3]
	movd	%xmm0, %eax
	cmpl	92(%r14), %eax
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_352
# %bb.349:
	cmpb	96(%r14), %bl
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_352
# %bb.350:
	leaq	80(%r14), %rsi
	movq	%r14, %rdi
	movl	$34, %edx
	movdqa	%xmm1, -64(%rbp)        # 16-byte Spill
	callq	nd6_send_na
	movdqa	-64(%rbp), %xmm1        # 16-byte Reload
	testb	$8, 152(%r14)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB0_352
# %bb.351:
	movq	%r14, %rdi
	xorl	%esi, %esi
	callq	nd6_duplicate_addr_detected
	movdqa	-64(%rbp), %xmm1        # 16-byte Reload
	movl	$42, __A_VARIABLE(%rip)
.LBB0_352:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$0, 153(%r14)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB0_360
# %bb.353:
	cmpl	104(%r14), %r12d
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_360
# %bb.354:
	pshufd	$229, %xmm1, %xmm0      # xmm0 = xmm1[1,1,2,3]
	movd	%xmm0, %eax
	cmpl	108(%r14), %eax
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_360
# %bb.355:
	pshufd	$78, %xmm1, %xmm0       # xmm0 = xmm1[2,3,0,1]
	movd	%xmm0, %eax
	cmpl	112(%r14), %eax
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_360
# %bb.356:
	pshufd	$231, %xmm1, %xmm0      # xmm0 = xmm1[3,1,2,3]
	movd	%xmm0, %eax
	cmpl	116(%r14), %eax
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_360
# %bb.357:
	cmpb	120(%r14), %bl
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_360
# %bb.358:
	leaq	104(%r14), %rsi
	movq	%r14, %rdi
	movl	$34, %edx
	movdqa	%xmm1, -64(%rbp)        # 16-byte Spill
	callq	nd6_send_na
	movdqa	-64(%rbp), %xmm1        # 16-byte Reload
	testb	$8, 153(%r14)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB0_360
# %bb.359:
	movq	%r14, %rdi
	movl	$1, %esi
	callq	nd6_duplicate_addr_detected
	movdqa	-64(%rbp), %xmm1        # 16-byte Reload
	movl	$42, __A_VARIABLE(%rip)
.LBB0_360:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$0, 154(%r14)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB0_211
# %bb.361:
	cmpl	128(%r14), %r12d
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_211
# %bb.362:
	pshufd	$229, %xmm1, %xmm0      # xmm0 = xmm1[1,1,2,3]
	movd	%xmm0, %eax
	cmpl	132(%r14), %eax
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_211
# %bb.363:
	pshufd	$78, %xmm1, %xmm0       # xmm0 = xmm1[2,3,0,1]
	movd	%xmm0, %eax
	cmpl	136(%r14), %eax
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_211
# %bb.364:
	pshufd	$231, %xmm1, %xmm0      # xmm0 = xmm1[3,1,2,3]
	movd	%xmm0, %eax
	cmpl	140(%r14), %eax
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_211
# %bb.365:
	cmpb	144(%r14), %bl
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_211
# %bb.366:
	leaq	128(%r14), %rsi
	movq	%r14, %rdi
	movl	$34, %edx
	callq	nd6_send_na
	testb	$8, 154(%r14)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB0_211
# %bb.367:
	movq	%r14, %rdi
	movl	$2, %esi
	callq	nd6_duplicate_addr_detected
	jmp	.LBB0_210
.LBB0_368:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	callq	nd6_new_neighbor_cache_entry
	movl	$42, __A_VARIABLE(%rip)
	testb	%al, %al
	js	.LBB0_372
# %bb.369:
	movsbq	%al, %rbx
	imulq	$56, %rbx, %r12
	movq	%r14, neighbor_cache+24(%r12)
	leaq	neighbor_cache+32(%r12), %rdi
	addq	$2, %r13
	movzbl	260(%r14), %edx
	movq	%r13, %rsi
	callq	memcpy
	movdqu	ip_data+36(%rip), %xmm0
	movdqu	%xmm0, neighbor_cache(%r12)
	movb	ip_data+52(%rip), %al
	movb	%al, neighbor_cache+16(%r12)
	leaq	neighbor_cache+48(%r12), %r12
.LBB0_370:
	movb	$4, (%r12)
	imulq	$56, %rbx, %rax
	movl	$5, neighbor_cache+52(%rax)
	movl	$42, __A_VARIABLE(%rip)
.LBB0_371:
	leaq	-128(%rbp), %rsi
	movq	%r14, %rdi
	movl	$96, %edx
	callq	nd6_send_na
	jmp	.LBB0_212
.LBB0_372:
	movq	%r15, %rdi
	callq	pbuf_free
	addw	$1, lwip_stats+298(%rip)
	jmp	.LBB0_65
.LBB0_373:
	xorl	%r13d, %r13d
.LBB0_374:
	movdqa	-64(%rbp), %xmm0        # 16-byte Reload
	movdqu	%xmm0, 20(%rbx)
	movb	%r13b, 36(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	testq	%r12, %r12
	je	.LBB0_213
# %bb.375:
	cmpb	$2, (%r12)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_213
# %bb.376:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movdqa	-64(%rbp), %xmm1        # 16-byte Reload
	pshufd	$229, %xmm1, %xmm0      # xmm0 = xmm1[1,1,2,3]
	movd	%xmm0, %ecx
	pshufd	$78, %xmm1, %xmm0       # xmm0 = xmm1[2,3,0,1]
	movd	%xmm0, %esi
	pshufd	$231, %xmm1, %xmm0      # xmm0 = xmm1[3,1,2,3]
	movd	%xmm0, %edi
	movl	$neighbor_cache+32, %ebx
	xorl	%edx, %edx
	jmp	.LBB0_378
.LBB0_377:                              #   in Loop: Header=BB0_378 Depth=1
	addq	$1, %rdx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$56, %rbx
	cmpq	$10, %rdx
	jae	.LBB0_386
.LBB0_378:                              # =>This Inner Loop Header: Depth=1
	cmpl	-32(%rbx), %eax
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_377
# %bb.379:                              #   in Loop: Header=BB0_378 Depth=1
	cmpl	-28(%rbx), %ecx
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_377
# %bb.380:                              #   in Loop: Header=BB0_378 Depth=1
	cmpl	-24(%rbx), %esi
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_377
# %bb.381:                              #   in Loop: Header=BB0_378 Depth=1
	cmpl	-20(%rbx), %edi
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_377
# %bb.382:                              #   in Loop: Header=BB0_378 Depth=1
	cmpb	-16(%rbx), %r13b
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_377
# %bb.383:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testb	%dl, %dl
	js	.LBB0_387
# %bb.384:
	cmpb	$1, 16(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_213
# %bb.385:
	addq	$2, %r12
	movzbl	260(%r14), %edx
	movq	%rbx, %rdi
	movq	%r12, %rsi
	callq	memcpy
	movb	$4, 16(%rbx)
	movl	$5, 20(%rbx)
	jmp	.LBB0_212
.LBB0_386:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB0_387:
	callq	nd6_new_neighbor_cache_entry
	movl	$42, __A_VARIABLE(%rip)
	testb	%al, %al
	js	.LBB0_212
# %bb.388:
	movsbq	%al, %rax
	imulq	$56, %rax, %rbx
	movq	%r14, neighbor_cache+24(%rbx)
	leaq	neighbor_cache+32(%rbx), %rdi
	addq	$2, %r12
	movzbl	260(%r14), %edx
	movq	%r12, %rsi
	callq	memcpy
	movdqa	-64(%rbp), %xmm0        # 16-byte Reload
	movdqu	%xmm0, neighbor_cache(%rbx)
	movb	%r13b, neighbor_cache+16(%rbx)
	movb	$4, neighbor_cache+48(%rbx)
	movl	$5, neighbor_cache+52(%rbx)
.LBB0_210:
	movl	$42, __A_VARIABLE(%rip)
.LBB0_211:
	movl	$42, __A_VARIABLE(%rip)
.LBB0_212:
	movl	$42, __A_VARIABLE(%rip)
.LBB0_213:
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_28
.LBB0_334:                              #   in Loop: Header=BB0_225 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	%ebx, 168(%r14,%r12,4)
	movl	$42, __A_VARIABLE(%rip)
.LBB0_340:                              #   in Loop: Header=BB0_225 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB0_238:                              #   in Loop: Header=BB0_225 Depth=1
	movl	$42, __A_VARIABLE(%rip)
.LBB0_239:                              #   in Loop: Header=BB0_225 Depth=1
	movl	$42, __A_VARIABLE(%rip)
.LBB0_223:                              #   in Loop: Header=BB0_225 Depth=1
	movl	$42, __A_VARIABLE(%rip)
.LBB0_224:                              #   in Loop: Header=BB0_225 Depth=1
	movzwl	%r13w, %eax
	addl	-64(%rbp), %eax         # 4-byte Folded Reload
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	16(%r15), %ecx
	movzwl	%ax, %r12d
	subl	%r12d, %ecx
	movl	$42, __A_VARIABLE(%rip)
	movl	%eax, %ebx
	cmpl	$1, %ecx
	jle	.LBB0_213
.LBB0_225:                              # =>This Inner Loop Header: Depth=1
	movl	%ebx, %eax
	orl	$1, %eax
	movzwl	%ax, %esi
	movq	%r15, %rdi
	callq	pbuf_try_get_at
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jle	.LBB0_342
# %bb.226:                              #   in Loop: Header=BB0_225 Depth=1
	movzbl	%al, %eax
	leal	(,%rax,8), %r13d
	movzwl	16(%r15), %ecx
	movl	%ecx, %edx
	subl	%r12d, %edx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%r13d, %edx
	jl	.LBB0_342
# %bb.227:                              #   in Loop: Header=BB0_225 Depth=1
	movzwl	%bx, %r12d
	cmpw	%cx, 18(%r15)
	movl	$42, __A_VARIABLE(%rip)
	movl	%ebx, -64(%rbp)         # 4-byte Spill
	jne	.LBB0_229
# %bb.228:                              #   in Loop: Header=BB0_225 Depth=1
	addq	8(%r15), %r12
	movl	%r13d, %eax
	movq	%r12, %rbx
	jmp	.LBB0_232
.LBB0_229:                              #   in Loop: Header=BB0_225 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	%r13d, %ecx
	cmpw	$5, %ax
	jb	.LBB0_231
# %bb.230:                              #   in Loop: Header=BB0_225 Depth=1
	movq	%r15, %rdi
	movl	%r12d, %esi
	callq	pbuf_get_at
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	$32, %cx
	cmpb	$25, %al
	jne	.LBB0_343
.LBB0_231:                              #   in Loop: Header=BB0_225 Depth=1
	movzwl	%cx, %edx
	movl	$nd6_ra_buffer, %ebx
	movl	$nd6_ra_buffer, %esi
	movq	%r15, %rdi
	movl	%r12d, %ecx
	callq	pbuf_copy_partial
.LBB0_232:                              #   in Loop: Header=BB0_225 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movzbl	(%rbx), %ecx
	movl	$42, __A_VARIABLE(%rip)
	addb	$-1, %cl
	cmpb	$23, %cl
	ja	.LBB0_222
# %bb.233:                              #   in Loop: Header=BB0_225 Depth=1
	movzbl	%cl, %ecx
	jmpq	*.LJTI0_1(,%rcx,8)
.LBB0_234:                              #   in Loop: Header=BB0_225 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpw	$8, %ax
	jb	.LBB0_341
# %bb.235:                              #   in Loop: Header=BB0_225 Depth=1
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rdi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB0_239
# %bb.236:                              #   in Loop: Header=BB0_225 Depth=1
	cmpb	$1, 48(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_239
# %bb.237:                              #   in Loop: Header=BB0_225 Depth=1
	addq	$32, %rdi
	addq	$2, %rbx
	movzbl	260(%r14), %edx
	movq	%rbx, %rsi
	callq	memcpy
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movb	$2, 48(%rax)
	movl	reachable_time(%rip), %ecx
	movl	%ecx, 52(%rax)
	jmp	.LBB0_238
.LBB0_222:                              #   in Loop: Header=BB0_225 Depth=1
	addw	$1, lwip_stats+302(%rip)
	jmp	.LBB0_223
.LBB0_240:                              #   in Loop: Header=BB0_225 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpw	$32, %ax
	jb	.LBB0_341
# %bb.241:                              #   in Loop: Header=BB0_225 Depth=1
	movl	16(%rbx), %r12d
	movl	20(%rbx), %ecx
	movl	24(%rbx), %esi
	movl	28(%rbx), %edx
	movl	%r12d, %eax
	andl	$49407, %eax            # imm = 0xC0FF
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$33022, %eax            # imm = 0x80FE
	je	.LBB0_238
# %bb.242:                              #   in Loop: Header=BB0_225 Depth=1
	movl	%ecx, -44(%rbp)         # 4-byte Spill
	movzbl	3(%rbx), %eax
	movl	$42, __A_VARIABLE(%rip)
	testb	%al, %al
	jns	.LBB0_288
# %bb.243:                              #   in Loop: Header=BB0_225 Depth=1
	cmpb	$64, 2(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_288
# %bb.244:                              #   in Loop: Header=BB0_225 Depth=1
	movl	%esi, -68(%rbp)         # 4-byte Spill
	movl	%edx, -48(%rbp)         # 4-byte Spill
	movl	4(%rbx), %edi
	callq	lwip_htonl
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%r12d, prefix_list(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	-44(%rbp), %esi         # 4-byte Reload
	jne	.LBB0_248
# %bb.245:                              #   in Loop: Header=BB0_225 Depth=1
	cmpl	%esi, prefix_list+4(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_248
# %bb.246:                              #   in Loop: Header=BB0_225 Depth=1
	cmpb	$0, prefix_list+16(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_248
# %bb.247:                              #   in Loop: Header=BB0_225 Depth=1
	cmpq	%r14, prefix_list+24(%rip)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB0_320
.LBB0_248:                              #   in Loop: Header=BB0_225 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%r12d, prefix_list+40(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_252
# %bb.249:                              #   in Loop: Header=BB0_225 Depth=1
	cmpl	%esi, prefix_list+44(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_252
# %bb.250:                              #   in Loop: Header=BB0_225 Depth=1
	cmpb	$0, prefix_list+56(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_252
# %bb.251:                              #   in Loop: Header=BB0_225 Depth=1
	cmpq	%r14, prefix_list+64(%rip)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB0_321
.LBB0_252:                              #   in Loop: Header=BB0_225 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%r12d, prefix_list+80(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_256
# %bb.253:                              #   in Loop: Header=BB0_225 Depth=1
	cmpl	%esi, prefix_list+84(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_256
# %bb.254:                              #   in Loop: Header=BB0_225 Depth=1
	cmpb	$0, prefix_list+96(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_256
# %bb.255:                              #   in Loop: Header=BB0_225 Depth=1
	cmpq	%r14, prefix_list+104(%rip)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB0_322
.LBB0_256:                              #   in Loop: Header=BB0_225 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%r12d, prefix_list+120(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_260
# %bb.257:                              #   in Loop: Header=BB0_225 Depth=1
	cmpl	%esi, prefix_list+124(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_260
# %bb.258:                              #   in Loop: Header=BB0_225 Depth=1
	cmpb	$0, prefix_list+136(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_260
# %bb.259:                              #   in Loop: Header=BB0_225 Depth=1
	cmpq	%r14, prefix_list+144(%rip)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB0_323
.LBB0_260:                              #   in Loop: Header=BB0_225 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%r12d, prefix_list+160(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_264
# %bb.261:                              #   in Loop: Header=BB0_225 Depth=1
	cmpl	%esi, prefix_list+164(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_264
# %bb.262:                              #   in Loop: Header=BB0_225 Depth=1
	cmpb	$0, prefix_list+176(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_264
# %bb.263:                              #   in Loop: Header=BB0_225 Depth=1
	cmpq	%r14, prefix_list+184(%rip)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB0_324
.LBB0_264:                              #   in Loop: Header=BB0_225 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB0_287
# %bb.265:                              #   in Loop: Header=BB0_225 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$0, prefix_list+24(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$prefix_list+24, %edx
	je	.LBB0_281
# %bb.266:                              #   in Loop: Header=BB0_225 Depth=1
	movl	%r12d, %edi
	cmpl	$0, prefix_list+32(%rip)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB0_282
# %bb.267:                              #   in Loop: Header=BB0_225 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$0, prefix_list+64(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$prefix_list+64, %edx
	movl	$1, %ecx
	je	.LBB0_283
# %bb.268:                              #   in Loop: Header=BB0_225 Depth=1
	cmpl	$0, prefix_list+72(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	-44(%rbp), %esi         # 4-byte Reload
	movl	%edi, %r12d
	je	.LBB0_284
# %bb.269:                              #   in Loop: Header=BB0_225 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$0, prefix_list+104(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$prefix_list+104, %edx
	movl	$2, %ecx
	je	.LBB0_283
# %bb.270:                              #   in Loop: Header=BB0_225 Depth=1
	cmpl	$0, prefix_list+112(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	-44(%rbp), %esi         # 4-byte Reload
	movl	%edi, %r12d
	je	.LBB0_284
# %bb.271:                              #   in Loop: Header=BB0_225 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$0, prefix_list+144(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$prefix_list+144, %edx
	movl	$3, %ecx
	je	.LBB0_283
# %bb.272:                              #   in Loop: Header=BB0_225 Depth=1
	cmpl	$0, prefix_list+152(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	-44(%rbp), %esi         # 4-byte Reload
	movl	%edi, %r12d
	je	.LBB0_284
# %bb.273:                              #   in Loop: Header=BB0_225 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$0, prefix_list+184(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$prefix_list+184, %edx
	movl	$4, %ecx
	je	.LBB0_283
# %bb.274:                              #   in Loop: Header=BB0_225 Depth=1
	cmpl	$0, prefix_list+192(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	-44(%rbp), %esi         # 4-byte Reload
	movl	%edi, %r12d
	je	.LBB0_284
# %bb.275:                              #   in Loop: Header=BB0_225 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_286
.LBB0_276:                              #   in Loop: Header=BB0_225 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpw	$8, %ax
	jb	.LBB0_341
# %bb.277:                              #   in Loop: Header=BB0_225 Depth=1
	movl	4(%rbx), %edi
	callq	lwip_htonl
                                        # kill: def $eax killed $eax def $rax
	leal	-1280(%rax), %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$64255, %ecx            # imm = 0xFAFF
	ja	.LBB0_239
# %bb.278:                              #   in Loop: Header=BB0_225 Depth=1
	movzwl	250(%r14), %ecx
	movl	$42, __A_VARIABLE(%rip)
	testl	%ecx, %ecx
	je	.LBB0_280
# %bb.279:                              #   in Loop: Header=BB0_225 Depth=1
	movzwl	%ax, %eax
	cmpl	%ecx, %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmoval	%ecx, %eax
.LBB0_280:                              #   in Loop: Header=BB0_225 Depth=1
	movw	%ax, 252(%r14)
	jmp	.LBB0_238
.LBB0_281:                              #   in Loop: Header=BB0_225 Depth=1
	xorl	%ecx, %ecx
	jmp	.LBB0_284
.LBB0_282:                              #   in Loop: Header=BB0_225 Depth=1
	xorl	%ecx, %ecx
.LBB0_283:                              #   in Loop: Header=BB0_225 Depth=1
	movl	-44(%rbp), %esi         # 4-byte Reload
	movl	%edi, %r12d
.LBB0_284:                              #   in Loop: Header=BB0_225 Depth=1
	movq	%r14, (%rdx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	leaq	(,%rcx,8), %rdx
	movl	%r12d, prefix_list(%rdx,%rdx,4)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%esi, prefix_list+4(%rdx,%rdx,4)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	-68(%rbp), %esi         # 4-byte Reload
	movl	%esi, prefix_list+8(%rdx,%rdx,4)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	-48(%rbp), %esi         # 4-byte Reload
	movl	%esi, prefix_list+12(%rdx,%rdx,4)
	movb	$0, prefix_list+16(%rdx,%rdx,4)
.LBB0_285:                              #   in Loop: Header=BB0_225 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	leaq	(%rcx,%rcx,4), %rcx
	movl	%eax, prefix_list+32(,%rcx,8)
.LBB0_286:                              #   in Loop: Header=BB0_225 Depth=1
	movl	$42, __A_VARIABLE(%rip)
.LBB0_287:                              #   in Loop: Header=BB0_225 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movzbl	3(%rbx), %eax
.LBB0_288:                              #   in Loop: Header=BB0_225 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testb	$64, %al
	je	.LBB0_239
# %bb.289:                              #   in Loop: Header=BB0_225 Depth=1
	movl	%r12d, -48(%rbp)        # 4-byte Spill
	movl	4(%rbx), %edi
	callq	lwip_htonl
	movl	%eax, %r12d
	movl	8(%rbx), %edi
	callq	lwip_htonl
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%r12d, %eax
	ja	.LBB0_340
# %bb.290:                              #   in Loop: Header=BB0_225 Depth=1
	cmpb	$64, 2(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_340
# %bb.291:                              #   in Loop: Header=BB0_225 Depth=1
	movl	%eax, %esi
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzbl	153(%r14), %r8d
	movl	$42, __A_VARIABLE(%rip)
	testb	%r8b, %r8b
	je	.LBB0_296
# %bb.292:                              #   in Loop: Header=BB0_225 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	-88(%rbp), %rax         # 8-byte Reload
	movl	(%rax), %ecx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%ecx, %ecx
	je	.LBB0_296
# %bb.293:                              #   in Loop: Header=BB0_225 Depth=1
	movl	-48(%rbp), %eax         # 4-byte Reload
	cmpl	104(%r14), %eax
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_296
# %bb.294:                              #   in Loop: Header=BB0_225 Depth=1
	movl	-44(%rbp), %eax         # 4-byte Reload
	cmpl	108(%r14), %eax
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_296
# %bb.295:                              #   in Loop: Header=BB0_225 Depth=1
	cmpb	$0, 120(%r14)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB0_325
.LBB0_296:                              #   in Loop: Header=BB0_225 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzbl	154(%r14), %eax
	movl	$42, __A_VARIABLE(%rip)
	testb	%al, %al
	je	.LBB0_301
# %bb.297:                              #   in Loop: Header=BB0_225 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	-80(%rbp), %rcx         # 8-byte Reload
	movl	(%rcx), %ecx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%ecx, %ecx
	je	.LBB0_301
# %bb.298:                              #   in Loop: Header=BB0_225 Depth=1
	movl	-48(%rbp), %edx         # 4-byte Reload
	cmpl	128(%r14), %edx
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_301
# %bb.299:                              #   in Loop: Header=BB0_225 Depth=1
	movl	-44(%rbp), %edx         # 4-byte Reload
	cmpl	132(%r14), %edx
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_301
# %bb.300:                              #   in Loop: Header=BB0_225 Depth=1
	cmpb	$0, 144(%r14)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB0_326
.LBB0_301:                              #   in Loop: Header=BB0_225 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzbl	152(%r14), %ecx
	movzbl	265(%r14), %edx
	movl	$42, __A_VARIABLE(%rip)
	testl	%r12d, %r12d
	je	.LBB0_340
# %bb.302:                              #   in Loop: Header=BB0_225 Depth=1
	testb	%dl, %dl
	je	.LBB0_340
# %bb.303:                              #   in Loop: Header=BB0_225 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testb	%cl, %cl
	je	.LBB0_340
# %bb.304:                              #   in Loop: Header=BB0_225 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$64, %cl
	je	.LBB0_340
# %bb.305:                              #   in Loop: Header=BB0_225 Depth=1
	movl	88(%r14), %ecx
	movl	92(%r14), %edi
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testb	%r8b, %r8b
	je	.LBB0_312
# %bb.306:                              #   in Loop: Header=BB0_225 Depth=1
	movl	-48(%rbp), %edx         # 4-byte Reload
	cmpl	104(%r14), %edx
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_311
# %bb.307:                              #   in Loop: Header=BB0_225 Depth=1
	movl	-44(%rbp), %edx         # 4-byte Reload
	cmpl	108(%r14), %edx
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_311
# %bb.308:                              #   in Loop: Header=BB0_225 Depth=1
	cmpl	112(%r14), %ecx
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_311
# %bb.309:                              #   in Loop: Header=BB0_225 Depth=1
	cmpl	116(%r14), %edi
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_311
# %bb.310:                              #   in Loop: Header=BB0_225 Depth=1
	cmpb	$0, 120(%r14)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB0_340
.LBB0_311:                              #   in Loop: Header=BB0_225 Depth=1
	xorl	%edx, %edx
	jmp	.LBB0_313
.LBB0_312:                              #   in Loop: Header=BB0_225 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movb	$1, %dl
.LBB0_313:                              #   in Loop: Header=BB0_225 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testb	%al, %al
	je	.LBB0_336
# %bb.314:                              #   in Loop: Header=BB0_225 Depth=1
	movl	-48(%rbp), %eax         # 4-byte Reload
	cmpl	128(%r14), %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	%esi, %ebx
	jne	.LBB0_319
# %bb.315:                              #   in Loop: Header=BB0_225 Depth=1
	movl	-44(%rbp), %eax         # 4-byte Reload
	cmpl	132(%r14), %eax
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_319
# %bb.316:                              #   in Loop: Header=BB0_225 Depth=1
	cmpl	136(%r14), %ecx
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_319
# %bb.317:                              #   in Loop: Header=BB0_225 Depth=1
	cmpl	140(%r14), %edi
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_319
# %bb.318:                              #   in Loop: Header=BB0_225 Depth=1
	cmpb	$0, 144(%r14)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB0_340
.LBB0_319:                              #   in Loop: Header=BB0_225 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movb	$1, %al
	testb	%dl, %dl
	jne	.LBB0_339
	jmp	.LBB0_340
.LBB0_336:                              #   in Loop: Header=BB0_225 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movb	$1, %al
	testb	%dl, %dl
	jne	.LBB0_338
# %bb.337:                              #   in Loop: Header=BB0_225 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movb	$2, %al
.LBB0_338:                              #   in Loop: Header=BB0_225 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%esi, %ebx
.LBB0_339:                              #   in Loop: Header=BB0_225 Depth=1
	movzbl	%al, %esi
	leaq	(%rsi,%rsi,2), %rax
	movl	-48(%rbp), %edx         # 4-byte Reload
	movl	%edx, 80(%r14,%rax,8)
	movl	-44(%rbp), %edx         # 4-byte Reload
	movl	%edx, 84(%r14,%rax,8)
	movl	%ecx, 88(%r14,%rax,8)
	movl	%edi, 92(%r14,%rax,8)
	movb	$0, 96(%r14,%rax,8)
	movb	$6, 100(%r14,%rax,8)
	movl	$42, __A_VARIABLE(%rip)
	movl	%r12d, 156(%r14,%rsi,4)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%ebx, 168(%r14,%rsi,4)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %rdi
                                        # kill: def $esi killed $esi killed $rsi
	movl	$8, %edx
	callq	netif_ip6_addr_set_state
	jmp	.LBB0_340
.LBB0_320:                              #   in Loop: Header=BB0_225 Depth=1
	xorl	%ecx, %ecx
	jmp	.LBB0_285
.LBB0_321:                              #   in Loop: Header=BB0_225 Depth=1
	movl	$1, %ecx
	jmp	.LBB0_285
.LBB0_322:                              #   in Loop: Header=BB0_225 Depth=1
	movl	$2, %ecx
	jmp	.LBB0_285
.LBB0_323:                              #   in Loop: Header=BB0_225 Depth=1
	movl	$3, %ecx
	jmp	.LBB0_285
.LBB0_324:                              #   in Loop: Header=BB0_225 Depth=1
	movl	$4, %ecx
	jmp	.LBB0_285
.LBB0_325:                              #   in Loop: Header=BB0_225 Depth=1
	movl	%r12d, %edx
	movl	%esi, %ebx
	movl	$1, %r12d
	movb	$1, %sil
	movq	-88(%rbp), %rdi         # 8-byte Reload
	jmp	.LBB0_327
.LBB0_326:                              #   in Loop: Header=BB0_225 Depth=1
	movl	%r12d, %edx
	movl	%esi, %ebx
	movl	$2, %r12d
	movb	$2, %sil
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movl	%eax, %r8d
.LBB0_327:                              #   in Loop: Header=BB0_225 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$7200, %edx             # imm = 0x1C20
	ja	.LBB0_329
# %bb.328:                              #   in Loop: Header=BB0_225 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%ecx, %edx
	jbe	.LBB0_335
.LBB0_329:                              #   in Loop: Header=BB0_225 Depth=1
	movl	$42, __A_VARIABLE(%rip)
.LBB0_330:                              #   in Loop: Header=BB0_225 Depth=1
	movl	%edx, (%rdi)
	movl	$42, __A_VARIABLE(%rip)
.LBB0_331:                              #   in Loop: Header=BB0_225 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%ebx, %ebx
	je	.LBB0_334
# %bb.332:                              #   in Loop: Header=BB0_225 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$16, %r8b
	jne	.LBB0_334
# %bb.333:                              #   in Loop: Header=BB0_225 Depth=1
	movzbl	%sil, %esi
	movq	%r14, %rdi
	movl	$48, %edx
	callq	netif_ip6_addr_set_state
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_334
.LBB0_335:                              #   in Loop: Header=BB0_225 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$7200, %edx             # imm = 0x1C20
	cmpl	$7201, %ecx             # imm = 0x1C21
	jae	.LBB0_330
	jmp	.LBB0_331
.LBB0_341:
	movl	$42, __A_VARIABLE(%rip)
.LBB0_342:
	movl	$42, __A_VARIABLE(%rip)
.LBB0_343:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addw	$1, lwip_stats+296(%rip)
	addw	$1, lwip_stats+292(%rip)
	jmp	.LBB0_29
.Lfunc_end0:
	.size	nd6_input, .Lfunc_end0-nd6_input
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI0_0:
	.quad	.LBB0_2
	.quad	.LBB0_19
	.quad	.LBB0_22
	.quad	.LBB0_25
.LJTI0_1:
	.quad	.LBB0_234
	.quad	.LBB0_222
	.quad	.LBB0_240
	.quad	.LBB0_222
	.quad	.LBB0_276
	.quad	.LBB0_222
	.quad	.LBB0_222
	.quad	.LBB0_222
	.quad	.LBB0_222
	.quad	.LBB0_222
	.quad	.LBB0_222
	.quad	.LBB0_222
	.quad	.LBB0_222
	.quad	.LBB0_222
	.quad	.LBB0_222
	.quad	.LBB0_222
	.quad	.LBB0_222
	.quad	.LBB0_222
	.quad	.LBB0_222
	.quad	.LBB0_222
	.quad	.LBB0_222
	.quad	.LBB0_222
	.quad	.LBB0_222
	.quad	.LBB0_224
                                        # -- End function
	.text
	.p2align	4, 0x90         # -- Begin function nd6_duplicate_addr_detected
	.type	nd6_duplicate_addr_detected,@function
nd6_duplicate_addr_detected:            # @nd6_duplicate_addr_detected
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movl	%esi, %ebx
	movq	%rdi, %r14
	movl	$64, %edx
	callq	netif_ip6_addr_set_state
	movl	$42, __A_VARIABLE(%rip)
	testb	%bl, %bl
	jne	.LBB1_8
# %bb.1:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$0, 153(%r14)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB1_4
# %bb.2:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$0, 160(%r14)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB1_4
# %bb.3:
	movq	%r14, %rdi
	movl	$1, %esi
	movl	$64, %edx
	callq	netif_ip6_addr_set_state
	movl	$42, __A_VARIABLE(%rip)
.LBB1_4:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$0, 154(%r14)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB1_7
# %bb.5:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$0, 164(%r14)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB1_7
# %bb.6:
	movq	%r14, %rdi
	movl	$2, %esi
	movl	$64, %edx
	callq	netif_ip6_addr_set_state
	movl	$42, __A_VARIABLE(%rip)
.LBB1_7:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB1_8:
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end1:
	.size	nd6_duplicate_addr_detected, .Lfunc_end1-nd6_duplicate_addr_detected
                                        # -- End function
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
	movl	$42, __A_VARIABLE(%rip)
	testb	%dil, %dil
	js	.LBB2_10
# %bb.1:
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$9, %dil
	jg	.LBB2_10
# %bb.2:
	movsbq	%dil, %rax
	imulq	$56, %rax, %rax
	movq	neighbor_cache+40(%rax), %rbx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	je	.LBB2_10
# %bb.3:
	leaq	neighbor_cache+40(%rax), %r15
	leaq	-48(%rbp), %r14
	jmp	.LBB2_4
	.p2align	4, 0x90
.LBB2_8:                                #   in Loop: Header=BB2_4 Depth=1
	movq	-16(%r15), %rdi
	movzbl	264(%rdi), %eax
	addb	$1, %al
	movl	$42, __A_VARIABLE(%rip)
.LBB2_9:                                #   in Loop: Header=BB2_4 Depth=1
	movb	%al, -32(%rbp)
	movq	%r14, %rdx
	callq	*208(%rdi)
	movq	8(%rbx), %rdi
	callq	pbuf_free
	movl	$12, %edi
	movq	%rbx, %rsi
	callq	memp_free
	movl	$42, __A_VARIABLE(%rip)
	movq	(%r15), %rbx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	je	.LBB2_10
.LBB2_4:                                # =>This Inner Loop Header: Depth=1
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
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$33022, %ecx            # imm = 0x80FE
	je	.LBB2_8
# %bb.5:                                #   in Loop: Header=BB2_4 Depth=1
	andl	$36863, %eax            # imm = 0x8FFF
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$511, %rax              # imm = 0x1FF
	je	.LBB2_8
# %bb.6:                                #   in Loop: Header=BB2_4 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$767, %eax              # imm = 0x2FF
	je	.LBB2_8
# %bb.7:                                #   in Loop: Header=BB2_4 Depth=1
	movq	-16(%r15), %rdi
	xorl	%eax, %eax
	jmp	.LBB2_9
.LBB2_10:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$24, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end2:
	.size	nd6_send_q, .Lfunc_end2-nd6_send_q
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
	subq	$24, %rsp
	movl	$42, __A_VARIABLE(%rip)
	testq	%rsi, %rsi
	je	.LBB3_12
# %bb.1:
	movl	%edx, %r14d
	movq	%rsi, %rbx
	movq	%rdi, %r15
	movzbl	260(%rdi), %r12d
	leal	2(%r12), %eax
                                        # kill: def $r12d killed $r12d killed $r12 def $r12
	addl	$2, %r12d
	shrl	$3, %r12d
	andb	$7, %al
	cmpb	$1, %al
	sbbw	$-1, %r12w
	leal	24(,%r12,8), %eax
	movzwl	%ax, %esi
	movl	$54, %edi
	movl	$640, %edx              # imm = 0x280
	callq	pbuf_alloc
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB3_2
# %bb.3:
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	8(%rax), %r13
	movl	$136, (%r13)
	movl	%r14d, %eax
	andb	$-16, %al
	movb	%al, 4(%r13)
	movw	$0, 5(%r13)
	movb	$0, 7(%r13)
	movl	(%rbx), %eax
	movl	%eax, 8(%r13)
	movl	4(%rbx), %eax
	movl	%eax, 12(%r13)
	movl	8(%rbx), %eax
	movl	%eax, 16(%r13)
	movl	12(%rbx), %eax
	movl	%eax, 20(%r13)
	movb	$2, 24(%r13)
	movb	%r12b, 25(%r13)
	leaq	26(%r13), %rdi
	leaq	254(%r15), %rsi
	movzbl	260(%r15), %edx
	callq	memcpy
	movl	$42, __A_VARIABLE(%rip)
	testb	$1, %r14b
	jne	.LBB3_4
# %bb.5:
	movq	%rbx, %r12
	movl	$42, __A_VARIABLE(%rip)
	movl	$ip_data+36, %r8d
	testb	$2, %r14b
	movq	-48(%rbp), %rbx         # 8-byte Reload
	je	.LBB3_8
# %bb.6:
	movq	$767, multicast_address(%rip) # imm = 0x2FF
	movl	$0, multicast_address+8(%rip)
	movl	$16777216, %eax         # imm = 0x1000000
	jmp	.LBB3_7
.LBB3_2:
	addw	$1, lwip_stats+298(%rip)
	jmp	.LBB3_11
.LBB3_4:
	movq	$767, multicast_address(%rip) # imm = 0x2FF
	movl	$16777216, multicast_address+8(%rip) # imm = 0x1000000
	movl	$255, %eax
	movq	%rbx, %r12
	orl	12(%rbx), %eax
	movq	-48(%rbp), %rbx         # 8-byte Reload
.LBB3_7:
	movl	%eax, multicast_address+12(%rip)
	movl	$multicast_address, %r8d
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movb	264(%r15), %al
	addb	$1, %al
	movl	$42, __A_VARIABLE(%rip)
	movb	%al, multicast_address+16(%rip)
.LBB3_8:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	248(%r15), %eax
	movl	$42, __A_VARIABLE(%rip)
	testb	$16, %al
	je	.LBB3_10
# %bb.9:
	movzwl	18(%rbx), %edx
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movl	$58, %esi
	movq	%r12, %rcx
	movq	%r8, %rbx
	callq	ip6_chksum_pseudo
	movq	%rbx, %r8
	movq	-48(%rbp), %rbx         # 8-byte Reload
	movw	%ax, 2(%r13)
	movl	$42, __A_VARIABLE(%rip)
.LBB3_10:
	addw	$1, lwip_stats+286(%rip)
	movq	%r15, (%rsp)
	movq	%rbx, %rdi
	movq	%r12, %rsi
	movq	%r8, %rdx
	movl	$255, %ecx
	xorl	%r8d, %r8d
	movl	$58, %r9d
	callq	ip6_output_if
	movq	%rbx, %rdi
	callq	pbuf_free
.LBB3_11:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB3_12:
	movl	$.L.str.5, %edi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$.L.str.1, %edi
	movl	$.L.str.2, %esi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$3, %edi
	callq	ukplat_terminate
.Lfunc_end3:
	.size	nd6_send_na, .Lfunc_end3-nd6_send_na
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
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movb	neighbor_cache+48(%rip), %al
	movl	$42, __A_VARIABLE(%rip)
	testb	%al, %al
	je	.LBB4_1
# %bb.2:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movb	neighbor_cache+104(%rip), %bl
	movl	$42, __A_VARIABLE(%rip)
	testb	%bl, %bl
	je	.LBB4_3
# %bb.108:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movb	neighbor_cache+160(%rip), %dl
	movl	$42, __A_VARIABLE(%rip)
	testb	%dl, %dl
	je	.LBB4_109
# %bb.110:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movb	neighbor_cache+216(%rip), %cl
	movl	$42, __A_VARIABLE(%rip)
	testb	%cl, %cl
	je	.LBB4_111
# %bb.112:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movb	neighbor_cache+272(%rip), %r11b
	movl	$42, __A_VARIABLE(%rip)
	testb	%r11b, %r11b
	je	.LBB4_113
# %bb.114:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movb	neighbor_cache+328(%rip), %r10b
	movl	$42, __A_VARIABLE(%rip)
	testb	%r10b, %r10b
	je	.LBB4_115
# %bb.116:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movb	neighbor_cache+384(%rip), %r9b
	movl	$42, __A_VARIABLE(%rip)
	testb	%r9b, %r9b
	je	.LBB4_117
# %bb.118:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movb	neighbor_cache+440(%rip), %r8b
	movl	$42, __A_VARIABLE(%rip)
	testb	%r8b, %r8b
	je	.LBB4_119
# %bb.120:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movb	neighbor_cache+496(%rip), %dil
	movl	$42, __A_VARIABLE(%rip)
	testb	%dil, %dil
	je	.LBB4_121
# %bb.122:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movb	neighbor_cache+552(%rip), %sil
	movl	$42, __A_VARIABLE(%rip)
	testb	%sil, %sil
	je	.LBB4_123
# %bb.124:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$3, %al
	jne	.LBB4_125
# %bb.4:
	cmpb	$0, neighbor_cache+49(%rip)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB4_5
.LBB4_125:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$3, %bl
	jne	.LBB4_89
# %bb.126:
	cmpb	$0, neighbor_cache+105(%rip)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB4_88
.LBB4_89:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$3, %dl
	jne	.LBB4_91
# %bb.90:
	cmpb	$0, neighbor_cache+161(%rip)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB4_47
.LBB4_91:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$3, %cl
	jne	.LBB4_93
# %bb.92:
	cmpb	$0, neighbor_cache+217(%rip)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB4_50
.LBB4_93:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$3, %r11b
	jne	.LBB4_95
# %bb.94:
	cmpb	$0, neighbor_cache+273(%rip)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB4_53
.LBB4_95:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$3, %r10b
	jne	.LBB4_97
# %bb.96:
	cmpb	$0, neighbor_cache+329(%rip)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB4_56
.LBB4_97:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$3, %r9b
	jne	.LBB4_99
# %bb.98:
	cmpb	$0, neighbor_cache+385(%rip)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB4_59
.LBB4_99:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$3, %r8b
	jne	.LBB4_101
# %bb.100:
	cmpb	$0, neighbor_cache+441(%rip)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB4_62
.LBB4_101:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$3, %dil
	jne	.LBB4_103
# %bb.102:
	cmpb	$0, neighbor_cache+497(%rip)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB4_65
.LBB4_103:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$3, %sil
	jne	.LBB4_105
# %bb.104:
	cmpb	$0, neighbor_cache+553(%rip)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB4_68
.LBB4_105:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$5, %al
	jne	.LBB4_106
# %bb.9:
	cmpb	$0, neighbor_cache+49(%rip)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB4_5
.LBB4_106:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$5, %bl
	jne	.LBB4_69
# %bb.107:
	cmpb	$0, neighbor_cache+105(%rip)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB4_88
.LBB4_69:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$5, %dl
	jne	.LBB4_71
# %bb.70:
	cmpb	$0, neighbor_cache+161(%rip)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB4_47
.LBB4_71:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$5, %cl
	jne	.LBB4_73
# %bb.72:
	cmpb	$0, neighbor_cache+217(%rip)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB4_50
.LBB4_73:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$5, %r11b
	jne	.LBB4_75
# %bb.74:
	cmpb	$0, neighbor_cache+273(%rip)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB4_53
.LBB4_75:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$5, %r10b
	jne	.LBB4_77
# %bb.76:
	cmpb	$0, neighbor_cache+329(%rip)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB4_56
.LBB4_77:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$5, %r9b
	jne	.LBB4_79
# %bb.78:
	cmpb	$0, neighbor_cache+385(%rip)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB4_59
.LBB4_79:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$5, %r8b
	jne	.LBB4_81
# %bb.80:
	cmpb	$0, neighbor_cache+441(%rip)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB4_62
.LBB4_81:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$5, %dil
	jne	.LBB4_83
# %bb.82:
	cmpb	$0, neighbor_cache+497(%rip)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB4_65
.LBB4_83:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$5, %sil
	jne	.LBB4_85
# %bb.84:
	cmpb	$0, neighbor_cache+553(%rip)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB4_68
.LBB4_85:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$4, %al
	jne	.LBB4_86
# %bb.10:
	cmpb	$0, neighbor_cache+49(%rip)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB4_5
.LBB4_86:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$4, %bl
	jne	.LBB4_45
# %bb.87:
	cmpb	$0, neighbor_cache+105(%rip)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB4_88
.LBB4_45:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$4, %dl
	jne	.LBB4_48
# %bb.46:
	cmpb	$0, neighbor_cache+161(%rip)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB4_47
.LBB4_48:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$4, %cl
	jne	.LBB4_51
# %bb.49:
	cmpb	$0, neighbor_cache+217(%rip)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB4_50
.LBB4_51:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$4, %r11b
	jne	.LBB4_54
# %bb.52:
	cmpb	$0, neighbor_cache+273(%rip)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB4_53
.LBB4_54:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$4, %r10b
	jne	.LBB4_57
# %bb.55:
	cmpb	$0, neighbor_cache+329(%rip)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB4_56
.LBB4_57:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$4, %r9b
	jne	.LBB4_60
# %bb.58:
	cmpb	$0, neighbor_cache+385(%rip)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB4_59
.LBB4_60:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$4, %r8b
	jne	.LBB4_63
# %bb.61:
	cmpb	$0, neighbor_cache+441(%rip)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB4_62
.LBB4_63:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$4, %dil
	jne	.LBB4_66
# %bb.64:
	cmpb	$0, neighbor_cache+497(%rip)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB4_65
.LBB4_66:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$4, %sil
	jne	.LBB4_11
# %bb.67:
	cmpb	$0, neighbor_cache+553(%rip)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB4_68
.LBB4_11:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movb	$-1, %bl
	movl	$-1, %esi
	movl	$neighbor_cache+49, %ecx
	xorl	%edi, %edi
	movl	%eax, %edx
.LBB4_12:                               # =>This Inner Loop Header: Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$2, %dl
	jne	.LBB4_16
# %bb.13:                               #   in Loop: Header=BB4_12 Depth=1
	cmpb	$0, (%rcx)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB4_16
# %bb.14:                               #   in Loop: Header=BB4_12 Depth=1
	movl	3(%rcx), %edx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%esi, %edx
	jae	.LBB4_16
# %bb.15:                               #   in Loop: Header=BB4_12 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	%edi, %ebx
	movl	%edx, %esi
.LBB4_16:                               #   in Loop: Header=BB4_12 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$9, %rdi
	je	.LBB4_18
# %bb.17:                               #   in Loop: Header=BB4_12 Depth=1
	addq	$1, %rdi
	movzbl	55(%rcx), %edx
	addq	$56, %rcx
	jmp	.LBB4_12
.LBB4_1:
	xorl	%ebx, %ebx
	jmp	.LBB4_43
.LBB4_3:
	movb	$1, %bl
	jmp	.LBB4_43
.LBB4_109:
	movb	$2, %bl
	jmp	.LBB4_43
.LBB4_111:
	movb	$3, %bl
	jmp	.LBB4_43
.LBB4_113:
	movb	$4, %bl
	jmp	.LBB4_43
.LBB4_115:
	movb	$5, %bl
	jmp	.LBB4_43
.LBB4_117:
	movb	$6, %bl
	jmp	.LBB4_43
.LBB4_119:
	movb	$7, %bl
	jmp	.LBB4_43
.LBB4_121:
	movb	$8, %bl
	jmp	.LBB4_43
.LBB4_123:
	movb	$9, %bl
	jmp	.LBB4_43
.LBB4_5:
	xorl	%ebx, %ebx
	movl	$neighbor_cache+49, %r14d
	movl	$neighbor_cache+48, %r15d
	xorl	%eax, %eax
	jmp	.LBB4_6
.LBB4_88:
	movl	$neighbor_cache+105, %r14d
	movl	$neighbor_cache+104, %r15d
	movl	$1, %eax
	movb	$1, %bl
	jmp	.LBB4_6
.LBB4_47:
	movl	$neighbor_cache+161, %r14d
	movl	$neighbor_cache+160, %r15d
	movl	$2, %eax
	movb	$2, %bl
	jmp	.LBB4_6
.LBB4_50:
	movl	$neighbor_cache+217, %r14d
	movl	$neighbor_cache+216, %r15d
	movl	$3, %eax
	movb	$3, %bl
	jmp	.LBB4_6
.LBB4_53:
	movl	$neighbor_cache+273, %r14d
	movl	$neighbor_cache+272, %r15d
	movl	$4, %eax
	movb	$4, %bl
	jmp	.LBB4_6
.LBB4_56:
	movl	$neighbor_cache+329, %r14d
	movl	$neighbor_cache+328, %r15d
	movl	$5, %eax
	movb	$5, %bl
	jmp	.LBB4_6
.LBB4_59:
	movl	$neighbor_cache+385, %r14d
	movl	$neighbor_cache+384, %r15d
	movl	$6, %eax
	movb	$6, %bl
	jmp	.LBB4_6
.LBB4_62:
	movl	$neighbor_cache+441, %r14d
	movl	$neighbor_cache+440, %r15d
	movl	$7, %eax
	movb	$7, %bl
	jmp	.LBB4_6
.LBB4_65:
	movl	$neighbor_cache+497, %r14d
	movl	$neighbor_cache+496, %r15d
	movl	$8, %eax
	movb	$8, %bl
	jmp	.LBB4_6
.LBB4_68:
	movl	$neighbor_cache+553, %r14d
	movl	$neighbor_cache+552, %r15d
	movl	$9, %eax
	movb	$9, %bl
.LBB4_6:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	imulq	$56, %rax, %r12
	movq	neighbor_cache+40(%r12), %rdi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB4_8
# %bb.7:
	leaq	neighbor_cache+40(%r12), %r13
	callq	nd6_free_q
	movq	$0, (%r13)
	movl	$42, __A_VARIABLE(%rip)
.LBB4_8:
	movb	$0, (%r15)
	movb	$0, (%r14)
	movq	$0, neighbor_cache+24(%r12)
	movl	$0, neighbor_cache+52(%r12)
	xorps	%xmm0, %xmm0
	movups	%xmm0, neighbor_cache(%r12)
	movb	$0, neighbor_cache+16(%r12)
.LBB4_41:
	movl	$42, __A_VARIABLE(%rip)
.LBB4_42:
	movl	$42, __A_VARIABLE(%rip)
.LBB4_43:
	movl	$42, __A_VARIABLE(%rip)
.LBB4_44:
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
.LBB4_18:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testb	%bl, %bl
	jns	.LBB4_36
# %bb.19:
	movl	$42, __A_VARIABLE(%rip)
	movb	$-1, %bl
	xorl	%ecx, %ecx
	movl	$neighbor_cache+52, %edx
	xorl	%esi, %esi
	jmp	.LBB4_20
.LBB4_25:                               #   in Loop: Header=BB4_20 Depth=1
	addq	$1, %rcx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$56, %rdx
	cmpq	$10, %rcx
	je	.LBB4_26
.LBB4_20:                               # =>This Inner Loop Header: Depth=1
	cmpq	$0, -12(%rdx)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB4_25
# %bb.21:                               #   in Loop: Header=BB4_20 Depth=1
	cmpb	$1, -4(%rdx)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB4_25
# %bb.22:                               #   in Loop: Header=BB4_20 Depth=1
	cmpb	$0, -3(%rdx)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB4_25
# %bb.23:                               #   in Loop: Header=BB4_20 Depth=1
	movl	(%rdx), %edi
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%esi, %edi
	jb	.LBB4_25
# %bb.24:                               #   in Loop: Header=BB4_20 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	%ecx, %ebx
	movl	%edi, %esi
	jmp	.LBB4_25
.LBB4_26:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testb	%bl, %bl
	jns	.LBB4_36
# %bb.27:
	movl	$42, __A_VARIABLE(%rip)
	movb	$-1, %bl
	xorl	%ecx, %ecx
	movl	$neighbor_cache+49, %edx
	xorl	%esi, %esi
.LBB4_28:                               # =>This Inner Loop Header: Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$1, %al
	jne	.LBB4_32
# %bb.29:                               #   in Loop: Header=BB4_28 Depth=1
	cmpb	$0, (%rdx)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB4_32
# %bb.30:                               #   in Loop: Header=BB4_28 Depth=1
	movl	3(%rdx), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%esi, %eax
	jb	.LBB4_32
# %bb.31:                               #   in Loop: Header=BB4_28 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	%ecx, %ebx
	movl	%eax, %esi
.LBB4_32:                               #   in Loop: Header=BB4_28 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$9, %rcx
	je	.LBB4_34
# %bb.33:                               #   in Loop: Header=BB4_28 Depth=1
	addq	$1, %rcx
	movzbl	55(%rdx), %eax
	addq	$56, %rdx
	jmp	.LBB4_28
.LBB4_34:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testb	%bl, %bl
	js	.LBB4_35
.LBB4_36:
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$9, %bl
	jg	.LBB4_42
# %bb.37:
	movsbq	%bl, %rax
	imulq	$56, %rax, %r14
	cmpb	$0, neighbor_cache+49(%r14)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB4_42
# %bb.38:
	leaq	neighbor_cache+49(%r14), %r15
	movq	neighbor_cache+40(%r14), %rdi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB4_40
# %bb.39:
	leaq	neighbor_cache+40(%r14), %r12
	callq	nd6_free_q
	movq	$0, (%r12)
	movl	$42, __A_VARIABLE(%rip)
.LBB4_40:
	movb	$0, neighbor_cache+48(%r14)
	movb	$0, (%r15)
	movq	$0, neighbor_cache+24(%r14)
	movl	$0, neighbor_cache+52(%r14)
	xorps	%xmm0, %xmm0
	movups	%xmm0, neighbor_cache(%r14)
	movb	$0, neighbor_cache+16(%r14)
	jmp	.LBB4_41
.LBB4_35:
	movb	$-1, %bl
	jmp	.LBB4_44
.Lfunc_end4:
	.size	nd6_new_neighbor_cache_entry, .Lfunc_end4-nd6_new_neighbor_cache_entry
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4               # -- Begin function nd6_send_rs
.LCPI5_0:
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
	movl	$42, __A_VARIABLE(%rip)
	movl	$ip6_addr_any, %eax
	cmoveq	%rax, %r14
	movl	$42, __A_VARIABLE(%rip)
	movaps	.LCPI5_0(%rip), %xmm0   # xmm0 = [767,0,0,33554432]
	movaps	%xmm0, multicast_address(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movb	264(%rdi), %cl
	addb	$1, %cl
	movl	$42, __A_VARIABLE(%rip)
	movb	%cl, multicast_address+16(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rax, %r14
	je	.LBB5_1
# %bb.2:
	movzbl	260(%r12), %ebx
	leal	2(%rbx), %eax
                                        # kill: def $ebx killed $ebx killed $rbx def $rbx
	addl	$2, %ebx
	shrl	$3, %ebx
	andb	$7, %al
	cmpb	$1, %al
	sbbw	$-1, %bx
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB5_3
.LBB5_1:
	xorl	%ebx, %ebx
.LBB5_3:
	leal	8(,%rbx,8), %eax
	movzwl	%ax, %esi
	movl	$54, %edi
	movl	$640, %edx              # imm = 0x280
	callq	pbuf_alloc
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB5_4
# %bb.5:
	movq	%rax, %r15
	movl	$ip6_addr_any, %eax
	movq	8(%r15), %r13
	movq	$133, (%r13)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rax, %r14
	je	.LBB5_7
# %bb.6:
	movb	$1, 8(%r13)
	movb	%bl, 9(%r13)
	leaq	10(%r13), %rdi
	leaq	254(%r12), %rsi
	movzbl	260(%r12), %edx
	callq	memcpy
	movl	$42, __A_VARIABLE(%rip)
.LBB5_7:
	movl	$42, __A_VARIABLE(%rip)
	movzwl	248(%r12), %eax
	movl	$42, __A_VARIABLE(%rip)
	testb	$16, %al
	je	.LBB5_9
# %bb.8:
	movzwl	18(%r15), %edx
	movl	$multicast_address, %r8d
	movq	%r15, %rdi
	movl	$58, %esi
	movq	%r14, %rcx
	callq	ip6_chksum_pseudo
	movw	%ax, 2(%r13)
	movl	$42, __A_VARIABLE(%rip)
.LBB5_9:
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
	jmp	.LBB5_10
.LBB5_4:
	addw	$1, lwip_stats+298(%rip)
	movb	$-2, %bl
.LBB5_10:
	movl	$42, __A_VARIABLE(%rip)
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
.Lfunc_end5:
	.size	nd6_send_rs, .Lfunc_end5-nd6_send_rs
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4               # -- Begin function nd6_tmr
.LCPI6_0:
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
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$neighbor_cache, %ebx
	xorl	%r14d, %r14d
	jmp	.LBB6_1
.LBB6_14:                               #   in Loop: Header=BB6_1 Depth=1
	addl	$1, 52(%rbx)
	.p2align	4, 0x90
.LBB6_23:                               #   in Loop: Header=BB6_1 Depth=1
	movl	$42, __A_VARIABLE(%rip)
.LBB6_24:                               #   in Loop: Header=BB6_1 Depth=1
	addq	$1, %r14
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$56, %rbx
	cmpq	$10, %r14
	je	.LBB6_25
.LBB6_1:                                # =>This Inner Loop Header: Depth=1
	movzbl	48(%rbx), %eax
	movl	$42, __A_VARIABLE(%rip)
	addb	$-1, %al
	cmpb	$4, %al
	ja	.LBB6_24
# %bb.2:                                #   in Loop: Header=BB6_1 Depth=1
	movzbl	%al, %eax
	jmpq	*.LJTI6_0(,%rax,8)
.LBB6_3:                                #   in Loop: Header=BB6_1 Depth=1
	movl	52(%rbx), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$3, %eax
	jb	.LBB6_8
# %bb.4:                                #   in Loop: Header=BB6_1 Depth=1
	cmpb	$0, 49(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB6_5
.LBB6_8:                                #   in Loop: Header=BB6_1 Depth=1
	addl	$1, %eax
	movl	%eax, 52(%rbx)
	movq	24(%rbx), %rdi
	movq	%rbx, %rsi
	movl	$1, %edx
	jmp	.LBB6_21
.LBB6_9:                                #   in Loop: Header=BB6_1 Depth=1
	cmpq	$0, 40(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB6_11
# %bb.10:                               #   in Loop: Header=BB6_1 Depth=1
	movsbl	%r14b, %edi
	callq	nd6_send_q
	movl	$42, __A_VARIABLE(%rip)
.LBB6_11:                               #   in Loop: Header=BB6_1 Depth=1
	movl	52(%rbx), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1000, %eax             # imm = 0x3E8
	ja	.LBB6_13
# %bb.12:                               #   in Loop: Header=BB6_1 Depth=1
	movb	$3, 48(%rbx)
	movl	$0, 52(%rbx)
	jmp	.LBB6_23
.LBB6_15:                               #   in Loop: Header=BB6_1 Depth=1
	movl	52(%rbx), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1, %eax
	ja	.LBB6_17
# %bb.16:                               #   in Loop: Header=BB6_1 Depth=1
	movb	$5, 48(%rbx)
	movl	$0, 52(%rbx)
	jmp	.LBB6_23
.LBB6_18:                               #   in Loop: Header=BB6_1 Depth=1
	movl	52(%rbx), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$3, %eax
	jb	.LBB6_20
# %bb.19:                               #   in Loop: Header=BB6_1 Depth=1
	cmpb	$0, 49(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB6_5
.LBB6_20:                               #   in Loop: Header=BB6_1 Depth=1
	addl	$1, %eax
	movl	%eax, 52(%rbx)
	movq	24(%rbx), %rdi
	movq	%rbx, %rsi
	xorl	%edx, %edx
.LBB6_21:                               #   in Loop: Header=BB6_1 Depth=1
	callq	nd6_send_ns
.LBB6_22:                               #   in Loop: Header=BB6_1 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB6_23
.LBB6_13:                               #   in Loop: Header=BB6_1 Depth=1
	addl	$-1000, %eax            # imm = 0xFC18
	movl	%eax, 52(%rbx)
	jmp	.LBB6_23
.LBB6_17:                               #   in Loop: Header=BB6_1 Depth=1
	addl	$-1, %eax
	movl	%eax, 52(%rbx)
	jmp	.LBB6_23
.LBB6_5:                                #   in Loop: Header=BB6_1 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	40(%rbx), %rdi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB6_7
# %bb.6:                                #   in Loop: Header=BB6_1 Depth=1
	callq	nd6_free_q
	movq	$0, 40(%rbx)
	movl	$42, __A_VARIABLE(%rip)
.LBB6_7:                                #   in Loop: Header=BB6_1 Depth=1
	movw	$0, 48(%rbx)
	movq	$0, 24(%rbx)
	movl	$0, 52(%rbx)
	xorps	%xmm0, %xmm0
	movups	%xmm0, (%rbx)
	movb	$0, 16(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB6_22
.LBB6_25:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addl	$1, destination_cache+44(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addl	$1, destination_cache+92(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addl	$1, destination_cache+140(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addl	$1, destination_cache+188(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addl	$1, destination_cache+236(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addl	$1, destination_cache+284(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addl	$1, destination_cache+332(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addl	$1, destination_cache+380(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addl	$1, destination_cache+428(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addl	$1, destination_cache+476(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
	xorps	%xmm0, %xmm0
	jmp	.LBB6_26
	.p2align	4, 0x90
.LBB6_37:                               #   in Loop: Header=BB6_26 Depth=1
	addl	$-1, %edi
	movl	%edi, (%r9)
.LBB6_38:                               #   in Loop: Header=BB6_26 Depth=1
	movl	$42, __A_VARIABLE(%rip)
.LBB6_39:                               #   in Loop: Header=BB6_26 Depth=1
	addq	$1, %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$3, %rax
	je	.LBB6_40
.LBB6_26:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_29 Depth 2
	movq	%rax, %rsi
	shlq	$4, %rsi
	movq	default_router_list(%rsi), %rdx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdx, %rdx
	je	.LBB6_39
# %bb.27:                               #   in Loop: Header=BB6_26 Depth=1
	leaq	default_router_list+8(%rsi), %r9
	movl	default_router_list+8(%rsi), %edi
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1, %edi
	ja	.LBB6_37
# %bb.28:                               #   in Loop: Header=BB6_26 Depth=1
	leaq	default_router_list(%rsi), %r8
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	$-480, %rbx             # imm = 0xFE20
	jmp	.LBB6_29
	.p2align	4, 0x90
.LBB6_35:                               #   in Loop: Header=BB6_29 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$48, %rbx
	je	.LBB6_36
.LBB6_29:                               #   Parent Loop BB6_26 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	destination_cache+500(%rbx), %edi
	cmpl	(%rdx), %edi
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB6_35
# %bb.30:                               #   in Loop: Header=BB6_29 Depth=2
	movl	destination_cache+504(%rbx), %edi
	cmpl	4(%rdx), %edi
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB6_35
# %bb.31:                               #   in Loop: Header=BB6_29 Depth=2
	movl	destination_cache+508(%rbx), %edi
	cmpl	8(%rdx), %edi
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB6_35
# %bb.32:                               #   in Loop: Header=BB6_29 Depth=2
	movl	destination_cache+512(%rbx), %edi
	cmpl	12(%rdx), %edi
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB6_35
# %bb.33:                               #   in Loop: Header=BB6_29 Depth=2
	movzbl	destination_cache+516(%rbx), %ecx
	cmpb	16(%rdx), %cl
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB6_35
# %bb.34:                               #   in Loop: Header=BB6_29 Depth=2
	movaps	%xmm0, destination_cache+480(%rbx)
	movb	$0, destination_cache+496(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB6_35
	.p2align	4, 0x90
.LBB6_36:                               #   in Loop: Header=BB6_26 Depth=1
	movb	$0, 49(%rdx)
	movq	$0, (%r8)
	movl	$0, (%r9)
	movb	$0, default_router_list+12(%rsi)
	jmp	.LBB6_38
.LBB6_40:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$0, prefix_list+24(%rip)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB6_45
# %bb.41:
	movl	prefix_list+32(%rip), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1, %eax
	ja	.LBB6_43
# %bb.42:
	movl	$0, prefix_list+32(%rip)
	movq	$0, prefix_list+24(%rip)
	jmp	.LBB6_44
.LBB6_43:
	addl	$-1, %eax
	movl	%eax, prefix_list+32(%rip)
.LBB6_44:
	movl	$42, __A_VARIABLE(%rip)
.LBB6_45:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$0, prefix_list+64(%rip)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB6_91
# %bb.46:
	movl	prefix_list+72(%rip), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, %eax
	jae	.LBB6_47
# %bb.89:
	movl	$0, prefix_list+72(%rip)
	movq	$0, prefix_list+64(%rip)
	jmp	.LBB6_90
.LBB6_47:
	addl	$-1, %eax
	movl	%eax, prefix_list+72(%rip)
.LBB6_90:
	movl	$42, __A_VARIABLE(%rip)
.LBB6_91:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$0, prefix_list+104(%rip)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB6_96
# %bb.92:
	movl	prefix_list+112(%rip), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, %eax
	jae	.LBB6_93
# %bb.94:
	movl	$0, prefix_list+112(%rip)
	movq	$0, prefix_list+104(%rip)
	jmp	.LBB6_95
.LBB6_93:
	addl	$-1, %eax
	movl	%eax, prefix_list+112(%rip)
.LBB6_95:
	movl	$42, __A_VARIABLE(%rip)
.LBB6_96:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$0, prefix_list+144(%rip)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB6_101
# %bb.97:
	movl	prefix_list+152(%rip), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, %eax
	jae	.LBB6_98
# %bb.99:
	movl	$0, prefix_list+152(%rip)
	movq	$0, prefix_list+144(%rip)
	jmp	.LBB6_100
.LBB6_98:
	addl	$-1, %eax
	movl	%eax, prefix_list+152(%rip)
.LBB6_100:
	movl	$42, __A_VARIABLE(%rip)
.LBB6_101:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$0, prefix_list+184(%rip)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB6_106
# %bb.102:
	movl	prefix_list+192(%rip), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, %eax
	jae	.LBB6_103
# %bb.104:
	movl	$0, prefix_list+192(%rip)
	movq	$0, prefix_list+184(%rip)
	jmp	.LBB6_105
.LBB6_103:
	addl	$-1, %eax
	movl	%eax, prefix_list+192(%rip)
.LBB6_105:
	movl	$42, __A_VARIABLE(%rip)
.LBB6_106:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	netif_list(%rip), %r14
	jmp	.LBB6_75
	.p2align	4, 0x90
.LBB6_74:                               #   in Loop: Header=BB6_75 Depth=1
	movq	(%r14), %r14
.LBB6_75:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_49 Depth 2
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%r14, %r14
	je	.LBB6_76
# %bb.48:                               #   in Loop: Header=BB6_75 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	leaq	80(%r14), %r15
	xorl	%ebx, %ebx
	jmp	.LBB6_49
	.p2align	4, 0x90
.LBB6_68:                               #   in Loop: Header=BB6_49 Depth=2
	movzbl	%al, %edx
	movsbl	%bl, %esi
	movq	%r14, %rdi
	callq	netif_ip6_addr_set_state
.LBB6_72:                               #   in Loop: Header=BB6_49 Depth=2
	movl	$42, __A_VARIABLE(%rip)
.LBB6_73:                               #   in Loop: Header=BB6_49 Depth=2
	addq	$1, %rbx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$24, %r15
	cmpq	$3, %rbx
	je	.LBB6_74
.LBB6_49:                               #   Parent Loop BB6_75 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	152(%r14,%rbx), %eax
	movl	$42, __A_VARIABLE(%rip)
	testb	%al, %al
	je	.LBB6_63
# %bb.50:                               #   in Loop: Header=BB6_49 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$0, 156(%r14,%rbx,4)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB6_63
# %bb.51:                               #   in Loop: Header=BB6_49 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	156(%r14,%rbx,4), %ecx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1, %ecx
	ja	.LBB6_53
# %bb.52:                               #   in Loop: Header=BB6_49 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	$0, 156(%r14,%rbx,4)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$0, 168(%r14,%rbx,4)
	movl	$42, __A_VARIABLE(%rip)
	movsbl	%bl, %esi
	movq	%r14, %rdi
	xorl	%edx, %edx
	callq	netif_ip6_addr_set_state
	jmp	.LBB6_61
.LBB6_53:                               #   in Loop: Header=BB6_49 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %ecx
	je	.LBB6_55
# %bb.54:                               #   in Loop: Header=BB6_49 Depth=2
	addl	$-1, %ecx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%ecx, 156(%r14,%rbx,4)
	movl	$42, __A_VARIABLE(%rip)
.LBB6_55:                               #   in Loop: Header=BB6_49 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	168(%r14,%rbx,4), %ecx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1, %ecx
	ja	.LBB6_59
# %bb.56:                               #   in Loop: Header=BB6_49 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	$0, 168(%r14,%rbx,4)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$48, %al
	jne	.LBB6_62
# %bb.57:                               #   in Loop: Header=BB6_49 Depth=2
	movsbl	%bl, %esi
	movq	%r14, %rdi
	movl	$16, %edx
	callq	netif_ip6_addr_set_state
	jmp	.LBB6_61
.LBB6_59:                               #   in Loop: Header=BB6_49 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %ecx
	je	.LBB6_62
# %bb.60:                               #   in Loop: Header=BB6_49 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	addl	$-1, %ecx
	movl	%ecx, 168(%r14,%rbx,4)
	.p2align	4, 0x90
.LBB6_61:                               #   in Loop: Header=BB6_49 Depth=2
	movl	$42, __A_VARIABLE(%rip)
.LBB6_62:                               #   in Loop: Header=BB6_49 Depth=2
	movl	$42, __A_VARIABLE(%rip)
.LBB6_63:                               #   in Loop: Header=BB6_49 Depth=2
	movzbl	152(%r14,%rbx), %eax
	movl	$42, __A_VARIABLE(%rip)
	testb	$8, %al
	je	.LBB6_73
# %bb.64:                               #   in Loop: Header=BB6_49 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	testb	$7, %al
	je	.LBB6_69
# %bb.65:                               #   in Loop: Header=BB6_49 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$0, 156(%r14,%rbx,4)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movb	$48, %al
	je	.LBB6_68
# %bb.66:                               #   in Loop: Header=BB6_49 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$0, 168(%r14,%rbx,4)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB6_68
# %bb.67:                               #   in Loop: Header=BB6_49 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movb	$16, %al
	jmp	.LBB6_68
.LBB6_69:                               #   in Loop: Header=BB6_49 Depth=2
	movzbl	261(%r14), %ecx
	movl	$42, __A_VARIABLE(%rip)
	testb	$1, %cl
	je	.LBB6_73
# %bb.70:                               #   in Loop: Header=BB6_49 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	testb	$4, %cl
	je	.LBB6_73
# %bb.71:                               #   in Loop: Header=BB6_49 Depth=2
	addb	$1, %al
	movsbl	%bl, %esi
	movzbl	%al, %edx
	movq	%r14, %rdi
	callq	netif_ip6_addr_set_state
	movq	%r14, %rdi
	movq	%r15, %rsi
	movl	$5, %edx
	callq	nd6_send_ns
	jmp	.LBB6_72
.LBB6_76:
	movb	nd6_tmr_rs_reduction(%rip), %al
	movl	$42, __A_VARIABLE(%rip)
	testb	%al, %al
	je	.LBB6_77
# %bb.87:
	addb	$-1, %al
	movb	%al, nd6_tmr_rs_reduction(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB6_88:
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB6_77:
	movb	$3, nd6_tmr_rs_reduction(%rip)
	movq	netif_list(%rip), %rbx
	jmp	.LBB6_78
	.p2align	4, 0x90
.LBB6_86:                               #   in Loop: Header=BB6_78 Depth=1
	movq	(%rbx), %rbx
.LBB6_78:                               # =>This Inner Loop Header: Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	je	.LBB6_88
# %bb.79:                               #   in Loop: Header=BB6_78 Depth=1
	cmpb	$0, 266(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB6_86
# %bb.80:                               #   in Loop: Header=BB6_78 Depth=1
	movzbl	261(%rbx), %eax
	movl	$42, __A_VARIABLE(%rip)
	testb	$1, %al
	je	.LBB6_86
# %bb.81:                               #   in Loop: Header=BB6_78 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testb	$4, %al
	je	.LBB6_86
# %bb.82:                               #   in Loop: Header=BB6_78 Depth=1
	movzbl	152(%rbx), %eax
	movl	$42, __A_VARIABLE(%rip)
	testb	%al, %al
	je	.LBB6_86
# %bb.83:                               #   in Loop: Header=BB6_78 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$64, %al
	je	.LBB6_86
# %bb.84:                               #   in Loop: Header=BB6_78 Depth=1
	movq	%rbx, %rdi
	callq	nd6_send_rs
	movl	$42, __A_VARIABLE(%rip)
	testb	%al, %al
	jne	.LBB6_86
# %bb.85:                               #   in Loop: Header=BB6_78 Depth=1
	addb	$-1, 266(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB6_86
.Lfunc_end6:
	.size	nd6_tmr, .Lfunc_end6-nd6_tmr
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI6_0:
	.quad	.LBB6_3
	.quad	.LBB6_9
	.quad	.LBB6_14
	.quad	.LBB6_15
	.quad	.LBB6_18
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
	je	.LBB7_2
# %bb.1:
	movaps	%xmm0, -160(%rbp)
	movaps	%xmm1, -144(%rbp)
	movaps	%xmm2, -128(%rbp)
	movaps	%xmm3, -112(%rbp)
	movaps	%xmm4, -96(%rbp)
	movaps	%xmm5, -80(%rbp)
	movaps	%xmm6, -64(%rbp)
	movaps	%xmm7, -48(%rbp)
.LBB7_2:
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
.Lfunc_end7:
	.size	uk_pr_crit, .Lfunc_end7-uk_pr_crit
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
	movl	$42, __A_VARIABLE(%rip)
	testq	%rsi, %rsi
	je	.LBB8_16
# %bb.1:
	movl	%edx, %ebx
	movq	%rsi, %r14
	movl	$42, __A_VARIABLE(%rip)
	testb	$4, %bl
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	jne	.LBB8_2
# %bb.3:
	testb	$16, 152(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB8_4
.LBB8_2:
	movl	$ip6_addr_any, %eax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	xorl	%r13d, %r13d
	jmp	.LBB8_5
.LBB8_4:
	leaq	80(%rdi), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movzbl	260(%rdi), %r13d
	addl	$9, %r13d
	shrl	$3, %r13d
.LBB8_5:
	movl	$42, __A_VARIABLE(%rip)
	movzwl	%r13w, %eax
	leal	24(,%rax,8), %esi
	movl	$54, %edi
	movl	$640, %edx              # imm = 0x280
	callq	pbuf_alloc
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB8_6
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
	movl	$42, __A_VARIABLE(%rip)
	testw	%r13w, %r13w
	je	.LBB8_9
# %bb.8:
	movb	$1, 24(%r15)
	movb	%r13b, 25(%r15)
	leaq	26(%r15), %rdi
	movq	-56(%rbp), %rax         # 8-byte Reload
	leaq	254(%rax), %rsi
	movzbl	260(%rax), %edx
	callq	memcpy
	movl	$42, __A_VARIABLE(%rip)
.LBB8_9:
	movl	$42, __A_VARIABLE(%rip)
	testb	$1, %bl
	jne	.LBB8_10
# %bb.11:
	movl	$42, __A_VARIABLE(%rip)
	movq	-56(%rbp), %r13         # 8-byte Reload
	testq	%r13, %r13
	movq	-48(%rbp), %rbx         # 8-byte Reload
	jne	.LBB8_12
	jmp	.LBB8_13
.LBB8_6:
	addw	$1, lwip_stats+298(%rip)
	jmp	.LBB8_15
.LBB8_10:
	movq	$767, multicast_address(%rip) # imm = 0x2FF
	movl	$16777216, multicast_address+8(%rip) # imm = 0x1000000
	movl	$255, %eax
	orl	12(%r14), %eax
	movl	%eax, multicast_address+12(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	-56(%rbp), %r13         # 8-byte Reload
	movb	264(%r13), %al
	addb	$1, %al
	movl	$42, __A_VARIABLE(%rip)
	movb	%al, multicast_address+16(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$multicast_address, %r14d
	movq	-48(%rbp), %rbx         # 8-byte Reload
.LBB8_12:
	movzwl	248(%r13), %eax
	movl	$42, __A_VARIABLE(%rip)
	testb	$16, %al
	je	.LBB8_14
.LBB8_13:
	movzwl	18(%r12), %edx
	movq	%r12, %rdi
	movl	$58, %esi
	movq	%rbx, %rcx
	movq	%r14, %r8
	callq	ip6_chksum_pseudo
	movw	%ax, 2(%r15)
	movl	$42, __A_VARIABLE(%rip)
.LBB8_14:
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
.LBB8_15:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB8_16:
	movl	$.L.str.5, %edi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$.L.str.1, %edi
	movl	$.L.str.2, %esi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$3, %edi
	callq	ukplat_terminate
.Lfunc_end8:
	.size	nd6_send_ns, .Lfunc_end8-nd6_send_ns
                                        # -- End function
	.globl	nd6_clear_destination_cache # -- Begin function nd6_clear_destination_cache
	.p2align	4, 0x90
	.type	nd6_clear_destination_cache,@function
nd6_clear_destination_cache:            # @nd6_clear_destination_cache
# %bb.0:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	xorps	%xmm0, %xmm0
	movaps	%xmm0, destination_cache(%rip)
	movb	$0, destination_cache+16(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movaps	%xmm0, destination_cache+48(%rip)
	movb	$0, destination_cache+64(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movaps	%xmm0, destination_cache+96(%rip)
	movb	$0, destination_cache+112(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movaps	%xmm0, destination_cache+144(%rip)
	movb	$0, destination_cache+160(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movaps	%xmm0, destination_cache+192(%rip)
	movb	$0, destination_cache+208(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movaps	%xmm0, destination_cache+240(%rip)
	movb	$0, destination_cache+256(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movaps	%xmm0, destination_cache+288(%rip)
	movb	$0, destination_cache+304(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movaps	%xmm0, destination_cache+336(%rip)
	movb	$0, destination_cache+352(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movaps	%xmm0, destination_cache+384(%rip)
	movb	$0, destination_cache+400(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movaps	%xmm0, destination_cache+432(%rip)
	movb	$0, destination_cache+448(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end9:
	.size	nd6_clear_destination_cache, .Lfunc_end9-nd6_clear_destination_cache
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
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$prefix_list, %eax
	xorl	%ecx, %ecx
	jmp	.LBB10_1
	.p2align	4, 0x90
.LBB10_7:                               #   in Loop: Header=BB10_1 Depth=1
	addq	$1, %rcx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$40, %rax
	cmpq	$5, %rcx
	jae	.LBB10_8
.LBB10_1:                               # =>This Inner Loop Header: Depth=1
	movq	24(%rax), %rbx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	je	.LBB10_7
# %bb.2:                                #   in Loop: Header=BB10_1 Depth=1
	movl	(%rax), %edx
	cmpl	(%rdi), %edx
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB10_7
# %bb.3:                                #   in Loop: Header=BB10_1 Depth=1
	movl	4(%rax), %edx
	cmpl	4(%rdi), %edx
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB10_7
# %bb.4:                                #   in Loop: Header=BB10_1 Depth=1
	movzbl	16(%rax), %edx
	cmpb	16(%rdi), %dl
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB10_7
# %bb.5:                                #   in Loop: Header=BB10_1 Depth=1
	movzbl	261(%rbx), %edx
	movl	$42, __A_VARIABLE(%rip)
	testb	$1, %dl
	je	.LBB10_7
# %bb.6:                                #   in Loop: Header=BB10_1 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testb	$4, %dl
	je	.LBB10_7
	jmp	.LBB10_11
.LBB10_8:
	xorl	%ebx, %ebx
	xorl	%edi, %edi
	callq	nd6_select_router
	movl	$42, __A_VARIABLE(%rip)
	testb	%al, %al
	js	.LBB10_11
# %bb.9:
	movsbq	%al, %rax
	shlq	$4, %rax
	movq	default_router_list(%rax), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB10_12
# %bb.10:
	movq	24(%rax), %rbx
.LBB10_11:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.LBB10_12:
	movl	$.L.str.3, %edi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$.L.str.1, %edi
	movl	$.L.str.2, %esi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$3, %edi
	callq	ukplat_terminate
.Lfunc_end10:
	.size	nd6_find_route, .Lfunc_end10-nd6_find_route
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function nd6_select_router
	.type	nd6_select_router,@function
nd6_select_router:                      # @nd6_select_router
# %bb.0:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	default_router_list(%rip), %rax
	movl	$42, __A_VARIABLE(%rip)
	movb	$-1, %cl
	testq	%rax, %rax
	je	.LBB11_10
# %bb.1:
	movq	24(%rax), %rdx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdx, %rdx
	je	.LBB11_10
# %bb.2:
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB11_4
# %bb.3:
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rdi, %rdx
	jne	.LBB11_10
	jmp	.LBB11_6
.LBB11_4:
	movzbl	261(%rdx), %edx
	movl	$42, __A_VARIABLE(%rip)
	testb	$1, %dl
	je	.LBB11_10
# %bb.5:
	movl	$42, __A_VARIABLE(%rip)
	testb	$4, %dl
	je	.LBB11_10
.LBB11_6:
	movb	48(%rax), %al
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$1, %al
	je	.LBB11_10
# %bb.7:
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$2, %al
	jne	.LBB11_9
# %bb.8:
	xorl	%eax, %eax
	jmp	.LBB11_54
.LBB11_9:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%ecx, %ecx
.LBB11_10:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	default_router_list+16(%rip), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB11_42
# %bb.11:
	movq	24(%rax), %rdx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdx, %rdx
	je	.LBB11_42
# %bb.12:
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB11_35
# %bb.13:
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rdi, %rdx
	jne	.LBB11_42
	jmp	.LBB11_37
.LBB11_35:
	movzbl	261(%rdx), %edx
	movl	$42, __A_VARIABLE(%rip)
	testb	$1, %dl
	je	.LBB11_42
# %bb.36:
	movl	$42, __A_VARIABLE(%rip)
	testb	$4, %dl
	je	.LBB11_42
.LBB11_37:
	movb	48(%rax), %dl
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$1, %dl
	je	.LBB11_42
# %bb.38:
	movl	$42, __A_VARIABLE(%rip)
	movb	$1, %al
	cmpb	$2, %dl
	je	.LBB11_54
# %bb.39:
	movl	$42, __A_VARIABLE(%rip)
	testb	%cl, %cl
	js	.LBB11_41
# %bb.40:
	xorl	%ecx, %ecx
	jmp	.LBB11_42
.LBB11_41:
	movl	$42, __A_VARIABLE(%rip)
	movb	$1, %cl
.LBB11_42:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	default_router_list+32(%rip), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB11_46
# %bb.43:
	movq	24(%rax), %rdx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdx, %rdx
	je	.LBB11_46
# %bb.44:
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB11_47
# %bb.45:
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rdi, %rdx
	jne	.LBB11_46
	jmp	.LBB11_49
.LBB11_47:
	movzbl	261(%rdx), %edx
	movl	$42, __A_VARIABLE(%rip)
	testb	$1, %dl
	je	.LBB11_46
# %bb.48:
	movl	$42, __A_VARIABLE(%rip)
	testb	$4, %dl
	je	.LBB11_46
.LBB11_49:
	movb	48(%rax), %dl
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$1, %dl
	jne	.LBB11_50
.LBB11_46:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%ecx, %eax
	testb	%cl, %cl
	jns	.LBB11_54
# %bb.14:
	movl	$42, __A_VARIABLE(%rip)
	movb	nd6_select_router.last_router(%rip), %al
	testq	%rdi, %rdi
	jne	.LBB11_16
# %bb.15:
	addb	$1, %al
	xorl	%ecx, %ecx
	cmpb	$2, %al
	movzbl	%al, %eax
	cmovgl	%ecx, %eax
	movb	%al, nd6_select_router.last_router(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB11_16:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movsbq	%al, %rcx
	shlq	$4, %rcx
	movq	default_router_list(%rcx), %rcx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rcx, %rcx
	je	.LBB11_22
# %bb.17:
	movq	24(%rcx), %rcx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rcx, %rcx
	je	.LBB11_22
# %bb.18:
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB11_20
# %bb.19:
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rdi, %rcx
	jne	.LBB11_22
	jmp	.LBB11_54
.LBB11_50:
	movl	$42, __A_VARIABLE(%rip)
	movb	$2, %al
	cmpb	$2, %dl
	je	.LBB11_54
# %bb.51:
	movl	$42, __A_VARIABLE(%rip)
	testb	%cl, %cl
	jns	.LBB11_53
# %bb.52:
	movl	$42, __A_VARIABLE(%rip)
	movb	$2, %cl
.LBB11_53:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%ecx, %eax
	jmp	.LBB11_54
.LBB11_20:
	movzbl	261(%rcx), %ecx
	movl	$42, __A_VARIABLE(%rip)
	testb	$1, %cl
	je	.LBB11_22
# %bb.21:
	movl	$42, __A_VARIABLE(%rip)
	testb	$4, %cl
	jne	.LBB11_54
.LBB11_22:
	addb	$1, %al
	xorl	%ecx, %ecx
	cmpb	$2, %al
	movzbl	%al, %eax
	cmovgl	%ecx, %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movsbq	%al, %rdx
	shlq	$4, %rdx
	movq	default_router_list(%rdx), %rdx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdx, %rdx
	je	.LBB11_28
# %bb.23:
	movq	24(%rdx), %rdx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdx, %rdx
	je	.LBB11_28
# %bb.24:
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB11_26
# %bb.25:
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rdi, %rdx
	jne	.LBB11_28
	jmp	.LBB11_54
.LBB11_26:
	movzbl	261(%rdx), %edx
	movl	$42, __A_VARIABLE(%rip)
	testb	$1, %dl
	je	.LBB11_28
# %bb.27:
	movl	$42, __A_VARIABLE(%rip)
	testb	$4, %dl
	jne	.LBB11_54
.LBB11_28:
	addl	$1, %eax
	cmpb	$2, %al
	movzbl	%al, %eax
	cmovgl	%ecx, %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movsbq	%al, %rcx
	shlq	$4, %rcx
	movq	default_router_list(%rcx), %rcx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rcx, %rcx
	je	.LBB11_34
# %bb.29:
	movq	24(%rcx), %rcx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rcx, %rcx
	je	.LBB11_34
# %bb.30:
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB11_32
# %bb.31:
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rdi, %rcx
	jne	.LBB11_34
	jmp	.LBB11_54
.LBB11_32:
	movzbl	261(%rcx), %ecx
	movl	$42, __A_VARIABLE(%rip)
	testb	$1, %cl
	je	.LBB11_34
# %bb.33:
	movl	$42, __A_VARIABLE(%rip)
	testb	$4, %cl
	jne	.LBB11_54
.LBB11_34:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movb	$-1, %al
.LBB11_54:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
                                        # kill: def $al killed $al killed $rax
	retq
.Lfunc_end11:
	.size	nd6_select_router, .Lfunc_end11-nd6_select_router
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
	movq	%rdi, %r12
	movl	(%rdx), %r9d
	movb	nd6_cached_destination_index(%rip), %bl
	movzbl	%bl, %eax
	leaq	(%rax,%rax,2), %rdi
	shlq	$4, %rdi
	cmpl	destination_cache(%rdi), %r9d
	movl	$42, __A_VARIABLE(%rip)
	movq	%rsi, -64(%rbp)         # 8-byte Spill
	movq	%rcx, -48(%rbp)         # 8-byte Spill
	jne	.LBB12_6
# %bb.1:
	movl	4(%rdx), %eax
	cmpl	destination_cache+4(%rdi), %eax
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB12_6
# %bb.2:
	movl	8(%rdx), %eax
	cmpl	destination_cache+8(%rdi), %eax
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB12_6
# %bb.3:
	movl	12(%rdx), %eax
	cmpl	destination_cache+12(%rdi), %eax
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB12_6
# %bb.4:
	movb	16(%rdx), %al
	cmpb	destination_cache+16(%rdi), %al
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB12_6
# %bb.5:
	addw	$1, lwip_stats+308(%rip)
	jmp	.LBB12_92
.LBB12_6:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$destination_cache+16, %edi
	xorl	%ebx, %ebx
	jmp	.LBB12_7
	.p2align	4, 0x90
.LBB12_12:                              #   in Loop: Header=BB12_7 Depth=1
	addq	$1, %rbx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$48, %rdi
	cmpq	$10, %rbx
	jae	.LBB12_13
.LBB12_7:                               # =>This Inner Loop Header: Depth=1
	cmpl	-16(%rdi), %r9d
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB12_12
# %bb.8:                                #   in Loop: Header=BB12_7 Depth=1
	movl	4(%rdx), %eax
	cmpl	-12(%rdi), %eax
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB12_12
# %bb.9:                                #   in Loop: Header=BB12_7 Depth=1
	movl	8(%rdx), %eax
	cmpl	-8(%rdi), %eax
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB12_12
# %bb.10:                               #   in Loop: Header=BB12_7 Depth=1
	movl	12(%rdx), %eax
	cmpl	-4(%rdi), %eax
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB12_12
# %bb.11:                               #   in Loop: Header=BB12_7 Depth=1
	movzbl	16(%rdx), %eax
	cmpb	(%rdi), %al
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB12_12
# %bb.21:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpw	$127, %bx
	jae	.LBB12_141
# %bb.22:
	movb	%bl, nd6_cached_destination_index(%rip)
	jmp	.LBB12_92
.LBB12_13:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$destination_cache+12, %eax
	xorl	%ebx, %ebx
	jmp	.LBB12_14
	.p2align	4, 0x90
.LBB12_18:                              #   in Loop: Header=BB12_14 Depth=1
	addq	$1, %rbx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$48, %rax
	cmpq	$10, %rbx
	jae	.LBB12_19
.LBB12_14:                              # =>This Inner Loop Header: Depth=1
	cmpl	$0, -12(%rax)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB12_18
# %bb.15:                               #   in Loop: Header=BB12_14 Depth=1
	cmpl	$0, -8(%rax)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB12_18
# %bb.16:                               #   in Loop: Header=BB12_14 Depth=1
	cmpl	$0, -4(%rax)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB12_18
# %bb.17:                               #   in Loop: Header=BB12_14 Depth=1
	cmpl	$0, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB12_18
	jmp	.LBB12_43
.LBB12_19:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$0, destination_cache+44(%rip)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB12_20
# %bb.23:
	movl	$42, __A_VARIABLE(%rip)
	xorl	%ebx, %ebx
	jmp	.LBB12_24
.LBB12_20:
	movb	$9, %bl
.LBB12_24:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$0, destination_cache+92(%rip)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB12_26
# %bb.25:
	movl	$42, __A_VARIABLE(%rip)
	movb	$1, %bl
.LBB12_26:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$0, destination_cache+140(%rip)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB12_28
# %bb.27:
	movl	$42, __A_VARIABLE(%rip)
	movb	$2, %bl
.LBB12_28:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$0, destination_cache+188(%rip)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB12_30
# %bb.29:
	movl	$42, __A_VARIABLE(%rip)
	movb	$3, %bl
.LBB12_30:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$0, destination_cache+236(%rip)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB12_32
# %bb.31:
	movl	$42, __A_VARIABLE(%rip)
	movb	$4, %bl
.LBB12_32:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$0, destination_cache+284(%rip)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB12_34
# %bb.33:
	movl	$42, __A_VARIABLE(%rip)
	movb	$5, %bl
.LBB12_34:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$0, destination_cache+332(%rip)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB12_36
# %bb.35:
	movl	$42, __A_VARIABLE(%rip)
	movb	$6, %bl
.LBB12_36:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$0, destination_cache+380(%rip)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB12_38
# %bb.37:
	movl	$42, __A_VARIABLE(%rip)
	movb	$7, %bl
.LBB12_38:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$0, destination_cache+428(%rip)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB12_40
# %bb.39:
	movl	$42, __A_VARIABLE(%rip)
	movb	$8, %bl
.LBB12_40:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$0, destination_cache+476(%rip)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB12_42
# %bb.41:
	movl	$42, __A_VARIABLE(%rip)
	movb	$9, %bl
.LBB12_42:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB12_43:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movb	%bl, nd6_cached_destination_index(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzbl	%bl, %r13d
	testq	%rdx, %rdx
	je	.LBB12_44
# %bb.45:
	movl	$42, __A_VARIABLE(%rip)
	movq	%r13, %rax
	shlq	$4, %rax
	movl	%r9d, destination_cache(%rax,%rax,2)
	movl	$42, __A_VARIABLE(%rip)
	movl	4(%rdx), %ecx
	movl	$42, __A_VARIABLE(%rip)
	leaq	destination_cache+4(%rax,%rax,2), %r15
	movl	%ecx, destination_cache+4(%rax,%rax,2)
	movl	$42, __A_VARIABLE(%rip)
	movl	8(%rdx), %r8d
	movl	$42, __A_VARIABLE(%rip)
	movl	%r8d, destination_cache+8(%rax,%rax,2)
	movl	$42, __A_VARIABLE(%rip)
	movl	12(%rdx), %esi
	movl	$42, __A_VARIABLE(%rip)
	leaq	destination_cache+12(%rax,%rax,2), %rdi
	movl	%esi, destination_cache+12(%rax,%rax,2)
	movl	$42, __A_VARIABLE(%rip)
	movb	16(%rdx), %sil
	jmp	.LBB12_46
.LBB12_44:
	movq	%r13, %rax
	shlq	$4, %rax
	movl	$0, destination_cache(%rax,%rax,2)
	movl	$42, __A_VARIABLE(%rip)
	leaq	(%rax,%rax,2), %r15
	addq	$destination_cache+4, %r15
	movl	$0, destination_cache+4(%rax,%rax,2)
	movl	$42, __A_VARIABLE(%rip)
	movl	$0, destination_cache+8(%rax,%rax,2)
	movl	$42, __A_VARIABLE(%rip)
	leaq	(%rax,%rax,2), %rdi
	addq	$destination_cache+12, %rdi
	movl	$0, destination_cache+12(%rax,%rax,2)
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	xorl	%esi, %esi
.LBB12_46:
	movl	$42, __A_VARIABLE(%rip)
	leaq	(,%r13,2), %r14
	addq	%r13, %r14
	shlq	$4, %r14
	movb	%sil, destination_cache+16(%r14)
	movl	(%rdx), %ecx
	movl	%ecx, %eax
	andl	$49407, %eax            # imm = 0xC0FF
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$33022, %eax            # imm = 0x80FE
	jne	.LBB12_47
.LBB12_88:
	movzwl	252(%r12), %eax
	shlq	$4, %r13
	movw	%ax, destination_cache+40(%r13,%r13,2)
	movl	%r9d, destination_cache+20(%r13,%r13,2)
	movl	(%r15), %eax
	movl	%eax, destination_cache+24(%r13,%r13,2)
	movl	%r8d, destination_cache+28(%r13,%r13,2)
	movl	(%rdi), %eax
	movl	%eax, destination_cache+32(%r13,%r13,2)
	movb	%sil, destination_cache+36(%r13,%r13,2)
	jmp	.LBB12_92
.LBB12_47:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r12, prefix_list+24(%rip)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB12_48
.LBB12_52:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r12, prefix_list+64(%rip)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB12_53
.LBB12_57:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r12, prefix_list+104(%rip)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB12_58
.LBB12_62:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r12, prefix_list+144(%rip)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB12_63
.LBB12_67:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r12, prefix_list+184(%rip)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB12_68
.LBB12_72:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testb	$16, 152(%r12)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB12_77
# %bb.73:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$0, 156(%r12)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB12_77
# %bb.74:
	cmpl	80(%r12), %ecx
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB12_77
# %bb.75:
	movl	4(%rdx), %eax
	cmpl	84(%r12), %eax
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB12_77
# %bb.76:
	movb	16(%rdx), %al
	cmpb	96(%r12), %al
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB12_87
.LBB12_77:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testb	$16, 153(%r12)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB12_82
# %bb.78:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$0, 160(%r12)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB12_82
# %bb.79:
	cmpl	104(%r12), %ecx
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB12_82
# %bb.80:
	movl	4(%rdx), %eax
	cmpl	108(%r12), %eax
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB12_82
# %bb.81:
	movb	16(%rdx), %al
	cmpb	120(%r12), %al
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB12_87
.LBB12_82:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testb	$16, 154(%r12)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB12_89
# %bb.83:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$0, 164(%r12)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB12_89
# %bb.84:
	cmpl	128(%r12), %ecx
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB12_89
# %bb.85:
	movl	4(%rdx), %eax
	cmpl	132(%r12), %eax
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB12_89
# %bb.86:
	movb	16(%rdx), %al
	cmpb	144(%r12), %al
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB12_87
.LBB12_89:
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r12, %rdi
	callq	nd6_select_router
	movl	$42, __A_VARIABLE(%rip)
	testb	%al, %al
	js	.LBB12_90
# %bb.91:
	movzwl	252(%r12), %ecx
	shlq	$4, %r13
	movw	%cx, destination_cache+40(%r13,%r13,2)
	movsbq	%al, %rax
	shlq	$4, %rax
	movq	default_router_list(%rax), %rax
	movl	(%rax), %ecx
	movl	%ecx, destination_cache+20(%r13,%r13,2)
	movl	4(%rax), %ecx
	movl	%ecx, destination_cache+24(%r13,%r13,2)
	movl	8(%rax), %ecx
	movl	%ecx, destination_cache+28(%r13,%r13,2)
	movl	12(%rax), %ecx
	movl	%ecx, destination_cache+32(%r13,%r13,2)
	movb	16(%rax), %al
	movb	%al, destination_cache+36(%r13,%r13,2)
.LBB12_92:
	movl	$42, __A_VARIABLE(%rip)
	movzbl	%bl, %r8d
	movq	%r8, %rdi
	shlq	$4, %rdi
	movl	destination_cache+20(%rdi,%rdi,2), %edx
	movb	nd6_cached_neighbor_index(%rip), %al
	movzbl	%al, %ecx
	imulq	$56, %rcx, %rbx
	leaq	(%rdi,%rdi,2), %rsi
	addq	$destination_cache+24, %rsi
	cmpl	neighbor_cache(%rbx), %edx
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB12_98
# %bb.93:
	movl	(%rsi), %ecx
	cmpl	neighbor_cache+4(%rbx), %ecx
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB12_98
# %bb.94:
	leaq	(%r8,%r8,2), %r9
	shlq	$4, %r9
	movl	destination_cache+28(%r9), %ecx
	cmpl	neighbor_cache+8(%rbx), %ecx
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB12_98
# %bb.95:
	movl	destination_cache+32(%r9), %ecx
	cmpl	neighbor_cache+12(%rbx), %ecx
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB12_98
# %bb.96:
	movb	destination_cache+36(%r9), %cl
	cmpb	neighbor_cache+16(%rbx), %cl
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB12_98
# %bb.97:
	addw	$1, lwip_stats+308(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB12_107
.LBB12_98:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	leaq	(%rdi,%rdi,2), %rdi
	addq	$destination_cache+28, %rdi
	movl	$neighbor_cache+16, %ebx
	xorl	%eax, %eax
	jmp	.LBB12_99
	.p2align	4, 0x90
.LBB12_104:                             #   in Loop: Header=BB12_99 Depth=1
	addq	$1, %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$56, %rbx
	cmpq	$10, %rax
	jae	.LBB12_105
.LBB12_99:                              # =>This Inner Loop Header: Depth=1
	cmpl	-16(%rbx), %edx
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB12_104
# %bb.100:                              #   in Loop: Header=BB12_99 Depth=1
	movl	(%rsi), %ecx
	cmpl	-12(%rbx), %ecx
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB12_104
# %bb.101:                              #   in Loop: Header=BB12_99 Depth=1
	movl	(%rdi), %ecx
	cmpl	-8(%rbx), %ecx
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB12_104
# %bb.102:                              #   in Loop: Header=BB12_99 Depth=1
	movl	4(%rdi), %ecx
	cmpl	-4(%rbx), %ecx
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB12_104
# %bb.103:                              #   in Loop: Header=BB12_99 Depth=1
	movzbl	8(%rdi), %ecx
	cmpb	(%rbx), %cl
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB12_104
# %bb.142:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movb	%al, nd6_cached_neighbor_index(%rip)
	movl	$42, __A_VARIABLE(%rip)
	leaq	(%r8,%r8,2), %rcx
	shlq	$4, %rcx
	movl	$0, destination_cache+44(%rcx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB12_108
.LBB12_105:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	callq	nd6_new_neighbor_cache_entry
	movl	$42, __A_VARIABLE(%rip)
	testb	%al, %al
	js	.LBB12_137
# %bb.106:
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
	movl	$42, __A_VARIABLE(%rip)
	movzbl	nd6_cached_destination_index(%rip), %r8d
	movb	nd6_cached_neighbor_index(%rip), %al
.LBB12_107:
	leaq	(%r8,%r8,2), %rcx
	shlq	$4, %rcx
	movl	$0, destination_cache+44(%rcx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testb	%al, %al
	js	.LBB12_140
.LBB12_108:
	movsbq	%al, %rcx
	imulq	$56, %rcx, %rbx
	movb	neighbor_cache+48(%rbx), %cl
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$3, %cl
	jne	.LBB12_110
# %bb.109:
	leaq	neighbor_cache+48(%rbx), %rax
	movb	$4, (%rax)
	movl	$5, neighbor_cache+52(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	-48(%rbp), %rdx         # 8-byte Reload
	jmp	.LBB12_113
.LBB12_110:
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$2, %cl
	movq	-48(%rbp), %rdx         # 8-byte Reload
	je	.LBB12_113
# %bb.111:
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$4, %cl
	je	.LBB12_113
# %bb.112:
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$5, %cl
	jne	.LBB12_114
.LBB12_113:
	leaq	neighbor_cache+32(%rbx), %rax
	movq	%rax, (%rdx)
	xorl	%eax, %eax
	jmp	.LBB12_140
.LBB12_48:
	cmpl	$0, prefix_list+32(%rip)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB12_52
# %bb.49:
	cmpl	prefix_list(%rip), %ecx
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB12_52
# %bb.50:
	movl	4(%rdx), %eax
	cmpl	prefix_list+4(%rip), %eax
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB12_52
# %bb.51:
	movb	16(%rdx), %al
	cmpb	prefix_list+16(%rip), %al
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB12_52
	jmp	.LBB12_87
.LBB12_53:
	cmpl	$0, prefix_list+72(%rip)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB12_57
# %bb.54:
	cmpl	prefix_list+40(%rip), %ecx
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB12_57
# %bb.55:
	movl	4(%rdx), %eax
	cmpl	prefix_list+44(%rip), %eax
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB12_57
# %bb.56:
	movb	16(%rdx), %al
	cmpb	prefix_list+56(%rip), %al
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB12_57
	jmp	.LBB12_87
.LBB12_58:
	cmpl	$0, prefix_list+112(%rip)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB12_62
# %bb.59:
	cmpl	prefix_list+80(%rip), %ecx
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB12_62
# %bb.60:
	movl	4(%rdx), %eax
	cmpl	prefix_list+84(%rip), %eax
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB12_62
# %bb.61:
	movb	16(%rdx), %al
	cmpb	prefix_list+96(%rip), %al
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB12_62
	jmp	.LBB12_87
.LBB12_63:
	cmpl	$0, prefix_list+152(%rip)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB12_67
# %bb.64:
	cmpl	prefix_list+120(%rip), %ecx
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB12_67
# %bb.65:
	movl	4(%rdx), %eax
	cmpl	prefix_list+124(%rip), %eax
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB12_67
# %bb.66:
	movb	16(%rdx), %al
	cmpb	prefix_list+136(%rip), %al
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB12_67
	jmp	.LBB12_87
.LBB12_68:
	cmpl	$0, prefix_list+192(%rip)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB12_72
# %bb.69:
	cmpl	prefix_list+160(%rip), %ecx
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB12_72
# %bb.70:
	movl	4(%rdx), %eax
	cmpl	prefix_list+164(%rip), %eax
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB12_72
# %bb.71:
	movb	16(%rdx), %al
	cmpb	prefix_list+176(%rip), %al
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB12_72
.LBB12_87:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB12_88
.LBB12_90:
	leaq	destination_cache+16(%r14), %rax
	shlq	$4, %r13
	movl	$0, destination_cache(%r13,%r13,2)
	movl	$0, (%r15)
	movl	$0, destination_cache+8(%r13,%r13,2)
	movq	-56(%rbp), %rcx         # 8-byte Reload
	movl	$0, (%rcx)
	movb	$0, (%rax)
	movb	$-4, %al
	jmp	.LBB12_138
.LBB12_114:
	movq	$0, (%rdx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$9, %al
	movb	$-16, %al
	jg	.LBB12_139
# %bb.115:
	movl	$42, __A_VARIABLE(%rip)
	movq	-64(%rbp), %r12         # 8-byte Reload
	testq	%r12, %r12
	je	.LBB12_136
# %bb.116:                              # %.preheader2
	movq	%r12, %rax
.LBB12_117:                             # =>This Inner Loop Header: Depth=1
	testb	$64, 20(%rax)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB12_118
# %bb.123:                              #   in Loop: Header=BB12_117 Depth=1
	movq	(%rax), %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	jne	.LBB12_117
# %bb.124:
	movl	$42, __A_VARIABLE(%rip)
	movq	%r12, %rdi
	callq	pbuf_ref
	movl	$42, __A_VARIABLE(%rip)
	movq	%r12, %r14
	jmp	.LBB12_125
.LBB12_136:
	movl	$42, __A_VARIABLE(%rip)
	xorl	%edi, %edi
	callq	pbuf_ref
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB12_137
.LBB12_118:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$14, %edi
	movl	$640, %esi              # imm = 0x280
	movq	%r12, %rdx
	callq	pbuf_clone
	movq	%rax, %r14
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	jne	.LBB12_125
# %bb.119:
	leaq	neighbor_cache+40(%rbx), %r15
.LBB12_120:                             # =>This Inner Loop Header: Depth=1
	movq	(%r15), %rdi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB12_137
# %bb.121:                              #   in Loop: Header=BB12_120 Depth=1
	movq	(%rdi), %rax
	movq	%rax, (%r15)
	movq	$0, (%rdi)
	callq	nd6_free_q
	movl	$14, %edi
	movl	$640, %esi              # imm = 0x280
	movq	%r12, %rdx
	callq	pbuf_clone
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB12_120
# %bb.122:
	movq	%rax, %r14
.LBB12_125:
	movl	$42, __A_VARIABLE(%rip)
	movl	$12, %edi
	callq	memp_malloc
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	jne	.LBB12_128
# %bb.126:
	movq	neighbor_cache+40(%rbx), %rdi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB12_128
# %bb.127:
	leaq	neighbor_cache+40(%rbx), %rax
	movq	(%rdi), %rcx
	movq	%rcx, (%rax)
	movq	$0, (%rdi)
	callq	nd6_free_q
	movl	$12, %edi
	callq	memp_malloc
	movl	$42, __A_VARIABLE(%rip)
.LBB12_128:
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB12_135
# %bb.129:
	movq	$0, (%rax)
	movq	%r14, 8(%rax)
	movq	neighbor_cache+40(%rbx), %rcx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rcx, %rcx
	je	.LBB12_130
# %bb.131:
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rcx), %rdx
.LBB12_133:                             # =>This Inner Loop Header: Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdx, %rdx
	je	.LBB12_134
# %bb.132:                              #   in Loop: Header=BB12_133 Depth=1
	movq	%rdx, %rcx
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rdx), %rdx
	jmp	.LBB12_133
.LBB12_135:
	movq	%r14, %rdi
	callq	pbuf_free
.LBB12_137:
	movb	$-1, %al
.LBB12_138:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB12_139:
	movl	$42, __A_VARIABLE(%rip)
.LBB12_140:
	movl	$42, __A_VARIABLE(%rip)
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
.LBB12_130:
	leaq	neighbor_cache+40(%rbx), %rcx
.LBB12_134:
	movq	%rax, (%rcx)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
	jmp	.LBB12_138
.LBB12_141:
	movl	$.L.str.9, %edi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$.L.str.1, %edi
	movl	$.L.str.2, %esi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$3, %edi
	callq	ukplat_terminate
.Lfunc_end12:
	.size	nd6_get_next_hop_addr_or_queue, .Lfunc_end12-nd6_get_next_hop_addr_or_queue
                                        # -- End function
	.globl	nd6_get_destination_mtu # -- Begin function nd6_get_destination_mtu
	.p2align	4, 0x90
	.type	nd6_get_destination_mtu,@function
nd6_get_destination_mtu:                # @nd6_get_destination_mtu
# %bb.0:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	(%rdi), %r8d
	movl	$destination_cache, %eax
	xorl	%edx, %edx
	jmp	.LBB13_1
	.p2align	4, 0x90
.LBB13_6:                               #   in Loop: Header=BB13_1 Depth=1
	addq	$1, %rdx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$48, %rax
	cmpq	$10, %rdx
	jae	.LBB13_7
.LBB13_1:                               # =>This Inner Loop Header: Depth=1
	cmpl	(%rax), %r8d
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB13_6
# %bb.2:                                #   in Loop: Header=BB13_1 Depth=1
	movl	4(%rdi), %ecx
	cmpl	4(%rax), %ecx
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB13_6
# %bb.3:                                #   in Loop: Header=BB13_1 Depth=1
	movl	8(%rdi), %ecx
	cmpl	8(%rax), %ecx
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB13_6
# %bb.4:                                #   in Loop: Header=BB13_1 Depth=1
	movl	12(%rdi), %ecx
	cmpl	12(%rax), %ecx
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB13_6
# %bb.5:                                #   in Loop: Header=BB13_1 Depth=1
	movzbl	16(%rdi), %ecx
	cmpb	16(%rax), %cl
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB13_6
# %bb.8:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	40(%rax), %eax
	movl	$42, __A_VARIABLE(%rip)
	testw	%ax, %ax
	jne	.LBB13_12
	jmp	.LBB13_9
.LBB13_7:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB13_9:
	movl	$42, __A_VARIABLE(%rip)
	testq	%rsi, %rsi
	je	.LBB13_10
# %bb.11:
	movzwl	252(%rsi), %eax
	jmp	.LBB13_12
.LBB13_10:
	movw	$1280, %ax              # imm = 0x500
.LBB13_12:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end13:
	.size	nd6_get_destination_mtu, .Lfunc_end13-nd6_get_destination_mtu
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
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB14_6
# %bb.1:
	movl	4(%rdi), %esi
	cmpl	destination_cache+4(%r8), %esi
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB14_6
# %bb.2:
	movl	8(%rdi), %esi
	cmpl	destination_cache+8(%r8), %esi
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB14_6
# %bb.3:
	movl	12(%rdi), %esi
	cmpl	destination_cache+12(%r8), %esi
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB14_6
# %bb.4:
	movb	16(%rdi), %dl
	cmpb	destination_cache+16(%r8), %dl
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB14_6
# %bb.5:
	addw	$1, lwip_stats+308(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB14_15
.LBB14_6:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$destination_cache+16, %edx
	xorl	%eax, %eax
	jmp	.LBB14_7
	.p2align	4, 0x90
.LBB14_12:                              #   in Loop: Header=BB14_7 Depth=1
	addq	$1, %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$48, %rdx
	cmpq	$10, %rax
	jae	.LBB14_13
.LBB14_7:                               # =>This Inner Loop Header: Depth=1
	cmpl	-16(%rdx), %r9d
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB14_12
# %bb.8:                                #   in Loop: Header=BB14_7 Depth=1
	movl	4(%rdi), %esi
	cmpl	-12(%rdx), %esi
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB14_12
# %bb.9:                                #   in Loop: Header=BB14_7 Depth=1
	movl	8(%rdi), %esi
	cmpl	-8(%rdx), %esi
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB14_12
# %bb.10:                               #   in Loop: Header=BB14_7 Depth=1
	movl	12(%rdi), %esi
	cmpl	-4(%rdx), %esi
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB14_12
# %bb.11:                               #   in Loop: Header=BB14_7 Depth=1
	movzbl	16(%rdi), %ecx
	cmpb	(%rdx), %cl
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB14_12
# %bb.14:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testw	%ax, %ax
	js	.LBB14_34
.LBB14_15:
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
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB14_21
# %bb.16:
	movl	(%r10), %edi
	cmpl	neighbor_cache+4(%r9), %edi
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB14_21
# %bb.17:
	leaq	(%r8,%r8,2), %r8
	shlq	$4, %r8
	movl	destination_cache+28(%r8), %edi
	cmpl	neighbor_cache+8(%r9), %edi
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB14_21
# %bb.18:
	movl	destination_cache+32(%r8), %edi
	cmpl	neighbor_cache+12(%r9), %edi
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB14_21
# %bb.19:
	movb	destination_cache+36(%r8), %dl
	cmpb	neighbor_cache+16(%r9), %dl
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB14_21
# %bb.20:
	addw	$1, lwip_stats+308(%rip)
	jmp	.LBB14_30
.LBB14_13:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB14_34:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	retq
.LBB14_21:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	leaq	(%rsi,%rsi,2), %rsi
	addq	$destination_cache+28, %rsi
	movl	$neighbor_cache+16, %edi
	xorl	%eax, %eax
	jmp	.LBB14_22
	.p2align	4, 0x90
.LBB14_27:                              #   in Loop: Header=BB14_22 Depth=1
	addq	$1, %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$56, %rdi
	cmpq	$10, %rax
	jae	.LBB14_28
.LBB14_22:                              # =>This Inner Loop Header: Depth=1
	cmpl	-16(%rdi), %ecx
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB14_27
# %bb.23:                               #   in Loop: Header=BB14_22 Depth=1
	movl	(%r10), %edx
	cmpl	-12(%rdi), %edx
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB14_27
# %bb.24:                               #   in Loop: Header=BB14_22 Depth=1
	movl	(%rsi), %edx
	cmpl	-8(%rdi), %edx
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB14_27
# %bb.25:                               #   in Loop: Header=BB14_22 Depth=1
	movl	4(%rsi), %edx
	cmpl	-4(%rdi), %edx
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB14_27
# %bb.26:                               #   in Loop: Header=BB14_22 Depth=1
	movzbl	8(%rsi), %edx
	cmpb	(%rdi), %dl
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB14_27
	jmp	.LBB14_29
.LBB14_28:
	movb	$-1, %al
.LBB14_29:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB14_30:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testb	%al, %al
	js	.LBB14_34
# %bb.31:
	movsbq	%al, %rax
	imulq	$56, %rax, %rax
	movb	neighbor_cache+48(%rax), %cl
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$1, %cl
	je	.LBB14_34
# %bb.32:
	movl	$42, __A_VARIABLE(%rip)
	testb	%cl, %cl
	je	.LBB14_34
# %bb.33:
	leaq	neighbor_cache+48(%rax), %rcx
	movb	$2, (%rcx)
	movl	reachable_time(%rip), %ecx
	movl	%ecx, neighbor_cache+52(%rax)
	jmp	.LBB14_34
.Lfunc_end14:
	.size	nd6_reachability_hint, .Lfunc_end14-nd6_reachability_hint
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4               # -- Begin function nd6_cleanup_netif
.LCPI15_0:
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
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rdi, prefix_list+24(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB15_2
# %bb.1:
	movq	$0, prefix_list+24(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB15_2:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r14, prefix_list+64(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB15_4
# %bb.3:
	movq	$0, prefix_list+64(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB15_4:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r14, prefix_list+104(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB15_6
# %bb.5:
	movq	$0, prefix_list+104(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB15_6:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r14, prefix_list+144(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB15_8
# %bb.7:
	movq	$0, prefix_list+144(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB15_8:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r14, prefix_list+184(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB15_10
# %bb.9:
	movq	$0, prefix_list+184(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB15_10:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%ebx, %ebx
	jmp	.LBB15_11
	.p2align	4, 0x90
.LBB15_19:                              #   in Loop: Header=BB15_11 Depth=1
	movw	$0, neighbor_cache+48(%rbx)
	movq	$0, neighbor_cache+24(%rbx)
	movl	$0, neighbor_cache+52(%rbx)
	xorps	%xmm0, %xmm0
	movups	%xmm0, neighbor_cache(%rbx)
	movb	$0, neighbor_cache+16(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB15_20:                              #   in Loop: Header=BB15_11 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$56, %rbx
	cmpq	$560, %rbx              # imm = 0x230
	je	.LBB15_21
.LBB15_11:                              # =>This Inner Loop Header: Depth=1
	cmpq	%r14, neighbor_cache+24(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB15_20
# %bb.12:                               #   in Loop: Header=BB15_11 Depth=1
	leaq	neighbor_cache(%rbx), %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	default_router_list(%rip), %rax
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB15_14
# %bb.13:                               #   in Loop: Header=BB15_11 Depth=1
	movq	$0, default_router_list(%rip)
	movb	$0, default_router_list+12(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB15_14:                              #   in Loop: Header=BB15_11 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	default_router_list+16(%rip), %rax
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB15_16
# %bb.15:                               #   in Loop: Header=BB15_11 Depth=1
	movq	$0, default_router_list+16(%rip)
	movb	$0, default_router_list+28(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB15_16:                              #   in Loop: Header=BB15_11 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	default_router_list+32(%rip), %rax
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB15_17
# %bb.22:                               #   in Loop: Header=BB15_11 Depth=1
	movq	$0, default_router_list+32(%rip)
	movb	$0, default_router_list+44(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB15_17:                              #   in Loop: Header=BB15_11 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movb	$0, neighbor_cache+49(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	neighbor_cache+40(%rbx), %rdi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB15_19
# %bb.18:                               #   in Loop: Header=BB15_11 Depth=1
	callq	nd6_free_q
	movq	$0, neighbor_cache+40(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB15_19
.LBB15_21:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	xorps	%xmm0, %xmm0
	movaps	%xmm0, destination_cache(%rip)
	movb	$0, destination_cache+16(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movaps	%xmm0, destination_cache+48(%rip)
	movb	$0, destination_cache+64(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movaps	%xmm0, destination_cache+96(%rip)
	movb	$0, destination_cache+112(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movaps	%xmm0, destination_cache+144(%rip)
	movb	$0, destination_cache+160(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movaps	%xmm0, destination_cache+192(%rip)
	movb	$0, destination_cache+208(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movaps	%xmm0, destination_cache+240(%rip)
	movb	$0, destination_cache+256(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movaps	%xmm0, destination_cache+288(%rip)
	movb	$0, destination_cache+304(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movaps	%xmm0, destination_cache+336(%rip)
	movb	$0, destination_cache+352(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movaps	%xmm0, destination_cache+384(%rip)
	movb	$0, destination_cache+400(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movaps	%xmm0, destination_cache+432(%rip)
	movb	$0, destination_cache+448(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end15:
	.size	nd6_cleanup_netif, .Lfunc_end15-nd6_cleanup_netif
                                        # -- End function
	.globl	nd6_adjust_mld_membership # -- Begin function nd6_adjust_mld_membership
	.p2align	4, 0x90
	.type	nd6_adjust_mld_membership,@function
nd6_adjust_mld_membership:              # @nd6_adjust_mld_membership
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movslq	%esi, %rsi
	movb	152(%rdi,%rsi), %al
	xorl	%ecx, %ecx
	movl	$42, __A_VARIABLE(%rip)
	testb	%al, %al
	je	.LBB16_3
# %bb.1:
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$64, %al
	je	.LBB16_3
# %bb.2:
	xorl	%ecx, %ecx
	cmpb	$8, %al
	setne	%cl
	movl	$42, __A_VARIABLE(%rip)
.LBB16_3:
	movl	$42, __A_VARIABLE(%rip)
	testb	%dl, %dl
	je	.LBB16_6
# %bb.4:
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$64, %dl
	jne	.LBB16_7
.LBB16_6:
	xorl	%edx, %edx
	jmp	.LBB16_8
.LBB16_7:
	cmpb	$8, %dl
	setne	%dl
	movl	$42, __A_VARIABLE(%rip)
.LBB16_8:
	movzbl	%dl, %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%eax, %ecx
	je	.LBB16_13
# %bb.9:
	movq	$767, multicast_address(%rip) # imm = 0x2FF
	movl	$16777216, multicast_address+8(%rip) # imm = 0x1000000
	leaq	(%rsi,%rsi,2), %rax
	movl	$255, %ecx
	orl	92(%rdi,%rax,8), %ecx
	movl	%ecx, multicast_address+12(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movb	264(%rdi), %al
	addb	$1, %al
	movl	$42, __A_VARIABLE(%rip)
	movb	%al, multicast_address+16(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$multicast_address, %esi
	testb	%dl, %dl
	je	.LBB16_11
# %bb.10:
	callq	mld6_joingroup_netif
	jmp	.LBB16_12
.LBB16_11:
	callq	mld6_leavegroup_netif
.LBB16_12:
	movl	$42, __A_VARIABLE(%rip)
.LBB16_13:
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end16:
	.size	nd6_adjust_mld_membership, .Lfunc_end16-nd6_adjust_mld_membership
                                        # -- End function
	.globl	nd6_restart_netif       # -- Begin function nd6_restart_netif
	.p2align	4, 0x90
	.type	nd6_restart_netif,@function
nd6_restart_netif:                      # @nd6_restart_netif
# %bb.0:
	movb	$3, 266(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end17:
	.size	nd6_restart_netif, .Lfunc_end17-nd6_restart_netif
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function nd6_free_q
	.type	nd6_free_q,@function
nd6_free_q:                             # @nd6_free_q
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB18_1
# %bb.3:
	movq	%rdi, %rbx
	movq	8(%rdi), %rdi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB18_8
# %bb.4:
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rbx), %rax
	movl	$42, __A_VARIABLE(%rip)
	.p2align	4, 0x90
.LBB18_5:                               # =>This Inner Loop Header: Depth=1
	movq	%rbx, %r14
	movq	%rax, %rbx
	callq	pbuf_free
	movl	$12, %edi
	movq	%r14, %rsi
	callq	memp_free
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	je	.LBB18_9
# %bb.6:                                #   in Loop: Header=BB18_5 Depth=1
	movq	(%rbx), %rax
	movq	8(%rbx), %rdi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	jne	.LBB18_5
# %bb.7:
	movl	$.L.str.8, %edi
.LBB18_2:
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$.L.str.1, %edi
	movl	$.L.str.2, %esi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$3, %edi
	callq	ukplat_terminate
.LBB18_9:
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.LBB18_1:
	movl	$.L.str.6, %edi
	jmp	.LBB18_2
.LBB18_8:
	movl	$.L.str.7, %edi
	jmp	.LBB18_2
.Lfunc_end18:
	.size	nd6_free_q, .Lfunc_end18-nd6_free_q
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
	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
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
