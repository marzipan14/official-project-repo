	.text
	.file	"tcp_out.c"
	.globl	tcp_write               # -- Begin function tcp_write
	.p2align	4, 0x90
	.type	tcp_write,@function
tcp_write:                              # @tcp_write
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$136, %rsp
	movl	%ecx, -76(%rbp)         # 4-byte Spill
	movw	$0, -42(%rbp)
	testq	%rdi, %rdi
	je	.LBB0_107
# %bb.1:
	movq	%rsi, %r12
	movzwl	110(%rdi), %eax
	movl	164(%rdi), %ecx
	movl	%ecx, %esi
	shrl	%esi
	cmpl	$131070, %ecx           # imm = 0x1FFFE
	movzwl	%si, %ecx
	movl	$65535, %ebx            # imm = 0xFFFF
	cmovbl	%ecx, %ebx
	cmpl	%eax, %ebx
	cmoval	%eax, %ebx
	testl	%ebx, %ebx
	cmovel	%eax, %ebx
	testq	%r12, %r12
	je	.LBB0_108
# %bb.2:
	movl	72(%rdi), %ecx
	movb	$-11, %al
	cmpl	$7, %ecx
	ja	.LBB0_9
# %bb.3:
	movl	$156, %esi
	btl	%ecx, %esi
	jae	.LBB0_9
# %bb.4:
	testw	%dx, %dx
	je	.LBB0_11
# %bb.5:
	movzwl	%dx, %eax
	cmpl	%eax, 168(%rdi)
	jb	.LBB0_8
# %bb.6:
	movzwl	172(%rdi), %r14d
	cmpl	$1436, %r14d            # imm = 0x59C
	jb	.LBB0_22
# %bb.7:
	addw	$1, lwip_stats+156(%rip)
.LBB0_8:
	orb	$-128, 82(%rdi)
	movb	$-1, %al
.LBB0_9:
	movl	$42, __A_VARIABLE(%rip)
.LBB0_10:
	movl	$42, __A_VARIABLE(%rip)
                                        # kill: def $al killed $al killed $eax
	addq	$136, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB0_11:
	leaq	172(%rdi), %r8
	movzwl	172(%rdi), %r14d
.LBB0_12:
	movl	$42, __A_VARIABLE(%rip)
	leaq	184(%rdi), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	movq	184(%rdi), %rax
	movzbl	-76(%rbp), %ecx         # 1-byte Folded Reload
	movl	%ecx, -124(%rbp)        # 4-byte Spill
	testq	%rax, %rax
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	movl	%edx, -100(%rbp)        # 4-byte Spill
	movl	%ebx, -96(%rbp)         # 4-byte Spill
	movq	%r12, -144(%rbp)        # 8-byte Spill
	movq	%r8, -160(%rbp)         # 8-byte Spill
	je	.LBB0_20
	.p2align	4, 0x90
.LBB0_13:                               # =>This Inner Loop Header: Depth=1
	movq	%rax, %r15
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.LBB0_13
# %bb.14:
	movzbl	18(%r15), %eax
	movl	%eax, %esi
	andl	$1, %esi
	shrl	%eax
	andl	$4, %eax
	movzwl	16(%r15), %r9d
	addl	%r9d, %eax
	leal	(%rax,%rsi,4), %esi
	movl	%ebx, %eax
	subl	%esi, %eax
	jb	.LBB0_111
# %bb.15:
	movzwl	174(%rdi), %edi
	movw	%di, -42(%rbp)
	testl	%edi, %edi
	je	.LBB0_26
# %bb.16:
	movzwl	%ax, %ecx
	cmpl	%edi, %ecx
	jb	.LBB0_112
# %bb.17:
	movzwl	%dx, %esi
	cmpl	%esi, %edi
	cmovbl	%edi, %esi
	cmpl	%esi, %ecx
	cmovlel	%ecx, %esi
	subl	%esi, %edi
	movw	%di, -42(%rbp)
	subl	%esi, %eax
	movq	%rsi, %rcx
	movq	%r15, %r13
	cmpw	%dx, %si
	je	.LBB0_27
# %bb.18:
	testw	%di, %di
	movq	%rcx, %rdi
	je	.LBB0_28
# %bb.19:
	movl	$.L.str.6, %edi
	jmp	.LBB0_117
.LBB0_20:
	cmpw	$0, 174(%rdi)
	jne	.LBB0_113
# %bb.21:
	movzwl	%dx, %eax
	movl	%eax, -92(%rbp)         # 4-byte Spill
	xorl	%eax, %eax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	xorl	%r12d, %r12d
	xorl	%r13d, %r13d
	xorl	%r15d, %r15d
	jmp	.LBB0_39
.LBB0_22:
	leaq	172(%rdi), %r8
	movq	192(%rdi), %rax
	testw	%r14w, %r14w
	je	.LBB0_84
# %bb.23:
	testq	%rax, %rax
	jne	.LBB0_12
# %bb.24:
	cmpq	$0, 184(%rdi)
	jne	.LBB0_12
# %bb.25:
	movl	$.L.str.42, %edi
	jmp	.LBB0_117
.LBB0_26:
	xorl	%r13d, %r13d
	xorl	%edi, %edi
	jmp	.LBB0_28
.LBB0_27:
	movq	%rcx, %rdi
.LBB0_28:
	movzwl	%dx, %esi
	movl	%esi, -92(%rbp)         # 4-byte Spill
	cmpw	%dx, %di
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	jae	.LBB0_38
# %bb.29:
	xorl	%ecx, %ecx
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	movl	$0, %ecx
	movq	%rcx, -112(%rbp)        # 8-byte Spill
	testw	%r9w, %r9w
	je	.LBB0_83
# %bb.30:
	testw	%ax, %ax
	je	.LBB0_83
# %bb.31:
	movzwl	-72(%rbp), %edi         # 2-byte Folded Reload
	movzwl	%ax, %ecx
	movl	-92(%rbp), %esi         # 4-byte Reload
	movl	%esi, %r13d
	subl	%edi, %r13d
	cmpl	%ecx, %r13d
	cmovgl	%ecx, %r13d
	testb	$1, -76(%rbp)           # 1-byte Folded Reload
	jne	.LBB0_89
# %bb.32:
	movq	8(%r15), %rcx
	.p2align	4, 0x90
.LBB0_33:                               # =>This Inner Loop Header: Depth=1
	movq	%rcx, %rax
	movq	(%rcx), %rcx
	testq	%rcx, %rcx
	jne	.LBB0_33
# %bb.34:
	cmpb	$63, 20(%rax)
	ja	.LBB0_36
# %bb.35:
	movzwl	18(%rax), %ecx
	addq	8(%rax), %rcx
	cmpq	%r12, %rcx
	je	.LBB0_105
.LBB0_36:
	movq	%rdi, %rbx
	movzwl	%r13w, %esi
	xorl	%edi, %edi
	movl	$1, %edx
	callq	pbuf_alloc
	testq	%rax, %rax
	je	.LBB0_104
# %bb.37:
	addq	%r12, %rbx
	movq	%rbx, 8(%rax)
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	jmp	.LBB0_91
.LBB0_38:
	xorl	%eax, %eax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	movl	%edi, %r12d
.LBB0_39:
	xorl	%eax, %eax
	movq	%rax, -56(%rbp)         # 8-byte Spill
.LBB0_40:
	movl	%r14d, -120(%rbp)       # 4-byte Spill
	cmpw	%dx, %r12w
	jae	.LBB0_57
# %bb.41:
	xorl	%esi, %esi
	movzwl	%bx, %eax
	movl	%eax, -148(%rbp)        # 4-byte Spill
	xorl	%ecx, %ecx
	jmp	.LBB0_44
	.p2align	4, 0x90
.LBB0_42:                               #   in Loop: Header=BB0_44 Depth=1
	movq	%r13, (%rcx)
	movq	%rax, %rcx
.LBB0_43:                               #   in Loop: Header=BB0_44 Depth=1
	addl	%r14d, %r12d
	movq	%r13, %rsi
	movq	%rcx, %rax
	cmpw	%dx, %r12w
	jae	.LBB0_58
.LBB0_44:                               # =>This Inner Loop Header: Depth=1
	movl	%edx, %eax
	subl	%r12d, %eax
	movzwl	%ax, %r14d
	cmpl	%r14d, %ebx
	cmovbel	%ebx, %r14d
	movzwl	%r12w, %r12d
	testb	$1, -76(%rbp)           # 1-byte Folded Reload
	movq	%rcx, -88(%rbp)         # 8-byte Spill
	movq	%rsi, -168(%rbp)        # 8-byte Spill
	jne	.LBB0_49
# %bb.45:                               #   in Loop: Header=BB0_44 Depth=1
	cmpw	$0, -42(%rbp)
	jne	.LBB0_109
# %bb.46:                               #   in Loop: Header=BB0_44 Depth=1
	movzwl	%r14w, %esi
	movl	$74, %edi
	movl	$1, %edx
	callq	pbuf_alloc
	testq	%rax, %rax
	je	.LBB0_94
# %bb.47:                               #   in Loop: Header=BB0_44 Depth=1
	movq	%rax, %r13
	movl	%r12d, %eax
	addq	-144(%rbp), %rax        # 8-byte Folded Reload
	movq	%rax, 8(%r13)
	movl	$74, %edi
	xorl	%esi, %esi
	movl	$640, %edx              # imm = 0x280
	callq	pbuf_alloc
	testq	%rax, %rax
	je	.LBB0_93
# %bb.48:                               #   in Loop: Header=BB0_44 Depth=1
	movq	%rax, %rbx
	movq	%rax, %rdi
	movq	%r13, %rsi
	callq	pbuf_cat
	movq	-64(%rbp), %r13         # 8-byte Reload
	jmp	.LBB0_52
	.p2align	4, 0x90
.LBB0_49:                               #   in Loop: Header=BB0_44 Depth=1
	xorl	%eax, %eax
	testq	%rcx, %rcx
	sete	%al
	movl	%eax, (%rsp)
	movzwl	%r14w, %esi
	movl	$74, %edi
	movl	-148(%rbp), %edx        # 4-byte Reload
	leaq	-42(%rbp), %rcx
	movq	-64(%rbp), %r13         # 8-byte Reload
	movq	%r13, %r8
	movl	-124(%rbp), %r9d        # 4-byte Reload
	callq	tcp_pbuf_prealloc
	testq	%rax, %rax
	je	.LBB0_95
# %bb.50:                               #   in Loop: Header=BB0_44 Depth=1
	movq	%rax, %rbx
	movzwl	18(%rax), %eax
	cmpl	%eax, %r14d
	jg	.LBB0_110
# %bb.51:                               #   in Loop: Header=BB0_44 Depth=1
	movq	8(%rbx), %rdi
	movl	%r12d, %esi
	addq	-144(%rbp), %rsi        # 8-byte Folded Reload
	movl	%r14d, %edx
	callq	memcpy
.LBB0_52:                               #   in Loop: Header=BB0_44 Depth=1
	movq	%rbx, %rdi
	callq	pbuf_clen
                                        # kill: def $ax killed $ax def $eax
	movl	-120(%rbp), %ecx        # 4-byte Reload
	addl	%eax, %ecx
	movl	%ecx, -120(%rbp)        # 4-byte Spill
	movzwl	%cx, %eax
	cmpl	$1437, %eax             # imm = 0x59D
	jae	.LBB0_87
# %bb.53:                               #   in Loop: Header=BB0_44 Depth=1
	movl	156(%r13), %ecx
	addl	%r12d, %ecx
	movq	%r13, %rdi
	movq	%rbx, %rsi
	xorl	%edx, %edx
	xorl	%r8d, %r8d
	callq	tcp_create_segment
	testq	%rax, %rax
	je	.LBB0_94
# %bb.54:                               #   in Loop: Header=BB0_44 Depth=1
	movq	%rax, %r13
	movq	%rax, %rcx
	movq	-88(%rbp), %rax         # 8-byte Reload
	testq	%rax, %rax
	movl	-100(%rbp), %edx        # 4-byte Reload
	movl	-96(%rbp), %ebx         # 4-byte Reload
	je	.LBB0_43
# %bb.55:                               #   in Loop: Header=BB0_44 Depth=1
	movq	-168(%rbp), %rcx        # 8-byte Reload
	testq	%rcx, %rcx
	jne	.LBB0_42
# %bb.56:
	movl	$.L.str.11, %edi
	jmp	.LBB0_117
.LBB0_57:
	xorl	%eax, %eax
.LBB0_58:
	movq	%rax, -88(%rbp)         # 8-byte Spill
	movq	-72(%rbp), %rcx         # 8-byte Reload
	testw	%cx, %cx
	je	.LBB0_65
# %bb.59:
	movq	8(%r15), %rbx
	testq	%rbx, %rbx
	movq	-144(%rbp), %r12        # 8-byte Reload
	je	.LBB0_64
# %bb.60:
	movzwl	%cx, %r14d
	jmp	.LBB0_62
	.p2align	4, 0x90
.LBB0_61:                               #   in Loop: Header=BB0_62 Depth=1
	movq	%rax, %rbx
	testq	%rax, %rax
	je	.LBB0_64
.LBB0_62:                               # =>This Inner Loop Header: Depth=1
	addw	%cx, 16(%rbx)
	movq	(%rbx), %rax
	testq	%rax, %rax
	jne	.LBB0_61
# %bb.63:                               #   in Loop: Header=BB0_62 Depth=1
	movzwl	18(%rbx), %edi
	addq	8(%rbx), %rdi
	movq	%r12, %rsi
	movq	%r14, %rdx
	callq	memcpy
	movq	-72(%rbp), %rcx         # 8-byte Reload
	addw	%cx, 18(%rbx)
	movq	(%rbx), %rax
	jmp	.LBB0_61
.LBB0_64:
	addw	%cx, 16(%r15)
.LBB0_65:
	movzwl	-42(%rbp), %eax
	movq	-64(%rbp), %rcx         # 8-byte Reload
	movw	%ax, 174(%rcx)
	movq	-56(%rbp), %rbx         # 8-byte Reload
	testq	%rbx, %rbx
	je	.LBB0_68
# %bb.66:
	testq	%r15, %r15
	movl	-120(%rbp), %r14d       # 4-byte Reload
	je	.LBB0_114
# %bb.67:
	movq	8(%r15), %rdi
	movq	%rbx, %rsi
	callq	pbuf_cat
	movzwl	16(%rbx), %edx
	jmp	.LBB0_73
.LBB0_68:
	movq	-112(%rbp), %rdx        # 8-byte Reload
	testw	%dx, %dx
	movl	-120(%rbp), %r14d       # 4-byte Reload
	je	.LBB0_88
# %bb.69:
	testq	%r15, %r15
	je	.LBB0_115
# %bb.70:
	movq	8(%r15), %rax
	testq	%rax, %rax
	je	.LBB0_115
	.p2align	4, 0x90
.LBB0_71:                               # =>This Inner Loop Header: Depth=1
	movq	%rax, %rcx
	movq	(%rax), %rax
	addw	%dx, 16(%rcx)
	testq	%rax, %rax
	jne	.LBB0_71
# %bb.72:
	addw	%dx, 18(%rcx)
.LBB0_73:
	addw	%dx, 16(%r15)
	movq	-88(%rbp), %rcx         # 8-byte Reload
.LBB0_74:
	movq	%r15, %rax
.LBB0_75:
	movq	%rcx, (%rax)
	movq	-64(%rbp), %rax         # 8-byte Reload
	movl	-92(%rbp), %ecx         # 4-byte Reload
	addl	%ecx, 156(%rax)
	subl	%ecx, 168(%rax)
	movw	%r14w, 172(%rax)
	testw	%r14w, %r14w
	je	.LBB0_78
# %bb.76:
	cmpq	$0, 192(%rax)
	jne	.LBB0_78
# %bb.77:
	movq	-136(%rbp), %rax        # 8-byte Reload
	cmpq	$0, (%rax)
	je	.LBB0_103
.LBB0_78:
	xorl	%eax, %eax
	testq	%r13, %r13
	je	.LBB0_10
# %bb.79:
	testb	$2, -76(%rbp)           # 1-byte Folded Reload
	jne	.LBB0_10
# %bb.80:
	movq	24(%r13), %rcx
	testq	%rcx, %rcx
	je	.LBB0_10
# %bb.81:
	movzwl	12(%rcx), %ebx
	movl	$8, %edi
	callq	lwip_htons
	orw	%bx, %ax
	movq	24(%r13), %rcx
	movw	%ax, 12(%rcx)
	xorl	%eax, %eax
	jmp	.LBB0_10
.LBB0_83:
	movq	-72(%rbp), %rax         # 8-byte Reload
	movl	%eax, %r12d
	jmp	.LBB0_40
.LBB0_84:
	testq	%rax, %rax
	jne	.LBB0_116
# %bb.85:
	cmpq	$0, 184(%rdi)
	jne	.LBB0_116
# %bb.86:
	xorl	%r14d, %r14d
	jmp	.LBB0_12
.LBB0_87:
	movq	%rbx, %rdi
	callq	pbuf_free
	jmp	.LBB0_95
.LBB0_88:
	movq	-136(%rbp), %rax        # 8-byte Reload
	testq	%r15, %r15
	movq	-88(%rbp), %rcx         # 8-byte Reload
	jne	.LBB0_74
	jmp	.LBB0_75
.LBB0_89:
	movq	%rdi, -120(%rbp)        # 8-byte Spill
	movl	$1, (%rsp)
	movzwl	%r13w, %esi
	movzwl	%ax, %edx
	leaq	-42(%rbp), %rcx
	xorl	%edi, %edi
	movq	-64(%rbp), %r8          # 8-byte Reload
	movl	-124(%rbp), %r9d        # 4-byte Reload
	callq	tcp_pbuf_prealloc
	testq	%rax, %rax
	je	.LBB0_104
# %bb.90:
	movq	%rax, %rbx
	movq	8(%rax), %rdi
	movq	-120(%rbp), %rsi        # 8-byte Reload
	addq	%r12, %rsi
	movzwl	%r13w, %edx
	callq	memcpy
	movq	%rbx, -56(%rbp)         # 8-byte Spill
	movq	%rbx, %rdi
.LBB0_91:
	callq	pbuf_clen
                                        # kill: def $ax killed $ax def $eax
	addl	%eax, %r14d
	xorl	%eax, %eax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	movl	-100(%rbp), %edx        # 4-byte Reload
	movl	-96(%rbp), %ebx         # 4-byte Reload
.LBB0_92:
	movq	-72(%rbp), %rax         # 8-byte Reload
	leal	(%rax,%r13), %r12d
	movq	%r15, %r13
	jmp	.LBB0_40
.LBB0_93:
	movq	%r13, %rdi
	callq	pbuf_free
.LBB0_94:
	movq	-64(%rbp), %r13         # 8-byte Reload
.LBB0_95:
	movq	-56(%rbp), %rdi         # 8-byte Reload
.LBB0_96:
	orb	$-128, 82(%r13)
	addw	$1, lwip_stats+156(%rip)
	testq	%rdi, %rdi
	movq	-160(%rbp), %rbx        # 8-byte Reload
	je	.LBB0_98
# %bb.97:
	callq	pbuf_free
.LBB0_98:
	movq	-88(%rbp), %rdi         # 8-byte Reload
	testq	%rdi, %rdi
	je	.LBB0_100
# %bb.99:
	callq	tcp_segs_free
.LBB0_100:
	movb	$-1, %al
	cmpw	$0, (%rbx)
	je	.LBB0_10
# %bb.101:
	cmpq	$0, 192(%r13)
	jne	.LBB0_10
# %bb.102:
	movq	-136(%rbp), %rcx        # 8-byte Reload
	cmpq	$0, (%rcx)
	jne	.LBB0_10
.LBB0_103:
	movl	$.L.str.14, %edi
	jmp	.LBB0_117
.LBB0_104:
	xorl	%eax, %eax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	xorl	%edi, %edi
	movq	-64(%rbp), %r13         # 8-byte Reload
	jmp	.LBB0_96
.LBB0_105:
	cmpw	$0, -72(%rbp)           # 2-byte Folded Reload
	jne	.LBB0_118
# %bb.106:
	xorl	%eax, %eax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	movl	%r13d, %eax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	jmp	.LBB0_92
.LBB0_107:
	movl	$.L.str, %edi
	jmp	.LBB0_117
.LBB0_108:
	movl	$.L.str.3, %edi
	jmp	.LBB0_117
.LBB0_109:
	movl	$.L.str.10, %edi
	jmp	.LBB0_117
.LBB0_110:
	movl	$.L.str.9, %edi
	jmp	.LBB0_117
.LBB0_111:
	movl	$.L.str.4, %edi
	jmp	.LBB0_117
.LBB0_112:
	movl	$.L.str.5, %edi
	jmp	.LBB0_117
.LBB0_113:
	movl	$.L.str.8, %edi
	jmp	.LBB0_117
.LBB0_114:
	movl	$.L.str.12, %edi
	jmp	.LBB0_117
.LBB0_115:
	movl	$.L.str.13, %edi
	jmp	.LBB0_117
.LBB0_116:
	movl	$.L.str.43, %edi
.LBB0_117:
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$.L.str.1, %edi
	movl	$.L.str.2, %esi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$3, %edi
	callq	ukplat_terminate
.LBB0_118:
	movl	$.L.str.7, %edi
	jmp	.LBB0_117
.Lfunc_end0:
	.size	tcp_write, .Lfunc_end0-tcp_write
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
	je	.LBB1_2
# %bb.1:
	movaps	%xmm0, -160(%rbp)
	movaps	%xmm1, -144(%rbp)
	movaps	%xmm2, -128(%rbp)
	movaps	%xmm3, -112(%rbp)
	movaps	%xmm4, -96(%rbp)
	movaps	%xmm5, -80(%rbp)
	movaps	%xmm6, -64(%rbp)
	movaps	%xmm7, -48(%rbp)
.LBB1_2:
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
	movl	$uk_pr_crit.__str.40, %edx
	xorl	%edi, %edi
	movl	$198, %ecx
	movq	%r10, %r8
	callq	_uk_vprintk
	movl	$42, __A_VARIABLE(%rip)
	addq	$208, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	uk_pr_crit, .Lfunc_end1-uk_pr_crit
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function tcp_pbuf_prealloc
	.type	tcp_pbuf_prealloc,@function
tcp_pbuf_prealloc:                      # @tcp_pbuf_prealloc
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	testq	%rcx, %rcx
	je	.LBB2_1
# %bb.3:
	testq	%r8, %r8
	je	.LBB2_4
# %bb.5:
	movq	%rcx, %r14
	movl	%esi, %ebx
	movl	%ebx, %eax
	cmpw	%dx, %bx
	jae	.LBB2_12
# %bb.6:
	testb	$2, %r9b
	jne	.LBB2_11
# %bb.7:
	testb	$64, 82(%r8)
	movl	%ebx, %eax
	jne	.LBB2_12
# %bb.8:
	cmpb	$0, 16(%rbp)
	je	.LBB2_11
# %bb.9:
	cmpq	$0, 184(%r8)
	jne	.LBB2_11
# %bb.10:
	cmpq	$0, 192(%r8)
	movl	%ebx, %eax
	je	.LBB2_12
.LBB2_11:
	movzwl	%bx, %eax
	movzwl	%dx, %ecx
	addl	$1460, %eax             # imm = 0x5B4
	cmpl	%ecx, %eax
	cmoval	%ecx, %eax
.LBB2_12:
	movzwl	%ax, %esi
	movl	$640, %edx              # imm = 0x280
	callq	pbuf_alloc
	testq	%rax, %rax
	je	.LBB2_16
# %bb.13:
	cmpq	$0, (%rax)
	jne	.LBB2_14
# %bb.15:
	movzwl	18(%rax), %ecx
	subl	%ebx, %ecx
	movw	%cx, (%r14)
	movw	%bx, 16(%rax)
	movw	%bx, 18(%rax)
.LBB2_16:
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.LBB2_1:
	movl	$.L.str.44, %edi
	jmp	.LBB2_2
.LBB2_4:
	movl	$.L.str.45, %edi
	jmp	.LBB2_2
.LBB2_14:
	movl	$.L.str.46, %edi
.LBB2_2:
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$.L.str.1, %edi
	movl	$.L.str.2, %esi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$3, %edi
	callq	ukplat_terminate
.Lfunc_end2:
	.size	tcp_pbuf_prealloc, .Lfunc_end2-tcp_pbuf_prealloc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function tcp_create_segment
	.type	tcp_create_segment,@function
tcp_create_segment:                     # @tcp_create_segment
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
	je	.LBB3_1
# %bb.3:
	movq	%rsi, %r13
	movl	%edx, -44(%rbp)         # 4-byte Spill
	testq	%rsi, %rsi
	je	.LBB3_4
# %bb.5:
	movl	%r8d, %r14d
	movl	%ecx, %r15d
	movq	%rdi, %r12
	movl	$3, %edi
	callq	memp_malloc
	testq	%rax, %rax
	je	.LBB3_6
# %bb.7:
	movq	%rax, %rbx
	leal	(,%r14,4), %eax
	andb	$4, %al
	movl	%r14d, %ecx
	shrb	%cl
	andb	$4, %cl
	addb	%al, %cl
	movb	%r14b, 18(%rbx)
	movq	$0, (%rbx)
	movq	%r13, 8(%rbx)
	movzwl	16(%r13), %eax
	movzbl	%cl, %r14d
	cmpl	%r14d, %eax
	jb	.LBB3_8
# %bb.9:
	subl	%r14d, %eax
	movw	%ax, 16(%rbx)
	movl	$20, %esi
	movq	%r13, %rdi
	callq	pbuf_add_header
	testb	%al, %al
	je	.LBB3_11
# %bb.10:
	addw	$1, lwip_stats+164(%rip)
	movq	%rbx, %rdi
	callq	tcp_seg_free
	xorl	%ebx, %ebx
	jmp	.LBB3_12
.LBB3_6:
	movq	%r13, %rdi
	callq	pbuf_free
	xorl	%ebx, %ebx
	jmp	.LBB3_12
.LBB3_11:
	movq	8(%rbx), %rax
	movq	8(%rax), %rax
	movq	%rax, 24(%rbx)
	movzwl	78(%r12), %edi
	callq	lwip_htons
	movq	24(%rbx), %rcx
	movw	%ax, (%rcx)
	movzwl	80(%r12), %edi
	callq	lwip_htons
	movq	24(%rbx), %rcx
	movw	%ax, 2(%rcx)
	movl	%r15d, %edi
	callq	lwip_htonl
	movq	24(%rbx), %rcx
	movl	%eax, 4(%rcx)
	movzwl	%r14w, %eax
	shll	$10, %eax
	movzbl	-44(%rbp), %ecx         # 1-byte Folded Reload
	leal	(%rax,%rcx), %edi
	addl	$20480, %edi            # imm = 0x5000
	callq	lwip_htons
	movq	24(%rbx), %rcx
	movw	%ax, 12(%rcx)
	movw	$0, 18(%rcx)
.LBB3_12:
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB3_1:
	movl	$.L.str.47, %edi
	jmp	.LBB3_2
.LBB3_4:
	movl	$.L.str.48, %edi
	jmp	.LBB3_2
.LBB3_8:
	movl	$.L.str.49, %edi
.LBB3_2:
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$.L.str.1, %edi
	movl	$.L.str.2, %esi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$3, %edi
	callq	ukplat_terminate
.Lfunc_end3:
	.size	tcp_create_segment, .Lfunc_end3-tcp_create_segment
                                        # -- End function
	.globl	tcp_split_unsent_seg    # -- Begin function tcp_split_unsent_seg
	.p2align	4, 0x90
	.type	tcp_split_unsent_seg,@function
tcp_split_unsent_seg:                   # @tcp_split_unsent_seg
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$24, %rsp
	testq	%rdi, %rdi
	je	.LBB4_15
# %bb.1:
	movq	%rdi, %r15
	movq	184(%rdi), %r14
	movb	$-1, %r12b
	testq	%r14, %r14
	je	.LBB4_13
# %bb.2:
	movl	%esi, %ebx
	testw	%bx, %bx
	je	.LBB4_16
# %bb.3:
	movzwl	16(%r14), %edx
	cmpw	%bx, %dx
	jbe	.LBB4_10
# %bb.4:
	cmpw	%bx, 110(%r15)
	jb	.LBB4_17
# %bb.5:
	movb	18(%r14), %cl
	leal	(,%rcx,4), %eax
	andb	$4, %al
	movq	%rcx, -64(%rbp)         # 8-byte Spill
                                        # kill: def $cl killed $cl killed $rcx
	shrb	%cl
	andb	$4, %cl
	addb	%al, %cl
	subl	%ebx, %edx
	movq	%rdx, -56(%rbp)         # 8-byte Spill
	movzbl	%cl, %r13d
	leal	(%rdx,%r13), %eax
	movzwl	%ax, %esi
	movl	$74, %edi
	movl	$640, %edx              # imm = 0x280
	callq	pbuf_alloc
	testq	%rax, %rax
	je	.LBB4_12
# %bb.6:
	movq	8(%r14), %rdi
	movzwl	16(%rdi), %ecx
	addw	%bx, %cx
	subw	16(%r14), %cx
	movq	%rax, -48(%rbp)         # 8-byte Spill
	addq	8(%rax), %r13
	movzwl	%cx, %ecx
	movzwl	-56(%rbp), %r12d        # 2-byte Folded Reload
	movq	%r13, %rsi
	movl	%r12d, %edx
	callq	pbuf_copy_partial
	cmpw	%r12w, %ax
	jne	.LBB4_11
# %bb.7:
	movzwl	%bx, %ebx
	movq	24(%r14), %rax
	movzwl	12(%rax), %edi
	callq	lwip_htons
	movl	%eax, %r12d
	movq	24(%r14), %rax
	movl	4(%rax), %edi
	callq	lwip_htonl
	addl	%eax, %ebx
	movl	%r12d, %edx
	andl	$9, %edx
	movzbl	-64(%rbp), %r8d         # 1-byte Folded Reload
	movq	%r15, %rdi
	movq	-48(%rbp), %rsi         # 8-byte Reload
	movl	%ebx, %ecx
	callq	tcp_create_segment
	testq	%rax, %rax
	je	.LBB4_11
# %bb.8:
	movq	%rax, %r13
	movl	%r12d, %eax
	andb	$8, %al
	xorb	$63, %al
	andb	%r12b, %al
	movzbl	%al, %ecx
	andb	$62, %al
	testb	$1, %r12b
	movzbl	%al, %r12d
	cmovel	%ecx, %r12d
	movq	8(%r14), %rdi
	callq	pbuf_clen
	subw	%ax, 172(%r15)
	movq	8(%r14), %rdi
	movl	16(%rdi), %eax
	movq	-56(%rbp), %rbx         # 8-byte Reload
	subl	%ebx, %eax
	movzwl	%ax, %esi
	callq	pbuf_realloc
	subw	%bx, 16(%r14)
	movq	24(%r14), %rax
	movzwl	12(%rax), %ebx
	movzbl	%r12b, %edi
	callq	lwip_htons
	orw	%bx, %ax
	movq	24(%r14), %rcx
	movw	%ax, 12(%rcx)
	movq	8(%r14), %rdi
	callq	pbuf_clen
	addw	%ax, 172(%r15)
	movq	8(%r13), %rdi
	callq	pbuf_clen
	addw	%ax, 172(%r15)
	movq	(%r14), %rax
	movq	%rax, (%r13)
	movq	%r13, (%r14)
	cmpq	$0, (%r13)
	je	.LBB4_14
.LBB4_10:
	xorl	%r12d, %r12d
	jmp	.LBB4_13
.LBB4_11:
	addw	$1, lwip_stats+156(%rip)
	movq	-48(%rbp), %rdi         # 8-byte Reload
	callq	pbuf_free
	movb	$-1, %r12b
	jmp	.LBB4_13
.LBB4_12:
	addw	$1, lwip_stats+156(%rip)
.LBB4_13:
	movl	$42, __A_VARIABLE(%rip)
	movl	%r12d, %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB4_14:
	movw	$0, 174(%r15)
	xorl	%r12d, %r12d
	jmp	.LBB4_13
.LBB4_15:
	movl	$.L.str.15, %edi
	jmp	.LBB4_18
.LBB4_16:
	movl	$.L.str.16, %edi
	jmp	.LBB4_18
.LBB4_17:
	movl	$.L.str.17, %edi
.LBB4_18:
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$.L.str.1, %edi
	movl	$.L.str.2, %esi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$3, %edi
	callq	ukplat_terminate
.Lfunc_end4:
	.size	tcp_split_unsent_seg, .Lfunc_end4-tcp_split_unsent_seg
                                        # -- End function
	.globl	tcp_send_fin            # -- Begin function tcp_send_fin
	.p2align	4, 0x90
	.type	tcp_send_fin,@function
tcp_send_fin:                           # @tcp_send_fin
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	testq	%rdi, %rdi
	je	.LBB5_7
# %bb.1:
	movq	%rdi, %r14
	movq	184(%rdi), %rax
	testq	%rax, %rax
	je	.LBB5_5
	.p2align	4, 0x90
.LBB5_2:                                # =>This Inner Loop Header: Depth=1
	movq	%rax, %rbx
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.LBB5_2
# %bb.3:
	movq	24(%rbx), %rax
	movzwl	12(%rax), %edi
	callq	lwip_htons
                                        # kill: def $ax killed $ax def $eax
	testb	$7, %al
	je	.LBB5_4
.LBB5_5:
	movq	%r14, %rdi
	movl	$1, %esi
	callq	tcp_enqueue_flags
                                        # kill: def $al killed $al def $eax
	jmp	.LBB5_6
.LBB5_4:
	movq	24(%rbx), %rax
	movzwl	12(%rax), %r15d
	movl	$1, %edi
	callq	lwip_htons
	orw	%r15w, %ax
	movq	24(%rbx), %rcx
	movw	%ax, 12(%rcx)
	orb	$32, 82(%r14)
	xorl	%eax, %eax
.LBB5_6:
	movl	$42, __A_VARIABLE(%rip)
                                        # kill: def $al killed $al killed $eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB5_7:
	movl	$.L.str.20, %edi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$.L.str.1, %edi
	movl	$.L.str.2, %esi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$3, %edi
	callq	ukplat_terminate
.Lfunc_end5:
	.size	tcp_send_fin, .Lfunc_end5-tcp_send_fin
                                        # -- End function
	.globl	tcp_enqueue_flags       # -- Begin function tcp_enqueue_flags
	.p2align	4, 0x90
	.type	tcp_enqueue_flags,@function
tcp_enqueue_flags:                      # @tcp_enqueue_flags
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	movl	%esi, %r14d
	testb	$3, %r14b
	je	.LBB6_1
# %bb.3:
	movq	%rdi, %r15
	testq	%rdi, %rdi
	je	.LBB6_4
# %bb.5:
	testb	$2, %r14b
	je	.LBB6_6
# %bb.7:
	cmpl	$3, 72(%r15)
	jne	.LBB6_9
# %bb.8:
	movb	$1, %r12b
	testb	$1, 83(%r15)
	je	.LBB6_10
.LBB6_9:
	movb	$9, %r12b
	jmp	.LBB6_10
.LBB6_6:
	xorl	%r12d, %r12d
.LBB6_10:
	leal	(,%r12,4), %eax
	andb	$4, %al
	movl	%r12d, %ecx
	shrb	%cl
	addb	%al, %cl
	movzbl	%cl, %ebx
	movl	$74, %edi
	movl	%ebx, %esi
	movl	$640, %edx              # imm = 0x280
	callq	pbuf_alloc
	testq	%rax, %rax
	je	.LBB6_11
# %bb.12:
	movzwl	18(%rax), %ecx
	cmpl	%ebx, %ecx
	jb	.LBB6_13
# %bb.14:
	movl	156(%r15), %ecx
	movzbl	%r14b, %edx
	movzbl	%r12b, %r8d
	movq	%r15, %rdi
	movq	%rax, %rsi
	callq	tcp_create_segment
	testq	%rax, %rax
	je	.LBB6_11
# %bb.15:
	cmpw	$0, 16(%rax)
	jne	.LBB6_16
# %bb.17:
	leaq	184(%r15), %rbx
	movq	184(%r15), %rdx
	movq	%rbx, %rcx
	testq	%rdx, %rdx
	je	.LBB6_20
	.p2align	4, 0x90
.LBB6_18:                               # =>This Inner Loop Header: Depth=1
	movq	%rdx, %rcx
	movq	(%rdx), %rdx
	testq	%rdx, %rdx
	jne	.LBB6_18
.LBB6_20:
	movq	%rax, (%rcx)
	movw	$0, 174(%r15)
	testb	$3, %r14b
	je	.LBB6_22
# %bb.21:
	addl	$1, 156(%r15)
.LBB6_22:
	testb	$1, %r14b
	je	.LBB6_24
# %bb.23:
	orb	$32, 82(%r15)
.LBB6_24:
	movq	8(%rax), %rdi
	callq	pbuf_clen
	addw	%ax, 172(%r15)
	je	.LBB6_27
# %bb.25:
	cmpq	$0, 192(%r15)
	jne	.LBB6_27
# %bb.26:
	cmpq	$0, (%rbx)
	je	.LBB6_29
.LBB6_27:
	xorl	%eax, %eax
	jmp	.LBB6_28
.LBB6_11:
	orb	$-128, 82(%r15)
	addw	$1, lwip_stats+156(%rip)
	movb	$-1, %al
.LBB6_28:
	movl	$42, __A_VARIABLE(%rip)
                                        # kill: def $al killed $al killed $eax
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB6_1:
	movl	$.L.str.21, %edi
	jmp	.LBB6_2
.LBB6_4:
	movl	$.L.str.22, %edi
	jmp	.LBB6_2
.LBB6_13:
	movl	$.L.str.23, %edi
	jmp	.LBB6_2
.LBB6_16:
	movl	$.L.str.25, %edi
	jmp	.LBB6_2
.LBB6_29:
	movl	$.L.str.26, %edi
.LBB6_2:
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$.L.str.1, %edi
	movl	$.L.str.2, %esi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$3, %edi
	callq	ukplat_terminate
.Lfunc_end6:
	.size	tcp_enqueue_flags, .Lfunc_end6-tcp_enqueue_flags
                                        # -- End function
	.globl	tcp_output              # -- Begin function tcp_output
	.p2align	4, 0x90
	.type	tcp_output,@function
tcp_output:                             # @tcp_output
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$40, %rsp
	testq	%rdi, %rdi
	je	.LBB7_1
# %bb.3:
	movq	%rdi, %r15
	cmpl	$1, 72(%rdi)
	je	.LBB7_4
# %bb.5:
	cmpq	%r15, tcp_input_pcb(%rip)
	je	.LBB7_93
# %bb.6:
	movl	132(%r15), %ebx
	movl	160(%r15), %eax
	cmpl	%ebx, %eax
	cmovbl	%eax, %ebx
	movq	184(%r15), %r14
	testq	%r14, %r14
	je	.LBB7_7
# %bb.9:
	leaq	24(%r15), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movb	48(%r15), %al
	testb	%al, %al
	je	.LBB7_11
# %bb.10:
	movzbl	%al, %edi
	callq	netif_get_by_index
	jmp	.LBB7_14
.LBB7_11:
	cmpb	$6, 44(%r15)
	jne	.LBB7_13
# %bb.12:
	movq	%r15, %rdi
	movq	-48(%rbp), %rsi         # 8-byte Reload
	callq	ip6_route
	jmp	.LBB7_14
.LBB7_13:
	movq	-48(%rbp), %rdi         # 8-byte Reload
	callq	ip4_route
.LBB7_14:
	movq	%rax, %rdi
	movl	$42, __A_VARIABLE(%rip)
	movb	$-4, %r13b
	testq	%rax, %rax
	je	.LBB7_94
# %bb.15:
	cmpb	$6, 20(%r15)
	movl	(%r15), %eax
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	jne	.LBB7_20
# %bb.16:
	testl	%eax, %eax
	jne	.LBB7_27
# %bb.17:
	cmpl	$0, 4(%r15)
	jne	.LBB7_27
# %bb.18:
	cmpl	$0, 8(%r15)
	jne	.LBB7_27
# %bb.19:
	cmpl	$0, 12(%r15)
	jne	.LBB7_27
	jmp	.LBB7_21
.LBB7_20:
	testl	%eax, %eax
	jne	.LBB7_27
.LBB7_21:
	cmpb	$6, 44(%r15)
	jne	.LBB7_22
# %bb.23:
	movq	-48(%rbp), %rsi         # 8-byte Reload
	callq	ip6_select_source_address
	testq	%rax, %rax
	jne	.LBB7_24
	jmp	.LBB7_94
.LBB7_22:
	leaq	8(%rdi), %rax
.LBB7_24:
	movb	20(%rax), %cl
	movb	%cl, 20(%r15)
	cmpb	$6, 20(%rax)
	movl	(%rax), %ecx
	movl	%ecx, (%r15)
	jne	.LBB7_26
# %bb.25:
	movl	4(%rax), %ecx
	movl	%ecx, 4(%r15)
	movl	8(%rax), %ecx
	movl	%ecx, 8(%r15)
	movl	12(%rax), %ecx
	movl	%ecx, 12(%r15)
	movb	16(%rax), %al
	movb	%al, 16(%r15)
	jmp	.LBB7_27
.LBB7_26:
	movl	$0, 12(%r15)
	movq	$0, 4(%r15)
	movb	$0, 16(%r15)
.LBB7_27:
	movq	24(%r14), %rax
	movl	4(%rax), %edi
	callq	lwip_htonl
	subl	128(%r15), %eax
	movzwl	16(%r14), %ecx
	addl	%eax, %ecx
	cmpl	%ebx, %ecx
	jbe	.LBB7_32
# %bb.28:
	cmpl	160(%r15), %ebx
	jne	.LBB7_7
# %bb.29:
	cmpq	$0, 192(%r15)
	jne	.LBB7_7
# %bb.30:
	cmpb	$0, 269(%r15)
	jne	.LBB7_7
# %bb.31:
	movw	$256, 268(%r15)         # imm = 0x100
	movb	$0, 270(%r15)
.LBB7_7:
	testb	$2, 82(%r15)
	je	.LBB7_92
# %bb.8:
	movq	%r15, %rdi
	callq	tcp_send_empty_ack
	movl	%eax, %r13d
	jmp	.LBB7_94
.LBB7_32:
	movl	%ebx, -68(%rbp)         # 4-byte Spill
	movb	$0, 269(%r15)
	movq	192(%r15), %rax
	testq	%rax, %rax
	je	.LBB7_33
	.p2align	4, 0x90
.LBB7_34:                               # =>This Inner Loop Header: Depth=1
	movq	%rax, %r12
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.LBB7_34
	jmp	.LBB7_35
.LBB7_33:
	xorl	%r12d, %r12d
.LBB7_35:
	leaq	192(%r15), %r13
	movq	%r13, -56(%rbp)         # 8-byte Spill
	jmp	.LBB7_36
	.p2align	4, 0x90
.LBB7_88:                               #   in Loop: Header=BB7_36 Depth=1
	movq	%r14, %rdi
	callq	tcp_seg_free
.LBB7_89:                               #   in Loop: Header=BB7_36 Depth=1
	movq	184(%r15), %r14
	testq	%r14, %r14
	je	.LBB7_91
.LBB7_36:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_82 Depth 2
	movq	24(%r14), %rax
	movl	4(%rax), %edi
	callq	lwip_htonl
	subl	128(%r15), %eax
	movzwl	16(%r14), %ecx
	addl	%eax, %ecx
	cmpl	-68(%rbp), %ecx         # 4-byte Folded Reload
	ja	.LBB7_90
# %bb.37:                               #   in Loop: Header=BB7_36 Depth=1
	movq	24(%r14), %rax
	movzwl	12(%rax), %edi
	callq	lwip_htons
                                        # kill: def $ax killed $ax def $eax
	testb	$4, %al
	jne	.LBB7_38
# %bb.39:                               #   in Loop: Header=BB7_36 Depth=1
	cmpq	$0, (%r13)
	je	.LBB7_47
# %bb.40:                               #   in Loop: Header=BB7_36 Depth=1
	movzwl	82(%r15), %eax
	testb	$68, %al
	je	.LBB7_41
.LBB7_47:                               #   in Loop: Header=BB7_36 Depth=1
	cmpl	$2, 72(%r15)
	je	.LBB7_49
# %bb.48:                               #   in Loop: Header=BB7_36 Depth=1
	movq	24(%r14), %rax
	movzwl	12(%rax), %ebx
	movl	$16, %edi
	callq	lwip_htons
	orw	%bx, %ax
	movq	24(%r14), %rcx
	movw	%ax, 12(%rcx)
.LBB7_49:                               #   in Loop: Header=BB7_36 Depth=1
	movq	8(%r14), %rax
	cmpb	$1, 22(%rax)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB7_50
# %bb.58:                               #   in Loop: Header=BB7_36 Depth=1
	movl	92(%r15), %edi
	callq	lwip_htonl
	movq	24(%r14), %rcx
	movl	%eax, 8(%rcx)
	testb	$8, 18(%r14)
	movl	100(%r15), %eax
	jne	.LBB7_60
# %bb.59:                               #   in Loop: Header=BB7_36 Depth=1
	movb	273(%r15), %cl
	shrl	%cl, %eax
.LBB7_60:                               #   in Loop: Header=BB7_36 Depth=1
	cmpl	$65535, %eax            # imm = 0xFFFF
	movl	$65535, %ecx            # imm = 0xFFFF
	cmovael	%ecx, %eax
	movzwl	%ax, %edi
	callq	lwip_htons
	movq	24(%r14), %rbx
	movw	%ax, 14(%rbx)
	movl	100(%r15), %eax
	addl	92(%r15), %eax
	movl	%eax, 104(%r15)
	movb	18(%r14), %al
	testb	$1, %al
	jne	.LBB7_62
# %bb.61:                               #   in Loop: Header=BB7_36 Depth=1
	addq	$20, %rbx
	testb	$8, %al
	jne	.LBB7_64
	jmp	.LBB7_65
	.p2align	4, 0x90
.LBB7_50:                               #   in Loop: Header=BB7_36 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB7_51
	.p2align	4, 0x90
.LBB7_62:                               #   in Loop: Header=BB7_36 Depth=1
	movl	$1460, %edi             # imm = 0x5B4
	movq	-64(%rbp), %rsi         # 8-byte Reload
	movq	-48(%rbp), %rdx         # 8-byte Reload
	callq	tcp_eff_send_mss_netif
	movzwl	%ax, %edi
	orl	$33816576, %edi         # imm = 0x2040000
	callq	lwip_htonl
	movl	%eax, 20(%rbx)
	addq	$24, %rbx
	movb	18(%r14), %al
	testb	$8, %al
	je	.LBB7_65
.LBB7_64:                               #   in Loop: Header=BB7_36 Depth=1
	movl	$67306241, (%rbx)       # imm = 0x4030301
	movl	$42, __A_VARIABLE(%rip)
	addq	$4, %rbx
.LBB7_65:                               #   in Loop: Header=BB7_36 Depth=1
	cmpw	$0, 108(%r15)
	js	.LBB7_66
# %bb.67:                               #   in Loop: Header=BB7_36 Depth=1
	cmpl	$0, 112(%r15)
	je	.LBB7_68
.LBB7_69:                               #   in Loop: Header=BB7_36 Depth=1
	movq	8(%r14), %rdi
	movq	24(%r14), %rdx
	movl	8(%rdi), %ecx
	movl	%edx, %esi
	subl	%ecx, %esi
	subw	%si, 18(%rdi)
	movl	16(%rdi), %ecx
	subl	%esi, %ecx
	movw	%cx, 16(%rdi)
	movq	%rdx, 8(%rdi)
	movw	$0, 16(%rdx)
	movzbl	%al, %eax
	leal	(,%rax,4), %esi
	andl	$4, %esi
	addq	%rdx, %rsi
	shrl	%eax
	andl	$4, %eax
	addq	%rsi, %rax
	addq	$20, %rax
	cmpq	%rbx, %rax
	jne	.LBB7_70
# %bb.71:                               #   in Loop: Header=BB7_36 Depth=1
	movq	-64(%rbp), %rdx         # 8-byte Reload
	testb	$4, 248(%rdx)
	je	.LBB7_73
# %bb.72:                               #   in Loop: Header=BB7_36 Depth=1
	movzwl	%cx, %edx
	movl	$6, %esi
	movq	%r15, %rcx
	movq	-48(%rbp), %r8          # 8-byte Reload
	callq	ip_chksum_pseudo
	movq	-64(%rbp), %rdx         # 8-byte Reload
	movq	24(%r14), %rcx
	movw	%ax, 16(%rcx)
	movq	8(%r14), %rdi
.LBB7_73:                               #   in Loop: Header=BB7_36 Depth=1
	addw	$1, lwip_stats+144(%rip)
	cmpb	$6, 44(%r15)
	movzbl	51(%r15), %ecx
	movzbl	50(%r15), %r8d
	jne	.LBB7_75
# %bb.74:                               #   in Loop: Header=BB7_36 Depth=1
	movq	%rdx, (%rsp)
	movq	%r15, %rsi
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movl	$6, %r9d
	callq	ip6_output_if
	jmp	.LBB7_76
	.p2align	4, 0x90
.LBB7_75:                               #   in Loop: Header=BB7_36 Depth=1
	movq	%rdx, (%rsp)
	movq	%r15, %rsi
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movl	$6, %r9d
	callq	ip4_output_if
.LBB7_76:                               #   in Loop: Header=BB7_36 Depth=1
	movl	%eax, %r13d
	movl	$42, __A_VARIABLE(%rip)
	testb	%al, %al
	jne	.LBB7_77
.LBB7_51:                               #   in Loop: Header=BB7_36 Depth=1
	movq	(%r14), %rax
	movq	%rax, 184(%r15)
	cmpl	$2, 72(%r15)
	je	.LBB7_53
# %bb.52:                               #   in Loop: Header=BB7_36 Depth=1
	andb	$-4, 82(%r15)
.LBB7_53:                               #   in Loop: Header=BB7_36 Depth=1
	movq	24(%r14), %rax
	movl	4(%rax), %edi
	callq	lwip_htonl
	movl	%eax, %r13d
	movzwl	16(%r14), %ebx
	movq	24(%r14), %rax
	movzwl	12(%rax), %edi
	callq	lwip_htons
                                        # kill: def $ax killed $ax def $eax
	andl	$3, %eax
	addl	%r13d, %ebx
	cmpw	$1, %ax
	sbbl	$-1, %ebx
	cmpl	%ebx, 144(%r15)
	jns	.LBB7_55
# %bb.54:                               #   in Loop: Header=BB7_36 Depth=1
	movl	%ebx, 144(%r15)
.LBB7_55:                               #   in Loop: Header=BB7_36 Depth=1
	movzwl	16(%r14), %ebx
	movq	24(%r14), %rax
	movzwl	12(%rax), %edi
	callq	lwip_htons
                                        # kill: def $ax killed $ax def $eax
	andl	$3, %eax
	negw	%ax
	sbbl	%eax, %eax
	cmpl	%eax, %ebx
	movq	-56(%rbp), %r13         # 8-byte Reload
	je	.LBB7_88
# %bb.56:                               #   in Loop: Header=BB7_36 Depth=1
	movq	$0, (%r14)
	cmpq	$0, (%r13)
	je	.LBB7_57
# %bb.78:                               #   in Loop: Header=BB7_36 Depth=1
	movq	24(%r14), %rax
	movl	4(%rax), %edi
	callq	lwip_htonl
	movl	%eax, %ebx
	movq	24(%r12), %rax
	movl	4(%rax), %edi
	callq	lwip_htonl
	cmpl	%eax, %ebx
	js	.LBB7_79
# %bb.87:                               #   in Loop: Header=BB7_36 Depth=1
	movq	%r14, (%r12)
	movq	%r14, %r12
	jmp	.LBB7_89
	.p2align	4, 0x90
.LBB7_41:                               #   in Loop: Header=BB7_36 Depth=1
	movq	184(%r15), %rcx
	testq	%rcx, %rcx
	je	.LBB7_44
# %bb.42:                               #   in Loop: Header=BB7_36 Depth=1
	cmpq	$0, (%rcx)
	jne	.LBB7_47
# %bb.43:                               #   in Loop: Header=BB7_36 Depth=1
	movzwl	16(%rcx), %ecx
	cmpw	110(%r15), %cx
	jae	.LBB7_47
.LBB7_44:                               #   in Loop: Header=BB7_36 Depth=1
	movl	168(%r15), %ecx
	cmpl	$65535, %ecx            # imm = 0xFFFF
	movl	$65535, %edx            # imm = 0xFFFF
	cmovael	%edx, %ecx
	testw	%cx, %cx
	je	.LBB7_47
# %bb.45:                               #   in Loop: Header=BB7_36 Depth=1
	testb	$-96, %al
	jne	.LBB7_47
# %bb.46:                               #   in Loop: Header=BB7_36 Depth=1
	movzwl	172(%r15), %eax
	cmpl	$1436, %eax             # imm = 0x59C
	jae	.LBB7_47
	jmp	.LBB7_90
.LBB7_66:                               #   in Loop: Header=BB7_36 Depth=1
	movw	$0, 108(%r15)
	cmpl	$0, 112(%r15)
	jne	.LBB7_69
.LBB7_68:                               #   in Loop: Header=BB7_36 Depth=1
	movl	tcp_ticks(%rip), %eax
	movl	%eax, 112(%r15)
	movq	24(%r14), %rax
	movl	4(%rax), %edi
	callq	lwip_htonl
	movl	%eax, 116(%r15)
	movb	18(%r14), %al
	jmp	.LBB7_69
.LBB7_57:                               #   in Loop: Header=BB7_36 Depth=1
	movq	%r14, (%r13)
	movq	%r14, %r12
	jmp	.LBB7_89
.LBB7_79:                               #   in Loop: Header=BB7_36 Depth=1
	movq	(%r13), %rcx
	testq	%rcx, %rcx
	je	.LBB7_80
# %bb.81:                               # %.preheader
                                        #   in Loop: Header=BB7_36 Depth=1
	movq	%r13, %rbx
	.p2align	4, 0x90
.LBB7_82:                               #   Parent Loop BB7_36 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	24(%rcx), %rax
	movl	4(%rax), %edi
	callq	lwip_htonl
	movl	%eax, %r13d
	movq	24(%r14), %rax
	movl	4(%rax), %edi
	callq	lwip_htonl
	cmpl	%eax, %r13d
	movq	(%rbx), %rax
	jns	.LBB7_85
# %bb.83:                               #   in Loop: Header=BB7_82 Depth=2
	movq	(%rax), %rcx
	movq	%rax, %rbx
	testq	%rcx, %rcx
	jne	.LBB7_82
# %bb.84:                               #   in Loop: Header=BB7_36 Depth=1
	movq	%rax, %rbx
	xorl	%eax, %eax
.LBB7_85:                               #   in Loop: Header=BB7_36 Depth=1
	movq	-56(%rbp), %r13         # 8-byte Reload
	jmp	.LBB7_86
.LBB7_80:                               #   in Loop: Header=BB7_36 Depth=1
	movq	%r13, %rbx
	xorl	%eax, %eax
.LBB7_86:                               #   in Loop: Header=BB7_36 Depth=1
	movq	%rax, (%r14)
	movq	%r14, (%rbx)
	jmp	.LBB7_89
.LBB7_90:
	cmpq	$0, 184(%r15)
	jne	.LBB7_92
.LBB7_91:
	movw	$0, 174(%r15)
.LBB7_92:
	andb	$127, 82(%r15)
.LBB7_93:
	xorl	%r13d, %r13d
.LBB7_94:
	movl	$42, __A_VARIABLE(%rip)
	movl	%r13d, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB7_77:
	orb	$-128, 82(%r15)
	jmp	.LBB7_94
.LBB7_38:
	movl	$.L.str.29, %edi
	jmp	.LBB7_2
.LBB7_1:
	movl	$.L.str.27, %edi
	jmp	.LBB7_2
.LBB7_4:
	movl	$.L.str.28, %edi
	jmp	.LBB7_2
.LBB7_70:
	movl	$.L.str.53, %edi
.LBB7_2:
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$.L.str.1, %edi
	movl	$.L.str.2, %esi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$3, %edi
	callq	ukplat_terminate
.Lfunc_end7:
	.size	tcp_output, .Lfunc_end7-tcp_output
                                        # -- End function
	.globl	tcp_send_empty_ack      # -- Begin function tcp_send_empty_ack
	.p2align	4, 0x90
	.type	tcp_send_empty_ack,@function
tcp_send_empty_ack:                     # @tcp_send_empty_ack
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	testq	%rdi, %rdi
	je	.LBB8_5
# %bb.1:
	movq	%rdi, %rbx
	movl	144(%rdi), %edi
	callq	lwip_htonl
	movzwl	78(%rbx), %r9d
	movzwl	80(%rbx), %r8d
	movl	92(%rbx), %edi
	movl	100(%rbx), %edx
	movb	273(%rbx), %cl
	shrl	%cl, %edx
	cmpl	$65535, %edx            # imm = 0xFFFF
	movl	$65535, %ecx            # imm = 0xFFFF
	cmovbl	%edx, %ecx
	movzwl	%cx, %ecx
	movl	%ecx, (%rsp)
	xorl	%esi, %esi
	movl	%eax, %edx
	movl	%r9d, %ecx
	movl	$16, %r9d
	callq	tcp_output_alloc_header_common
	testq	%rax, %rax
	je	.LBB8_2
# %bb.3:
	movl	100(%rbx), %ecx
	addl	92(%rbx), %ecx
	movl	%ecx, 104(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	leaq	24(%rbx), %rcx
	movq	%rbx, %rdi
	movq	%rax, %rsi
	movq	%rbx, %rdx
	callq	tcp_output_control_segment
	movzwl	82(%rbx), %ecx
	movl	%ecx, %edx
	andl	$-4, %edx
	orl	$3, %ecx
	testb	%al, %al
	cmovel	%edx, %ecx
	movw	%cx, 82(%rbx)
	jmp	.LBB8_4
.LBB8_2:
	movl	$42, __A_VARIABLE(%rip)
	orb	$3, 82(%rbx)
	movb	$-2, %al
.LBB8_4:
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.LBB8_5:
	movl	$.L.str.37, %edi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$.L.str.1, %edi
	movl	$.L.str.2, %esi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$3, %edi
	callq	ukplat_terminate
.Lfunc_end8:
	.size	tcp_send_empty_ack, .Lfunc_end8-tcp_send_empty_ack
                                        # -- End function
	.globl	tcp_rexmit_rto_prepare  # -- Begin function tcp_rexmit_rto_prepare
	.p2align	4, 0x90
	.type	tcp_rexmit_rto_prepare,@function
tcp_rexmit_rto_prepare:                 # @tcp_rexmit_rto_prepare
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	testq	%rdi, %rdi
	je	.LBB9_8
# %bb.1:
	movq	%rdi, %r15
	movq	192(%rdi), %rsi
	movb	$-6, %al
	testq	%rsi, %rsi
	je	.LBB9_7
# %bb.2:                                # %.preheader
	movq	%rsi, %rbx
	.p2align	4, 0x90
.LBB9_3:                                # =>This Inner Loop Header: Depth=1
	movq	(%rbx), %rdx
	movq	8(%rbx), %rcx
	movzbl	22(%rcx), %ecx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdx, %rdx
	je	.LBB9_5
# %bb.4:                                #   in Loop: Header=BB9_3 Depth=1
	movq	%rdx, %rbx
	cmpb	$1, %cl
	je	.LBB9_3
	jmp	.LBB9_7
.LBB9_5:
	cmpb	$1, %cl
	jne	.LBB9_7
# %bb.6:
	movq	184(%r15), %rax
	movq	%rax, (%rbx)
	movq	%rsi, 184(%r15)
	movq	$0, 192(%r15)
	orb	$8, 83(%r15)
	movq	24(%rbx), %rax
	movl	4(%rax), %edi
	callq	lwip_htonl
	movl	%eax, %r14d
	movzwl	16(%rbx), %r12d
	movq	24(%rbx), %rax
	movzwl	12(%rax), %edi
	callq	lwip_htons
                                        # kill: def $ax killed $ax def $eax
	andl	$3, %eax
	addl	%r14d, %r12d
	cmpw	$1, %ax
	sbbl	$-1, %r12d
	movl	%r12d, 140(%r15)
	movl	$0, 112(%r15)
	xorl	%eax, %eax
.LBB9_7:
	movl	$42, __A_VARIABLE(%rip)
                                        # kill: def $al killed $al killed $eax
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB9_8:
	movl	$.L.str.30, %edi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$.L.str.1, %edi
	movl	$.L.str.2, %esi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$3, %edi
	callq	ukplat_terminate
.Lfunc_end9:
	.size	tcp_rexmit_rto_prepare, .Lfunc_end9-tcp_rexmit_rto_prepare
                                        # -- End function
	.globl	tcp_rexmit_rto_commit   # -- Begin function tcp_rexmit_rto_commit
	.p2align	4, 0x90
	.type	tcp_rexmit_rto_commit,@function
tcp_rexmit_rto_commit:                  # @tcp_rexmit_rto_commit
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	testq	%rdi, %rdi
	je	.LBB10_4
# %bb.1:
	movb	126(%rdi), %al
	cmpb	$-1, %al
	je	.LBB10_3
# %bb.2:
	addb	$1, %al
	movb	%al, 126(%rdi)
.LBB10_3:
	callq	tcp_output
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.LBB10_4:
	movl	$.L.str.31, %edi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$.L.str.1, %edi
	movl	$.L.str.2, %esi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$3, %edi
	callq	ukplat_terminate
.Lfunc_end10:
	.size	tcp_rexmit_rto_commit, .Lfunc_end10-tcp_rexmit_rto_commit
                                        # -- End function
	.globl	tcp_rexmit_rto          # -- Begin function tcp_rexmit_rto
	.p2align	4, 0x90
	.type	tcp_rexmit_rto,@function
tcp_rexmit_rto:                         # @tcp_rexmit_rto
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	testq	%rdi, %rdi
	je	.LBB11_10
# %bb.1:
	movq	%rdi, %r15
	movq	192(%rdi), %rax
	testq	%rax, %rax
	je	.LBB11_9
# %bb.2:                                # %.preheader
	movq	%rax, %rbx
	.p2align	4, 0x90
.LBB11_3:                               # =>This Inner Loop Header: Depth=1
	movq	(%rbx), %rcx
	movq	8(%rbx), %rdx
	movzbl	22(%rdx), %edx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rcx, %rcx
	je	.LBB11_5
# %bb.4:                                #   in Loop: Header=BB11_3 Depth=1
	movq	%rcx, %rbx
	cmpb	$1, %dl
	je	.LBB11_3
	jmp	.LBB11_9
.LBB11_5:
	cmpb	$1, %dl
	jne	.LBB11_9
# %bb.6:
	movq	184(%r15), %rcx
	movq	%rcx, (%rbx)
	movq	%rax, 184(%r15)
	movq	$0, 192(%r15)
	orb	$8, 83(%r15)
	movq	24(%rbx), %rax
	movl	4(%rax), %edi
	callq	lwip_htonl
	movl	%eax, %r14d
	movzwl	16(%rbx), %r12d
	movq	24(%rbx), %rax
	movzwl	12(%rax), %edi
	callq	lwip_htons
                                        # kill: def $ax killed $ax def $eax
	andl	$3, %eax
	addl	%r14d, %r12d
	cmpw	$1, %ax
	sbbl	$-1, %r12d
	movl	%r12d, 140(%r15)
	movl	$0, 112(%r15)
	movl	$42, __A_VARIABLE(%rip)
	movb	126(%r15), %al
	cmpb	$-1, %al
	je	.LBB11_8
# %bb.7:
	addb	$1, %al
	movb	%al, 126(%r15)
.LBB11_8:
	movq	%r15, %rdi
	callq	tcp_output
.LBB11_9:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB11_10:
	movl	$.L.str.32, %edi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$.L.str.1, %edi
	movl	$.L.str.2, %esi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$3, %edi
	callq	ukplat_terminate
.Lfunc_end11:
	.size	tcp_rexmit_rto, .Lfunc_end11-tcp_rexmit_rto
                                        # -- End function
	.globl	tcp_rexmit              # -- Begin function tcp_rexmit
	.p2align	4, 0x90
	.type	tcp_rexmit,@function
tcp_rexmit:                             # @tcp_rexmit
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	testq	%rdi, %rdi
	je	.LBB12_14
# %bb.1:
	movq	%rdi, %r14
	movq	192(%rdi), %r15
	movb	$-6, %al
	testq	%r15, %r15
	je	.LBB12_13
# %bb.2:
	movq	8(%r15), %rcx
	cmpb	$1, 22(%rcx)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB12_13
# %bb.3:
	movq	(%r15), %rax
	movq	%rax, 192(%r14)
	leaq	184(%r14), %r12
	movq	184(%r14), %rcx
	testq	%rcx, %rcx
	je	.LBB12_7
	.p2align	4, 0x90
.LBB12_4:                               # =>This Inner Loop Header: Depth=1
	movq	24(%rcx), %rax
	movl	4(%rax), %edi
	callq	lwip_htonl
	movl	%eax, %ebx
	movq	24(%r15), %rax
	movl	4(%rax), %edi
	callq	lwip_htonl
	cmpl	%eax, %ebx
	movq	(%r12), %rax
	jns	.LBB12_8
# %bb.5:                                #   in Loop: Header=BB12_4 Depth=1
	movq	(%rax), %rcx
	movq	%rax, %r12
	testq	%rcx, %rcx
	jne	.LBB12_4
# %bb.6:
	movq	%rax, %r12
.LBB12_7:
	xorl	%eax, %eax
.LBB12_8:
	movq	%rax, (%r15)
	movq	%r15, (%r12)
	cmpq	$0, (%r15)
	jne	.LBB12_10
# %bb.9:
	movw	$0, 174(%r14)
.LBB12_10:
	movb	126(%r14), %al
	cmpb	$-1, %al
	je	.LBB12_12
# %bb.11:
	addb	$1, %al
	movb	%al, 126(%r14)
.LBB12_12:
	movl	$0, 112(%r14)
	xorl	%eax, %eax
.LBB12_13:
	movl	$42, __A_VARIABLE(%rip)
                                        # kill: def $al killed $al killed $eax
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB12_14:
	movl	$.L.str.33, %edi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$.L.str.1, %edi
	movl	$.L.str.2, %esi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$3, %edi
	callq	ukplat_terminate
.Lfunc_end12:
	.size	tcp_rexmit, .Lfunc_end12-tcp_rexmit
                                        # -- End function
	.globl	tcp_rexmit_fast         # -- Begin function tcp_rexmit_fast
	.p2align	4, 0x90
	.type	tcp_rexmit_fast,@function
tcp_rexmit_fast:                        # @tcp_rexmit_fast
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	testq	%rdi, %rdi
	je	.LBB13_15
# %bb.1:
	movq	%rdi, %r14
	movq	192(%rdi), %r15
	testq	%r15, %r15
	je	.LBB13_14
# %bb.2:
	testb	$4, 82(%r14)
	jne	.LBB13_14
# %bb.3:
	movq	8(%r15), %rax
	cmpb	$1, 22(%rax)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB13_16
# %bb.4:
	movq	(%r15), %rax
	movq	%rax, 192(%r14)
	leaq	184(%r14), %r12
	movq	184(%r14), %rcx
	testq	%rcx, %rcx
	je	.LBB13_8
	.p2align	4, 0x90
.LBB13_5:                               # =>This Inner Loop Header: Depth=1
	movq	24(%rcx), %rax
	movl	4(%rax), %edi
	callq	lwip_htonl
	movl	%eax, %ebx
	movq	24(%r15), %rax
	movl	4(%rax), %edi
	callq	lwip_htonl
	cmpl	%eax, %ebx
	movq	(%r12), %rax
	jns	.LBB13_9
# %bb.6:                                #   in Loop: Header=BB13_5 Depth=1
	movq	(%rax), %rcx
	movq	%rax, %r12
	testq	%rcx, %rcx
	jne	.LBB13_5
# %bb.7:
	movq	%rax, %r12
.LBB13_8:
	xorl	%eax, %eax
.LBB13_9:
	movq	%rax, (%r15)
	movq	%r15, (%r12)
	cmpq	$0, (%r15)
	jne	.LBB13_11
# %bb.10:
	movw	$0, 174(%r14)
.LBB13_11:
	movb	126(%r14), %al
	cmpb	$-1, %al
	je	.LBB13_13
# %bb.12:
	addb	$1, %al
	movb	%al, 126(%r14)
.LBB13_13:
	movl	$0, 112(%r14)
	movl	$42, __A_VARIABLE(%rip)
	movl	132(%r14), %eax
	movl	160(%r14), %ecx
	cmpl	%ecx, %eax
	cmovbl	%eax, %ecx
	shrl	%ecx
	movzwl	110(%r14), %eax
	leal	(%rax,%rax), %edx
	cmpl	%edx, %ecx
	cmovbl	%edx, %ecx
	movl	%ecx, 136(%r14)
	leal	(%rax,%rax,2), %eax
	addl	%ecx, %eax
	movl	%eax, 132(%r14)
	orb	$4, 82(%r14)
	movw	$0, 108(%r14)
	jmp	.LBB13_14
.LBB13_16:
	movl	$42, __A_VARIABLE(%rip)
.LBB13_14:
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB13_15:
	movl	$.L.str.34, %edi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$.L.str.1, %edi
	movl	$.L.str.2, %esi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$3, %edi
	callq	ukplat_terminate
.Lfunc_end13:
	.size	tcp_rexmit_fast, .Lfunc_end13-tcp_rexmit_fast
                                        # -- End function
	.globl	tcp_rst                 # -- Begin function tcp_rst
	.p2align	4, 0x90
	.type	tcp_rst,@function
tcp_rst:                                # @tcp_rst
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$24, %rsp
	testq	%rcx, %rcx
	je	.LBB14_1
# %bb.3:
	movq	%r8, %r14
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	testq	%r8, %r8
	je	.LBB14_4
# %bb.5:
	movl	%r9d, %ebx
	movq	%rcx, %r12
	movl	%edx, %r13d
	movzwl	16(%rbp), %r15d
	movl	%esi, %edi
	callq	lwip_htonl
	movl	$65343, (%rsp)          # imm = 0xFF3F
	movzwl	%bx, %ecx
	movzwl	%r15w, %r8d
	movl	%r13d, %edi
	xorl	%esi, %esi
	movl	%eax, %edx
	movl	$20, %r9d
	callq	tcp_output_alloc_header_common
	testq	%rax, %rax
	je	.LBB14_7
# %bb.6:
	movl	$42, __A_VARIABLE(%rip)
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	movq	%r12, %rdx
	movq	%r14, %rcx
	callq	tcp_output_control_segment
.LBB14_7:
	movl	$42, __A_VARIABLE(%rip)
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB14_1:
	movl	$.L.str.35, %edi
	jmp	.LBB14_2
.LBB14_4:
	movl	$.L.str.36, %edi
.LBB14_2:
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$.L.str.1, %edi
	movl	$.L.str.2, %esi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$3, %edi
	callq	ukplat_terminate
.Lfunc_end14:
	.size	tcp_rst, .Lfunc_end14-tcp_rst
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function tcp_output_alloc_header_common
	.type	tcp_output_alloc_header_common,@function
tcp_output_alloc_header_common:         # @tcp_output_alloc_header_common
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	movl	%r9d, %r15d
	movl	%r8d, %r13d
	movl	%ecx, %r14d
	movl	%edx, %r12d
	movl	%edi, -48(%rbp)         # 4-byte Spill
	addl	$20, %esi
	movzwl	%si, %esi
	movl	$54, %edi
	movl	$640, %edx              # imm = 0x280
	callq	pbuf_alloc
	movq	%rax, %rbx
	testq	%rax, %rax
	je	.LBB15_3
# %bb.1:
	movl	%r15d, -44(%rbp)        # 4-byte Spill
	cmpw	$19, 18(%rbx)
	jbe	.LBB15_4
# %bb.2:
	movq	8(%rbx), %r15
	movzwl	%r14w, %edi
	callq	lwip_htons
	movw	%ax, (%r15)
	movzwl	%r13w, %edi
	callq	lwip_htons
	movw	%ax, 2(%r15)
	movl	%r12d, 4(%r15)
	movl	-48(%rbp), %edi         # 4-byte Reload
	callq	lwip_htonl
	movl	%eax, 8(%r15)
	movzbl	-44(%rbp), %edi         # 1-byte Folded Reload
	orl	$20480, %edi            # imm = 0x5000
	callq	lwip_htons
	movw	%ax, 12(%r15)
	movzwl	16(%rbp), %edi
	callq	lwip_htons
	movw	%ax, 14(%r15)
	movl	$0, 16(%r15)
.LBB15_3:
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB15_4:
	movl	$.L.str.56, %edi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$.L.str.1, %edi
	movl	$.L.str.2, %esi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$3, %edi
	callq	ukplat_terminate
.Lfunc_end15:
	.size	tcp_output_alloc_header_common, .Lfunc_end15-tcp_output_alloc_header_common
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function tcp_output_control_segment
	.type	tcp_output_control_segment,@function
tcp_output_control_segment:             # @tcp_output_control_segment
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
	je	.LBB16_21
# %bb.1:
	movq	%rcx, %r12
	movq	%rdx, %r15
	movq	%rsi, %r14
	movq	%rdi, %rbx
	testq	%rdi, %rdi
	je	.LBB16_4
# %bb.2:
	movb	48(%rbx), %al
	testb	%al, %al
	je	.LBB16_4
# %bb.3:
	movzbl	%al, %edi
	callq	netif_get_by_index
	jmp	.LBB16_8
.LBB16_4:
	testq	%r12, %r12
	je	.LBB16_7
# %bb.5:
	cmpb	$6, 20(%r12)
	jne	.LBB16_7
# %bb.6:
	movq	%r15, %rdi
	movq	%r12, %rsi
	callq	ip6_route
	jmp	.LBB16_8
.LBB16_7:
	movq	%r12, %rdi
	callq	ip4_route
.LBB16_8:
	movq	%rax, %r13
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB16_9
# %bb.10:
	testb	$4, 248(%r13)
	je	.LBB16_12
# %bb.11:
	movq	8(%r14), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movzwl	16(%r14), %edx
	movq	%r14, %rdi
	movl	$6, %esi
	movq	%r15, %rcx
	movq	%r12, %r8
	callq	ip_chksum_pseudo
	movq	-48(%rbp), %rcx         # 8-byte Reload
	movw	%ax, 16(%rcx)
.LBB16_12:
	testq	%rbx, %rbx
	je	.LBB16_13
# %bb.14:
	movb	50(%rbx), %al
	movb	51(%rbx), %cl
	jmp	.LBB16_15
.LBB16_9:
	movb	$-4, %bl
	jmp	.LBB16_20
.LBB16_13:
	movb	$-1, %cl
	xorl	%eax, %eax
.LBB16_15:
	addw	$1, lwip_stats+144(%rip)
	testq	%r12, %r12
	je	.LBB16_18
# %bb.16:
	cmpb	$6, 20(%r12)
	jne	.LBB16_18
# %bb.17:
	movq	%r13, (%rsp)
	movzbl	%cl, %ecx
	movzbl	%al, %r8d
	movq	%r14, %rdi
	movq	%r15, %rsi
	movq	%r12, %rdx
	movl	$6, %r9d
	callq	ip6_output_if
	jmp	.LBB16_19
.LBB16_18:
	movq	%r13, (%rsp)
	movzbl	%cl, %ecx
	movzbl	%al, %r8d
	movq	%r14, %rdi
	movq	%r15, %rsi
	movq	%r12, %rdx
	movl	$6, %r9d
	callq	ip4_output_if
.LBB16_19:
	movl	%eax, %ebx
.LBB16_20:
	movq	%r14, %rdi
	callq	pbuf_free
	movl	$42, __A_VARIABLE(%rip)
	movl	%ebx, %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB16_21:
	movl	$.L.str.58, %edi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$.L.str.1, %edi
	movl	$.L.str.2, %esi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$3, %edi
	callq	ukplat_terminate
.Lfunc_end16:
	.size	tcp_output_control_segment, .Lfunc_end16-tcp_output_control_segment
                                        # -- End function
	.globl	tcp_keepalive           # -- Begin function tcp_keepalive
	.p2align	4, 0x90
	.type	tcp_keepalive,@function
tcp_keepalive:                          # @tcp_keepalive
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	testq	%rdi, %rdi
	je	.LBB17_5
# %bb.1:
	movq	%rdi, %rbx
	movl	144(%rdi), %edi
	addl	$-1, %edi
	callq	lwip_htonl
	movzwl	78(%rbx), %r9d
	movzwl	80(%rbx), %r8d
	movl	92(%rbx), %edi
	movl	100(%rbx), %edx
	movb	273(%rbx), %cl
	shrl	%cl, %edx
	cmpl	$65535, %edx            # imm = 0xFFFF
	movl	$65535, %ecx            # imm = 0xFFFF
	cmovbl	%edx, %ecx
	movzwl	%cx, %ecx
	movl	%ecx, (%rsp)
	xorl	%esi, %esi
	movl	%eax, %edx
	movl	%r9d, %ecx
	movl	$16, %r9d
	callq	tcp_output_alloc_header_common
	testq	%rax, %rax
	je	.LBB17_2
# %bb.3:
	movl	100(%rbx), %ecx
	addl	92(%rbx), %ecx
	movl	%ecx, 104(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	leaq	24(%rbx), %rcx
	movq	%rbx, %rdi
	movq	%rax, %rsi
	movq	%rbx, %rdx
	callq	tcp_output_control_segment
	jmp	.LBB17_4
.LBB17_2:
	movl	$42, __A_VARIABLE(%rip)
	movb	$-1, %al
.LBB17_4:
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.LBB17_5:
	movl	$.L.str.38, %edi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$.L.str.1, %edi
	movl	$.L.str.2, %esi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$3, %edi
	callq	ukplat_terminate
.Lfunc_end17:
	.size	tcp_keepalive, .Lfunc_end17-tcp_keepalive
                                        # -- End function
	.globl	tcp_zero_window_probe   # -- Begin function tcp_zero_window_probe
	.p2align	4, 0x90
	.type	tcp_zero_window_probe,@function
tcp_zero_window_probe:                  # @tcp_zero_window_probe
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
	je	.LBB18_17
# %bb.1:
	movq	%rdi, %rbx
	movq	184(%rdi), %r12
	testq	%r12, %r12
	je	.LBB18_2
# %bb.3:
	movb	270(%rbx), %al
	cmpb	$-1, %al
	je	.LBB18_5
# %bb.4:
	addb	$1, %al
	movb	%al, 270(%rbx)
.LBB18_5:
	movq	24(%r12), %rax
	movzwl	12(%rax), %edi
	callq	lwip_htons
                                        # kill: def $ax killed $ax def $eax
	testb	$1, %al
	jne	.LBB18_7
# %bb.6:
	xorl	%r13d, %r13d
	jmp	.LBB18_8
.LBB18_2:
	xorl	%eax, %eax
	jmp	.LBB18_16
.LBB18_7:
	cmpw	$0, 16(%r12)
	sete	%r13b
.LBB18_8:
	movl	%r13d, %eax
	xorb	$1, %al
	movq	24(%r12), %rcx
	movl	4(%rcx), %edx
	movzwl	78(%rbx), %r9d
	movzwl	80(%rbx), %r8d
	movl	92(%rbx), %edi
	movl	100(%rbx), %esi
	movb	273(%rbx), %cl
	shrl	%cl, %esi
	cmpl	$65535, %esi            # imm = 0xFFFF
	movl	$65535, %ecx            # imm = 0xFFFF
	cmovbl	%esi, %ecx
	movzwl	%cx, %ecx
	movl	%ecx, (%rsp)
	movzbl	%al, %esi
	movl	%r9d, %ecx
	movl	$16, %r9d
	callq	tcp_output_alloc_header_common
	testq	%rax, %rax
	je	.LBB18_9
# %bb.10:
	movq	%rax, %r14
	movl	100(%rbx), %eax
	addl	92(%rbx), %eax
	movl	%eax, 104(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movq	8(%r14), %r15
	testb	%r13b, %r13b
	je	.LBB18_12
# %bb.11:
	movzwl	12(%r15), %r13d
	andl	$-16129, %r13d          # imm = 0xC0FF
	movl	$17, %edi
	callq	lwip_htons
                                        # kill: def $ax killed $ax def $eax
	orl	%r13d, %eax
	movw	%ax, 12(%r15)
	jmp	.LBB18_13
.LBB18_9:
	movl	$42, __A_VARIABLE(%rip)
	movb	$-1, %al
	jmp	.LBB18_16
.LBB18_12:
	addq	$20, %r15
	movq	8(%r12), %rdi
	movzwl	16(%rdi), %eax
	subw	16(%r12), %ax
	movzwl	%ax, %ecx
	movq	%r15, %rsi
	movl	$1, %edx
	callq	pbuf_copy_partial
.LBB18_13:
	movq	24(%r12), %rax
	movl	4(%rax), %edi
	callq	lwip_htonl
	addl	$1, %eax
	cmpl	%eax, 144(%rbx)
	jns	.LBB18_15
# %bb.14:
	movl	%eax, 144(%rbx)
.LBB18_15:
	movl	$42, __A_VARIABLE(%rip)
	leaq	24(%rbx), %rcx
	movq	%rbx, %rdi
	movq	%r14, %rsi
	movq	%rbx, %rdx
	callq	tcp_output_control_segment
                                        # kill: def $al killed $al def $eax
.LBB18_16:
	movl	$42, __A_VARIABLE(%rip)
                                        # kill: def $al killed $al killed $eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB18_17:
	movl	$.L.str.39, %edi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$.L.str.1, %edi
	movl	$.L.str.2, %esi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$3, %edi
	callq	ukplat_terminate
.Lfunc_end18:
	.size	tcp_zero_window_probe, .Lfunc_end18-tcp_zero_window_probe
                                        # -- End function
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"tcp_write: invalid pcb"
	.size	.L.str, 23

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
	.asciz	"tcp_write: arg == NULL (programmer violates API)"
	.size	.L.str.3, 49

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"mss_local is too small"
	.size	.L.str.4, 23

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"inconsistent oversize vs. space"
	.size	.L.str.5, 32

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"inconsistent oversize vs. len"
	.size	.L.str.6, 30

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"tcp_write: ROM pbufs cannot be oversized"
	.size	.L.str.7, 41

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"unsent_oversize mismatch (pcb->unsent is NULL)"
	.size	.L.str.8, 47

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"tcp_write: check that first pbuf can hold the complete seglen"
	.size	.L.str.9, 62

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"oversize == 0"
	.size	.L.str.10, 14

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"prev_seg != NULL"
	.size	.L.str.11, 17

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"tcp_write: cannot concatenate when pcb->unsent is empty"
	.size	.L.str.12, 56

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"tcp_write: extension of reference requires reference"
	.size	.L.str.13, 53

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"tcp_write: valid queue length"
	.size	.L.str.14, 30

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"tcp_split_unsent_seg: invalid pcb"
	.size	.L.str.15, 34

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"Can't split segment into length 0"
	.size	.L.str.16, 34

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"split <= mss"
	.size	.L.str.17, 13

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"tcp_send_fin: invalid pcb"
	.size	.L.str.20, 26

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"tcp_enqueue_flags: need either TCP_SYN or TCP_FIN in flags (programmer violates API)"
	.size	.L.str.21, 85

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"tcp_enqueue_flags: invalid pcb"
	.size	.L.str.22, 31

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"tcp_enqueue_flags: check that first pbuf can hold optlen"
	.size	.L.str.23, 57

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"tcp_enqueue_flags: invalid segment length"
	.size	.L.str.25, 42

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"tcp_enqueue_flags: invalid queue length"
	.size	.L.str.26, 40

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"tcp_output: invalid pcb"
	.size	.L.str.27, 24

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"don't call tcp_output for listen-pcbs"
	.size	.L.str.28, 38

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"RST not expected here!"
	.size	.L.str.29, 23

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"tcp_rexmit_rto_prepare: invalid pcb"
	.size	.L.str.30, 36

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"tcp_rexmit_rto_commit: invalid pcb"
	.size	.L.str.31, 35

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"tcp_rexmit_rto: invalid pcb"
	.size	.L.str.32, 28

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"tcp_rexmit: invalid pcb"
	.size	.L.str.33, 24

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"tcp_rexmit_fast: invalid pcb"
	.size	.L.str.34, 29

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"tcp_rst: invalid local_ip"
	.size	.L.str.35, 26

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"tcp_rst: invalid remote_ip"
	.size	.L.str.36, 27

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"tcp_send_empty_ack: invalid pcb"
	.size	.L.str.37, 32

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"tcp_keepalive: invalid pcb"
	.size	.L.str.38, 27

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"tcp_zero_window_probe: invalid pcb"
	.size	.L.str.39, 35

	.type	uk_pr_crit.__str,@object # @uk_pr_crit.__str
	.section	.data_shared,"aw",@progbits
uk_pr_crit.__str:
	.asciz	"liblwip"
	.size	uk_pr_crit.__str, 8

	.type	uk_pr_crit.__str.40,@object # @uk_pr_crit.__str.40
uk_pr_crit.__str.40:
	.asciz	"tcp_out.c"
	.size	uk_pr_crit.__str.40, 10

	.type	.L.str.42,@object       # @.str.42
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.42:
	.asciz	"tcp_write: pbufs on queue => at least one queue non-empty"
	.size	.L.str.42, 58

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"tcp_write: no pbufs on queue => both queues empty"
	.size	.L.str.43, 50

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"tcp_pbuf_prealloc: invalid oversize"
	.size	.L.str.44, 36

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"tcp_pbuf_prealloc: invalid pcb"
	.size	.L.str.45, 31

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"need unchained pbuf"
	.size	.L.str.46, 20

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"tcp_create_segment: invalid pcb"
	.size	.L.str.47, 32

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"tcp_create_segment: invalid pbuf"
	.size	.L.str.48, 33

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"p->tot_len >= optlen"
	.size	.L.str.49, 21

	.type	.L.str.53,@object       # @.str.53
.L.str.53:
	.asciz	"options not filled"
	.size	.L.str.53, 19

	.type	.L.str.56,@object       # @.str.56
.L.str.56:
	.asciz	"check that first pbuf can hold struct tcp_hdr"
	.size	.L.str.56, 46

	.type	.L.str.58,@object       # @.str.58
.L.str.58:
	.asciz	"tcp_output_control_segment: invalid pbuf"
	.size	.L.str.58, 41

	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
