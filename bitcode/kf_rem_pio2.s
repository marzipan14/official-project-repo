	.text
	.file	"kf_rem_pio2.c"
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2               # -- Begin function __kernel_rem_pio2f
.LCPI0_0:
	.long	998244352               # float 0.00390625
.LCPI0_1:
	.long	3279945728              # float -256
.LCPI0_2:
	.long	1040187392              # float 0.125
.LCPI0_3:
	.long	3238002688              # float -8
.LCPI0_4:
	.long	1056964608              # float 0.5
.LCPI0_5:
	.long	1065353216              # float 1
.LCPI0_6:
	.long	1132462080              # float 256
.LCPI0_8:
	.long	0                       # float 0
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4
.LCPI0_7:
	.long	2147483648              # float -0
	.long	2147483648              # float -0
	.long	2147483648              # float -0
	.long	2147483648              # float -0
	.text
	.globl	__kernel_rem_pio2f
	.p2align	4, 0x90
	.type	__kernel_rem_pio2f,@function
__kernel_rem_pio2f:                     # @__kernel_rem_pio2f
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$424, %rsp              # imm = 0x1A8
	movq	%r9, -72(%rbp)          # 8-byte Spill
                                        # kill: def $r8d killed $r8d def $r8
	movl	%ecx, %r11d
                                        # kill: def $edx killed $edx def $rdx
	movq	%rsi, -96(%rbp)         # 8-byte Spill
	movq	%rdi, %r12
	movq	%r8, -272(%rbp)         # 8-byte Spill
	movslq	%r8d, %rax
	movl	init_jk(,%rax,4), %r13d
	leal	-3(%rdx), %eax
	leal	4(%rdx), %r8d
	testl	%eax, %eax
	cmovnsl	%eax, %r8d
	xorl	%eax, %eax
	sarl	$3, %r8d
	cmovsl	%eax, %r8d
	leal	-1(%r11), %r9d
	leal	(,%r8,8), %edi
	movq	%rdx, %rax
	movq	%rdx, -264(%rbp)        # 8-byte Spill
	subl	%edi, %eax
	movl	%eax, -48(%rbp)         # 4-byte Spill
	movl	%r13d, %eax
	addl	%r9d, %eax
	js	.LBB0_14
# %bb.1:
	movl	%r8d, %eax
	subl	%r11d, %eax
	addl	$1, %eax
	movslq	%eax, %rdx
	leal	(%r11,%r13), %eax
	movl	%eax, %r10d
	andl	$1, %r10d
	cmpl	$1, %eax
	jne	.LBB0_3
# %bb.2:
	xorl	%esi, %esi
	testq	%r10, %r10
	jne	.LBB0_10
	jmp	.LBB0_14
.LBB0_3:
	movq	-72(%rbp), %rcx         # 8-byte Reload
	leaq	(%rcx,%rdx,4), %rbx
	addq	$4, %rbx
	subq	%r10, %rax
	xorl	%esi, %esi
	jmp	.LBB0_5
	.p2align	4, 0x90
.LBB0_4:                                #   in Loop: Header=BB0_5 Depth=1
	movss	%xmm0, -380(%rbp,%rsi,4)
	addq	$2, %rsi
	cmpq	%rsi, %rax
	je	.LBB0_9
.LBB0_5:                                # =>This Inner Loop Header: Depth=1
	movq	%rdx, %rcx
	addq	%rsi, %rcx
	xorps	%xmm0, %xmm0
	xorps	%xmm1, %xmm1
	js	.LBB0_7
# %bb.6:                                #   in Loop: Header=BB0_5 Depth=1
	xorps	%xmm1, %xmm1
	cvtsi2ssl	-4(%rbx,%rsi,4), %xmm1
.LBB0_7:                                #   in Loop: Header=BB0_5 Depth=1
	movss	%xmm1, -384(%rbp,%rsi,4)
	cmpq	$-1, %rcx
	jl	.LBB0_4
# %bb.8:                                #   in Loop: Header=BB0_5 Depth=1
	xorps	%xmm0, %xmm0
	cvtsi2ssl	(%rbx,%rsi,4), %xmm0
	jmp	.LBB0_4
.LBB0_9:                                # %.loopexit17
	addq	%rsi, %rdx
	testq	%r10, %r10
	je	.LBB0_14
.LBB0_10:
	testq	%rdx, %rdx
	js	.LBB0_12
# %bb.11:
	movq	-72(%rbp), %rax         # 8-byte Reload
	xorps	%xmm0, %xmm0
	cvtsi2ssl	(%rax,%rdx,4), %xmm0
	jmp	.LBB0_13
.LBB0_12:
	xorps	%xmm0, %xmm0
.LBB0_13:
	movss	%xmm0, -384(%rbp,%rsi,4)
.LBB0_14:
	movq	%r11, %rax
	movslq	%r13d, %r11
	negl	%edi
	movl	%edi, -76(%rbp)         # 4-byte Spill
	addl	$-8, -48(%rbp)          # 4-byte Folded Spill
	movl	%eax, %r14d
	movl	%r14d, %r10d
	andl	$1, %r10d
	movq	%rax, -64(%rbp)         # 8-byte Spill
	leal	-2(%rax), %esi
	movl	%r14d, %edi
	andl	$-2, %edi
	xorl	%ebx, %ebx
	jmp	.LBB0_17
	.p2align	4, 0x90
.LBB0_15:                               #   in Loop: Header=BB0_17 Depth=1
	xorps	%xmm0, %xmm0
.LBB0_16:                               #   in Loop: Header=BB0_17 Depth=1
	movss	%xmm0, -464(%rbp,%rbx,4)
	addl	$1, %esi
	cmpq	%r11, %rbx
	leaq	1(%rbx), %rbx
	jge	.LBB0_24
.LBB0_17:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_21 Depth 2
	movq	-64(%rbp), %rax         # 8-byte Reload
	testl	%eax, %eax
	jle	.LBB0_15
# %bb.18:                               #   in Loop: Header=BB0_17 Depth=1
	cmpl	$1, %eax
	jne	.LBB0_20
# %bb.19:                               #   in Loop: Header=BB0_17 Depth=1
	xorps	%xmm0, %xmm0
	xorl	%eax, %eax
	jmp	.LBB0_22
	.p2align	4, 0x90
.LBB0_20:                               # %.preheader15
                                        #   in Loop: Header=BB0_17 Depth=1
	xorps	%xmm1, %xmm1
	movl	%esi, %ecx
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB0_21:                               #   Parent Loop BB0_17 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	leal	1(%rcx), %edx
	movslq	%edx, %rdx
	movss	(%r12,%rax,4), %xmm2    # xmm2 = mem[0],zero,zero,zero
	movss	4(%r12,%rax,4), %xmm0   # xmm0 = mem[0],zero,zero,zero
	mulss	-384(%rbp,%rdx,4), %xmm2
	addss	%xmm1, %xmm2
	movslq	%ecx, %rcx
	mulss	-384(%rbp,%rcx,4), %xmm0
	addss	%xmm2, %xmm0
	addq	$2, %rax
	addl	$-2, %ecx
	movaps	%xmm0, %xmm1
	cmpq	%rax, %rdi
	jne	.LBB0_21
.LBB0_22:                               #   in Loop: Header=BB0_17 Depth=1
	testq	%r10, %r10
	je	.LBB0_16
# %bb.23:                               #   in Loop: Header=BB0_17 Depth=1
	leal	(%r9,%rbx), %ecx
	movss	(%r12,%rax,4), %xmm1    # xmm1 = mem[0],zero,zero,zero
	subl	%eax, %ecx
	movslq	%ecx, %rax
	mulss	-384(%rbp,%rax,4), %xmm1
	addss	%xmm1, %xmm0
	jmp	.LBB0_16
.LBB0_24:
	movl	$8, %eax
	movl	-48(%rbp), %edi         # 4-byte Reload
	subl	%edi, %eax
	movl	%eax, -88(%rbp)         # 4-byte Spill
	movl	$7, %eax
	subl	%edi, %eax
	movl	%eax, -84(%rbp)         # 4-byte Spill
	movl	%r8d, %eax
	movq	%rax, -304(%rbp)        # 8-byte Spill
	movl	%r14d, %eax
	andl	$1, %eax
	movq	%rax, -296(%rbp)        # 8-byte Spill
	leaq	-260(,%r11,4), %rax
	addq	%rbp, %rax
	movq	%rax, -280(%rbp)        # 8-byte Spill
	andl	$-2, %r14d
	movss	.LCPI0_0(%rip), %xmm6   # xmm6 = mem[0],zero,zero,zero
	movss	.LCPI0_1(%rip), %xmm7   # xmm7 = mem[0],zero,zero,zero
	movq	%r13, -288(%rbp)        # 8-byte Spill
                                        # kill: def $r13d killed $r13d killed $r13 def $r13
	movq	%r11, -56(%rbp)         # 8-byte Spill
	jmp	.LBB0_26
	.p2align	4, 0x90
.LBB0_25:                               #   in Loop: Header=BB0_26 Depth=1
	movl	%eax, %r13d
.LBB0_26:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_28 Depth 2
                                        #     Child Loop BB0_54 Depth 2
                                        #     Child Loop BB0_73 Depth 2
                                        #     Child Loop BB0_79 Depth 2
                                        #     Child Loop BB0_82 Depth 2
                                        #     Child Loop BB0_86 Depth 2
                                        #       Child Loop BB0_90 Depth 3
	movslq	%r13d, %r15
	movss	-464(%rbp,%r15,4), %xmm1 # xmm1 = mem[0],zero,zero,zero
	testl	%r15d, %r15d
	jle	.LBB0_29
# %bb.27:                               # %.preheader13
                                        #   in Loop: Header=BB0_26 Depth=1
	leaq	1(%r15), %rax
	leaq	-256(%rbp), %rcx
	.p2align	4, 0x90
.LBB0_28:                               #   Parent Loop BB0_26 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movaps	%xmm1, %xmm0
	mulss	%xmm6, %xmm0
	cvttss2si	%xmm0, %edx
	xorps	%xmm0, %xmm0
	cvtsi2ss	%edx, %xmm0
	movaps	%xmm0, %xmm2
	mulss	%xmm7, %xmm2
	addss	%xmm1, %xmm2
	cvttss2si	%xmm2, %edx
	addss	-472(%rbp,%rax,4), %xmm0
	movl	%edx, (%rcx)
	addq	$4, %rcx
	addq	$-1, %rax
	movaps	%xmm0, %xmm1
	cmpq	$1, %rax
	jg	.LBB0_28
	jmp	.LBB0_30
	.p2align	4, 0x90
.LBB0_29:                               #   in Loop: Header=BB0_26 Depth=1
	movaps	%xmm1, %xmm0
.LBB0_30:                               #   in Loop: Header=BB0_26 Depth=1
	callq	scalbnf
	movss	%xmm0, -44(%rbp)        # 4-byte Spill
	mulss	.LCPI0_2(%rip), %xmm0
	callq	floorf
	movl	-48(%rbp), %edi         # 4-byte Reload
	mulss	.LCPI0_3(%rip), %xmm0
	addss	-44(%rbp), %xmm0        # 4-byte Folded Reload
	cvttss2si	%xmm0, %r10d
	xorps	%xmm1, %xmm1
	cvtsi2ss	%r10d, %xmm1
	subss	%xmm1, %xmm0
	testl	%edi, %edi
	jle	.LBB0_42
# %bb.31:                               #   in Loop: Header=BB0_26 Depth=1
	movslq	%r13d, %rax
	movl	-260(%rbp,%rax,4), %ebx
	movl	%ebx, %edx
	movl	-88(%rbp), %ecx         # 4-byte Reload
	sarl	%cl, %edx
	addl	%edx, %r10d
                                        # kill: def $cl killed $cl killed $ecx
	shll	%cl, %edx
	subl	%edx, %ebx
	movl	%ebx, -260(%rbp,%rax,4)
	movl	-84(%rbp), %ecx         # 4-byte Reload
                                        # kill: def $cl killed $cl killed $ecx
	sarl	%cl, %ebx
.LBB0_32:                               #   in Loop: Header=BB0_26 Depth=1
	movq	-56(%rbp), %r9          # 8-byte Reload
	movq	-64(%rbp), %r11         # 8-byte Reload
	movss	.LCPI0_0(%rip), %xmm6   # xmm6 = mem[0],zero,zero,zero
	movss	.LCPI0_1(%rip), %xmm7   # xmm7 = mem[0],zero,zero,zero
	movss	.LCPI0_5(%rip), %xmm1   # xmm1 = mem[0],zero,zero,zero
	testl	%ebx, %ebx
	jle	.LBB0_67
.LBB0_33:                               #   in Loop: Header=BB0_26 Depth=1
	testl	%r13d, %r13d
	jle	.LBB0_46
# %bb.34:                               #   in Loop: Header=BB0_26 Depth=1
	movl	%ebx, -44(%rbp)         # 4-byte Spill
	movl	%r13d, %esi
	movl	%esi, %r8d
	andl	$1, %r8d
	cmpl	$1, %r13d
	jne	.LBB0_50
# %bb.35:                               #   in Loop: Header=BB0_26 Depth=1
	xorl	%ecx, %ecx
	xorl	%eax, %eax
.LBB0_36:                               #   in Loop: Header=BB0_26 Depth=1
	testq	%r8, %r8
	movl	-44(%rbp), %ebx         # 4-byte Reload
	je	.LBB0_41
# %bb.37:                               #   in Loop: Header=BB0_26 Depth=1
	movl	-256(%rbp,%rcx,4), %edx
	movl	$255, %esi
	testl	%eax, %eax
	jne	.LBB0_40
# %bb.38:                               #   in Loop: Header=BB0_26 Depth=1
	testl	%edx, %edx
	je	.LBB0_46
# %bb.39:                               #   in Loop: Header=BB0_26 Depth=1
	movl	$1, %eax
	movl	$256, %esi              # imm = 0x100
.LBB0_40:                               #   in Loop: Header=BB0_26 Depth=1
	subl	%edx, %esi
	movl	%esi, -256(%rbp,%rcx,4)
.LBB0_41:                               #   in Loop: Header=BB0_26 Depth=1
	testl	%edi, %edi
	jg	.LBB0_47
	jmp	.LBB0_64
	.p2align	4, 0x90
.LBB0_42:                               #   in Loop: Header=BB0_26 Depth=1
	testl	%edi, %edi
	je	.LBB0_62
# %bb.43:                               #   in Loop: Header=BB0_26 Depth=1
	movl	$2, %ebx
	ucomiss	.LCPI0_4(%rip), %xmm0
	movq	-56(%rbp), %r9          # 8-byte Reload
	movq	-64(%rbp), %r11         # 8-byte Reload
	movss	.LCPI0_0(%rip), %xmm6   # xmm6 = mem[0],zero,zero,zero
	movss	.LCPI0_1(%rip), %xmm7   # xmm7 = mem[0],zero,zero,zero
	movss	.LCPI0_5(%rip), %xmm1   # xmm1 = mem[0],zero,zero,zero
	jae	.LBB0_33
# %bb.44:                               #   in Loop: Header=BB0_26 Depth=1
	xorl	%ebx, %ebx
	jmp	.LBB0_67
	.p2align	4, 0x90
.LBB0_46:                               #   in Loop: Header=BB0_26 Depth=1
	xorl	%eax, %eax
	testl	%edi, %edi
	jle	.LBB0_64
.LBB0_47:                               #   in Loop: Header=BB0_26 Depth=1
	cmpl	$2, %edi
	je	.LBB0_63
# %bb.48:                               #   in Loop: Header=BB0_26 Depth=1
	cmpl	$1, %edi
	jne	.LBB0_64
# %bb.49:                               #   in Loop: Header=BB0_26 Depth=1
	movslq	%r13d, %rcx
	andl	$127, -260(%rbp,%rcx,4)
	jmp	.LBB0_64
.LBB0_50:                               #   in Loop: Header=BB0_26 Depth=1
	subq	%r8, %rsi
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	jmp	.LBB0_54
	.p2align	4, 0x90
.LBB0_51:                               #   in Loop: Header=BB0_54 Depth=2
	movl	$1, %eax
	movl	$256, %ebx              # imm = 0x100
.LBB0_52:                               #   in Loop: Header=BB0_54 Depth=2
	subl	%edx, %ebx
	movl	%ebx, -252(%rbp,%rcx,4)
.LBB0_53:                               #   in Loop: Header=BB0_54 Depth=2
	addq	$2, %rcx
	cmpq	%rcx, %rsi
	je	.LBB0_36
.LBB0_54:                               #   Parent Loop BB0_26 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-256(%rbp,%rcx,4), %edx
	movl	$255, %ebx
	testl	%eax, %eax
	jne	.LBB0_57
# %bb.55:                               #   in Loop: Header=BB0_54 Depth=2
	testl	%edx, %edx
	je	.LBB0_61
# %bb.56:                               #   in Loop: Header=BB0_54 Depth=2
	movl	$1, %eax
	movl	$256, %ebx              # imm = 0x100
.LBB0_57:                               #   in Loop: Header=BB0_54 Depth=2
	subl	%edx, %ebx
	movl	%ebx, -256(%rbp,%rcx,4)
.LBB0_58:                               #   in Loop: Header=BB0_54 Depth=2
	movl	-252(%rbp,%rcx,4), %edx
	movl	$255, %ebx
	testl	%eax, %eax
	jne	.LBB0_52
# %bb.59:                               #   in Loop: Header=BB0_54 Depth=2
	testl	%edx, %edx
	jne	.LBB0_51
# %bb.60:                               #   in Loop: Header=BB0_54 Depth=2
	xorl	%eax, %eax
	jmp	.LBB0_53
.LBB0_61:                               #   in Loop: Header=BB0_54 Depth=2
	xorl	%eax, %eax
	jmp	.LBB0_58
.LBB0_62:                               #   in Loop: Header=BB0_26 Depth=1
	movslq	%r13d, %rax
	movl	-260(%rbp,%rax,4), %ebx
	sarl	$8, %ebx
	jmp	.LBB0_32
.LBB0_63:                               #   in Loop: Header=BB0_26 Depth=1
	movslq	%r13d, %rcx
	andl	$63, -260(%rbp,%rcx,4)
.LBB0_64:                               #   in Loop: Header=BB0_26 Depth=1
	addl	$1, %r10d
	cmpl	$2, %ebx
	jne	.LBB0_67
# %bb.65:                               #   in Loop: Header=BB0_26 Depth=1
	movaps	%xmm1, %xmm2
	subss	%xmm0, %xmm2
	movl	$2, %ebx
	testl	%eax, %eax
	je	.LBB0_68
# %bb.66:                               #   in Loop: Header=BB0_26 Depth=1
	movaps	%xmm1, %xmm0
	movl	%r10d, -44(%rbp)        # 4-byte Spill
	movss	%xmm2, -80(%rbp)        # 4-byte Spill
	callq	scalbnf
	movss	-80(%rbp), %xmm2        # 4-byte Reload
                                        # xmm2 = mem[0],zero,zero,zero
	movss	.LCPI0_1(%rip), %xmm7   # xmm7 = mem[0],zero,zero,zero
	movss	.LCPI0_0(%rip), %xmm6   # xmm6 = mem[0],zero,zero,zero
	movl	$2, %ebx
	movq	-64(%rbp), %r11         # 8-byte Reload
	movl	-48(%rbp), %edi         # 4-byte Reload
	movl	-44(%rbp), %r10d        # 4-byte Reload
	movq	-56(%rbp), %r9          # 8-byte Reload
	subss	%xmm0, %xmm2
	jmp	.LBB0_68
	.p2align	4, 0x90
.LBB0_67:                               #   in Loop: Header=BB0_26 Depth=1
	movaps	%xmm0, %xmm2
.LBB0_68:                               #   in Loop: Header=BB0_26 Depth=1
	ucomiss	.LCPI0_8, %xmm2
	jne	.LBB0_94
	jp	.LBB0_94
# %bb.69:                               #   in Loop: Header=BB0_26 Depth=1
	cmpl	-288(%rbp), %r13d       # 4-byte Folded Reload
	jle	.LBB0_81
# %bb.70:                               #   in Loop: Header=BB0_26 Depth=1
	movq	%r15, %rax
	subq	%r9, %rax
	xorl	%ecx, %ecx
	movq	%r15, %rdx
	cmpq	$8, %rax
	jb	.LBB0_79
# %bb.71:                               #   in Loop: Header=BB0_26 Depth=1
	movl	%ebx, -44(%rbp)         # 4-byte Spill
	movq	%rax, %r8
	andq	$-8, %r8
	leaq	-8(%r8), %rcx
	movq	%rcx, %rdx
	shrq	$3, %rdx
	addq	$1, %rdx
	movl	%edx, %ebx
	andl	$1, %ebx
	testq	%rcx, %rcx
	je	.LBB0_93
# %bb.72:                               #   in Loop: Header=BB0_26 Depth=1
	subq	%rbx, %rdx
	leaq	-272(%rbp), %rcx
	leaq	(%rcx,%r15,4), %rcx
	xorps	%xmm0, %xmm0
	xorl	%esi, %esi
	xorps	%xmm1, %xmm1
	.p2align	4, 0x90
.LBB0_73:                               #   Parent Loop BB0_26 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movdqu	-48(%rcx,%rsi,4), %xmm2
	movdqu	-32(%rcx,%rsi,4), %xmm3
	movdqu	-16(%rcx,%rsi,4), %xmm4
	movdqu	(%rcx,%rsi,4), %xmm5
	pshufd	$27, %xmm5, %xmm5       # xmm5 = xmm5[3,2,1,0]
	por	%xmm0, %xmm5
	pshufd	$27, %xmm4, %xmm4       # xmm4 = xmm4[3,2,1,0]
	por	%xmm1, %xmm4
	pshufd	$27, %xmm3, %xmm0       # xmm0 = xmm3[3,2,1,0]
	por	%xmm5, %xmm0
	pshufd	$27, %xmm2, %xmm1       # xmm1 = xmm2[3,2,1,0]
	por	%xmm4, %xmm1
	addq	$-16, %rsi
	addq	$-2, %rdx
	jne	.LBB0_73
# %bb.74:                               # %.loopexit11
                                        #   in Loop: Header=BB0_26 Depth=1
	negq	%rsi
	testq	%rbx, %rbx
	je	.LBB0_76
.LBB0_75:                               #   in Loop: Header=BB0_26 Depth=1
	notq	%rsi
	addq	%r15, %rsi
	movdqu	-284(%rbp,%rsi,4), %xmm2
	movdqu	-268(%rbp,%rsi,4), %xmm3
	pshufd	$27, %xmm2, %xmm2       # xmm2 = xmm2[3,2,1,0]
	orps	%xmm2, %xmm1
	pshufd	$27, %xmm3, %xmm2       # xmm2 = xmm3[3,2,1,0]
	orps	%xmm2, %xmm0
.LBB0_76:                               #   in Loop: Header=BB0_26 Depth=1
	orps	%xmm1, %xmm0
	pshufd	$78, %xmm0, %xmm1       # xmm1 = xmm0[2,3,0,1]
	por	%xmm0, %xmm1
	pshufd	$229, %xmm1, %xmm0      # xmm0 = xmm1[1,1,2,3]
	por	%xmm1, %xmm0
	movd	%xmm0, %ecx
	cmpq	%r8, %rax
	jne	.LBB0_78
# %bb.77:                               #   in Loop: Header=BB0_26 Depth=1
	movl	-44(%rbp), %ebx         # 4-byte Reload
	jmp	.LBB0_80
.LBB0_78:                               #   in Loop: Header=BB0_26 Depth=1
	movq	%r15, %rdx
	subq	%r8, %rdx
	movl	-44(%rbp), %ebx         # 4-byte Reload
	.p2align	4, 0x90
.LBB0_79:                               #   Parent Loop BB0_26 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	orl	-260(%rbp,%rdx,4), %ecx
	addq	$-1, %rdx
	cmpq	%r9, %rdx
	jg	.LBB0_79
.LBB0_80:                               #   in Loop: Header=BB0_26 Depth=1
	testl	%ecx, %ecx
	jne	.LBB0_97
.LBB0_81:                               #   in Loop: Header=BB0_26 Depth=1
	movq	-280(%rbp), %rcx        # 8-byte Reload
	movl	%r13d, %eax
	.p2align	4, 0x90
.LBB0_82:                               #   Parent Loop BB0_26 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addl	$1, %eax
	cmpl	$0, (%rcx)
	leaq	-4(%rcx), %rcx
	je	.LBB0_82
# %bb.83:                               #   in Loop: Header=BB0_26 Depth=1
	movslq	%eax, %r8
	addl	%r11d, %r13d
	movq	-72(%rbp), %r10         # 8-byte Reload
	jmp	.LBB0_86
	.p2align	4, 0x90
.LBB0_84:                               #   in Loop: Header=BB0_86 Depth=2
	xorps	%xmm0, %xmm0
.LBB0_85:                               #   in Loop: Header=BB0_86 Depth=2
	movss	%xmm0, -460(%rbp,%rdx,4)
	addl	$1, %r13d
	cmpq	%r8, %r15
	jge	.LBB0_25
.LBB0_86:                               #   Parent Loop BB0_26 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_90 Depth 3
	movq	%r15, %rdx
	addq	$1, %r15
	movq	-304(%rbp), %rcx        # 8-byte Reload
	leaq	1(%rdx,%rcx), %rsi
	xorps	%xmm0, %xmm0
	cvtsi2ssl	(%r10,%rsi,4), %xmm0
	leal	(%rdx,%r11), %r9d
	movslq	%r9d, %rcx
	movss	%xmm0, -384(%rbp,%rcx,4)
	testl	%r11d, %r11d
	jle	.LBB0_84
# %bb.87:                               #   in Loop: Header=BB0_86 Depth=2
	cmpl	$1, %r11d
	jne	.LBB0_89
# %bb.88:                               #   in Loop: Header=BB0_86 Depth=2
	xorps	%xmm0, %xmm0
	xorl	%esi, %esi
	jmp	.LBB0_91
	.p2align	4, 0x90
.LBB0_89:                               # %.preheader7
                                        #   in Loop: Header=BB0_86 Depth=2
	xorps	%xmm1, %xmm1
	movl	%r13d, %ebx
	xorl	%esi, %esi
	.p2align	4, 0x90
.LBB0_90:                               #   Parent Loop BB0_26 Depth=1
                                        #     Parent Loop BB0_86 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movslq	%ebx, %rbx
	movss	(%r12,%rsi,4), %xmm2    # xmm2 = mem[0],zero,zero,zero
	movss	4(%r12,%rsi,4), %xmm0   # xmm0 = mem[0],zero,zero,zero
	mulss	-384(%rbp,%rbx,4), %xmm2
	addss	%xmm1, %xmm2
	leal	-1(%rbx), %ecx
	movslq	%ecx, %rcx
	mulss	-384(%rbp,%rcx,4), %xmm0
	addss	%xmm2, %xmm0
	addq	$2, %rsi
	addl	$-2, %ebx
	movaps	%xmm0, %xmm1
	cmpq	%rsi, %r14
	jne	.LBB0_90
.LBB0_91:                               #   in Loop: Header=BB0_86 Depth=2
	cmpq	$0, -296(%rbp)          # 8-byte Folded Reload
	je	.LBB0_85
# %bb.92:                               #   in Loop: Header=BB0_86 Depth=2
	movss	(%r12,%rsi,4), %xmm1    # xmm1 = mem[0],zero,zero,zero
	subl	%esi, %r9d
	movslq	%r9d, %rcx
	mulss	-384(%rbp,%rcx,4), %xmm1
	addss	%xmm1, %xmm0
	jmp	.LBB0_85
.LBB0_93:                               #   in Loop: Header=BB0_26 Depth=1
	xorps	%xmm0, %xmm0
	xorl	%esi, %esi
	xorps	%xmm1, %xmm1
	testq	%rbx, %rbx
	jne	.LBB0_75
	jmp	.LBB0_76
.LBB0_94:
	movl	%ebx, %r12d
	movl	%r10d, %r14d
	negl	%edi
	movaps	%xmm2, %xmm0
	callq	scalbnf
	ucomiss	.LCPI0_6(%rip), %xmm0
	jae	.LBB0_96
# %bb.95:
	cvttss2si	%xmm0, %eax
	movl	%eax, -256(%rbp,%r15,4)
	movl	-48(%rbp), %edi         # 4-byte Reload
	jmp	.LBB0_99
.LBB0_96:
	movss	.LCPI0_0(%rip), %xmm1   # xmm1 = mem[0],zero,zero,zero
	mulss	%xmm0, %xmm1
	cvttss2si	%xmm1, %eax
	xorps	%xmm1, %xmm1
	cvtsi2ss	%eax, %xmm1
	cvttss2si	%xmm1, %eax
	mulss	.LCPI0_1(%rip), %xmm1
	addss	%xmm0, %xmm1
	cvttss2si	%xmm1, %ecx
	movl	%ecx, -256(%rbp,%r15,4)
	addl	$1, %r13d
	movl	-76(%rbp), %edi         # 4-byte Reload
	addl	-264(%rbp), %edi        # 4-byte Folded Reload
	movl	%eax, -252(%rbp,%r15,4)
	jmp	.LBB0_99
.LBB0_97:                               # %.preheader6
	movl	%ebx, %r12d
	movl	%r10d, %r14d
	movslq	%r13d, %rax
	leaq	-260(,%rax,4), %rax
	addq	%rbp, %rax
	.p2align	4, 0x90
.LBB0_98:                               # =>This Inner Loop Header: Depth=1
	addl	$-8, %edi
	addl	$-1, %r13d
	cmpl	$0, (%rax)
	leaq	-4(%rax), %rax
	je	.LBB0_98
.LBB0_99:
	movss	.LCPI0_5(%rip), %xmm0   # xmm0 = mem[0],zero,zero,zero
	callq	scalbnf
	testl	%r13d, %r13d
	movq	-272(%rbp), %r8         # 8-byte Reload
	movq	-56(%rbp), %rbx         # 8-byte Reload
	movl	%r14d, %eax
	js	.LBB0_108
# %bb.100:
	movslq	%r13d, %r9
	leaq	1(%r9), %rcx
	movss	.LCPI0_0(%rip), %xmm2   # xmm2 = mem[0],zero,zero,zero
	.p2align	4, 0x90
.LBB0_101:                              # =>This Inner Loop Header: Depth=1
	xorps	%xmm1, %xmm1
	cvtsi2ssl	-260(%rbp,%rcx,4), %xmm1
	mulss	%xmm0, %xmm1
	movss	%xmm1, -468(%rbp,%rcx,4)
	mulss	%xmm2, %xmm0
	addq	$-1, %rcx
	jg	.LBB0_101
# %bb.102:
	testl	%r13d, %r13d
	js	.LBB0_108
# %bb.103:
	leaq	-464(,%r9,4), %rcx
	addq	%rbp, %rcx
	movq	%r9, %rdx
	jmp	.LBB0_105
	.p2align	4, 0x90
.LBB0_104:                              #   in Loop: Header=BB0_105 Depth=1
	movss	%xmm0, -176(%rbp,%rsi,4)
	addq	$-4, %rcx
	testq	%rdx, %rdx
	leaq	-1(%rdx), %rdx
	jle	.LBB0_108
.LBB0_105:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_106 Depth 2
	movq	%r9, %rsi
	subq	%rdx, %rsi
	xorps	%xmm0, %xmm0
	xorl	%edi, %edi
	.p2align	4, 0x90
.LBB0_106:                              #   Parent Loop BB0_105 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movaps	%xmm0, %xmm1
	movss	PIo2(,%rdi,4), %xmm0    # xmm0 = mem[0],zero,zero,zero
	mulss	(%rcx,%rdi,4), %xmm0
	addss	%xmm1, %xmm0
	cmpq	%rbx, %rdi
	jge	.LBB0_104
# %bb.107:                              #   in Loop: Header=BB0_106 Depth=2
	cmpq	%rsi, %rdi
	leaq	1(%rdi), %rdi
	jb	.LBB0_106
	jmp	.LBB0_104
.LBB0_108:
	leal	-1(%r8), %ecx
	cmpl	$2, %ecx
	jb	.LBB0_122
# %bb.109:
	testl	%r8d, %r8d
	movq	-96(%rbp), %rdx         # 8-byte Reload
	je	.LBB0_125
# %bb.110:
	cmpl	$3, %r8d
	jne	.LBB0_147
# %bb.111:
	xorps	%xmm0, %xmm0
	testl	%r13d, %r13d
	jle	.LBB0_120
# %bb.112:
	movslq	%r13d, %rsi
	movss	-176(%rbp,%rsi,4), %xmm1 # xmm1 = mem[0],zero,zero,zero
	leaq	1(%rsi), %rcx
	.p2align	4, 0x90
.LBB0_113:                              # =>This Inner Loop Header: Depth=1
	movss	-184(%rbp,%rcx,4), %xmm2 # xmm2 = mem[0],zero,zero,zero
	movaps	%xmm2, %xmm3
	addss	%xmm1, %xmm3
	subss	%xmm3, %xmm2
	addss	%xmm1, %xmm2
	movss	%xmm2, -180(%rbp,%rcx,4)
	movss	%xmm3, -184(%rbp,%rcx,4)
	addq	$-1, %rcx
	movaps	%xmm3, %xmm1
	cmpq	$1, %rcx
	jg	.LBB0_113
# %bb.114:
	cmpl	$2, %r13d
	jl	.LBB0_120
# %bb.115:
	movss	-176(%rbp,%rsi,4), %xmm1 # xmm1 = mem[0],zero,zero,zero
	leaq	1(%rsi), %rcx
	.p2align	4, 0x90
.LBB0_116:                              # =>This Inner Loop Header: Depth=1
	movss	-184(%rbp,%rcx,4), %xmm2 # xmm2 = mem[0],zero,zero,zero
	movaps	%xmm2, %xmm3
	addss	%xmm1, %xmm3
	subss	%xmm3, %xmm2
	addss	%xmm1, %xmm2
	movss	%xmm2, -180(%rbp,%rcx,4)
	movss	%xmm3, -184(%rbp,%rcx,4)
	addq	$-1, %rcx
	movaps	%xmm3, %xmm1
	cmpq	$2, %rcx
	jg	.LBB0_116
# %bb.117:
	cmpl	$2, %r13d
	jl	.LBB0_120
# %bb.118:
	addq	$1, %rsi
	xorps	%xmm0, %xmm0
	.p2align	4, 0x90
.LBB0_119:                              # =>This Inner Loop Header: Depth=1
	addss	-180(%rbp,%rsi,4), %xmm0
	addq	$-1, %rsi
	cmpq	$2, %rsi
	jg	.LBB0_119
.LBB0_120:
	movss	-176(%rbp), %xmm1       # xmm1 = mem[0],zero,zero,zero
	testl	%r12d, %r12d
	je	.LBB0_145
# %bb.121:
	movaps	.LCPI0_7(%rip), %xmm2   # xmm2 = [-0.0E+0,-0.0E+0,-0.0E+0,-0.0E+0]
	xorps	%xmm2, %xmm1
	movss	%xmm1, (%rdx)
	movss	-172(%rbp), %xmm1       # xmm1 = mem[0],zero,zero,zero
	xorps	%xmm2, %xmm1
	movss	%xmm1, 4(%rdx)
	xorps	%xmm2, %xmm0
	jmp	.LBB0_146
.LBB0_122:
	testl	%r13d, %r13d
	movq	-96(%rbp), %rdx         # 8-byte Reload
	js	.LBB0_131
# %bb.123:
	movslq	%r13d, %rcx
	addq	$1, %rcx
	xorps	%xmm1, %xmm1
	.p2align	4, 0x90
.LBB0_124:                              # =>This Inner Loop Header: Depth=1
	addss	-180(%rbp,%rcx,4), %xmm1
	addq	$-1, %rcx
	jg	.LBB0_124
	jmp	.LBB0_132
.LBB0_125:
	testl	%r13d, %r13d
	js	.LBB0_148
# %bb.126:
	movslq	%r13d, %rcx
	addq	$1, %rcx
	xorps	%xmm0, %xmm0
	.p2align	4, 0x90
.LBB0_127:                              # =>This Inner Loop Header: Depth=1
	addss	-180(%rbp,%rcx,4), %xmm0
	addq	$-1, %rcx
	jg	.LBB0_127
# %bb.128:
	testl	%r12d, %r12d
	je	.LBB0_130
.LBB0_129:
	xorps	.LCPI0_7(%rip), %xmm0
.LBB0_130:
	movss	%xmm0, (%rdx)
	jmp	.LBB0_147
.LBB0_131:
	xorps	%xmm1, %xmm1
.LBB0_132:
	movaps	%xmm1, %xmm0
	testl	%r12d, %r12d
	je	.LBB0_134
# %bb.133:
	movaps	.LCPI0_7(%rip), %xmm0   # xmm0 = [-0.0E+0,-0.0E+0,-0.0E+0,-0.0E+0]
	xorps	%xmm1, %xmm0
.LBB0_134:
	movss	%xmm0, (%rdx)
	movss	-176(%rbp), %xmm0       # xmm0 = mem[0],zero,zero,zero
	subss	%xmm1, %xmm0
	testl	%r13d, %r13d
	jle	.LBB0_142
# %bb.135:
	leal	1(%r13), %ecx
	leaq	-2(%rcx), %rsi
	andl	$7, %r13d
	cmpq	$7, %rsi
	jae	.LBB0_137
# %bb.136:
	movl	$1, %esi
	jmp	.LBB0_139
.LBB0_137:
	subq	%r13, %rcx
	movl	$1, %esi
	.p2align	4, 0x90
.LBB0_138:                              # =>This Inner Loop Header: Depth=1
	addss	-176(%rbp,%rsi,4), %xmm0
	addss	-172(%rbp,%rsi,4), %xmm0
	addss	-168(%rbp,%rsi,4), %xmm0
	addss	-164(%rbp,%rsi,4), %xmm0
	addss	-160(%rbp,%rsi,4), %xmm0
	addss	-156(%rbp,%rsi,4), %xmm0
	addss	-152(%rbp,%rsi,4), %xmm0
	addss	-148(%rbp,%rsi,4), %xmm0
	addq	$8, %rsi
	cmpq	%rsi, %rcx
	jne	.LBB0_138
.LBB0_139:
	testl	%r13d, %r13d
	je	.LBB0_142
# %bb.140:                              # %.preheader
	leaq	-176(,%rsi,4), %rsi
	addq	%rbp, %rsi
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB0_141:                              # =>This Inner Loop Header: Depth=1
	addss	(%rsi,%rcx,4), %xmm0
	addq	$1, %rcx
	cmpq	%rcx, %r13
	jne	.LBB0_141
.LBB0_142:
	testl	%r12d, %r12d
	je	.LBB0_144
# %bb.143:
	xorps	.LCPI0_7(%rip), %xmm0
.LBB0_144:
	movss	%xmm0, 4(%rdx)
	jmp	.LBB0_147
.LBB0_145:
	movss	%xmm1, (%rdx)
	movl	-172(%rbp), %ecx
	movl	%ecx, 4(%rdx)
.LBB0_146:
	movss	%xmm0, 8(%rdx)
.LBB0_147:
	andl	$7, %eax
	movl	$42, __A_VARIABLE(%rip)
	addq	$424, %rsp              # imm = 0x1A8
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB0_148:
	xorps	%xmm0, %xmm0
	testl	%r12d, %r12d
	jne	.LBB0_129
	jmp	.LBB0_130
.Lfunc_end0:
	.size	__kernel_rem_pio2f, .Lfunc_end0-__kernel_rem_pio2f
                                        # -- End function
	.type	init_jk,@object         # @init_jk
	.section	.rodata,"a",@progbits
	.p2align	2
init_jk:
	.long	4                       # 0x4
	.long	7                       # 0x7
	.long	9                       # 0x9
	.size	init_jk, 12

	.type	PIo2,@object            # @PIo2
	.p2align	4
PIo2:
	.long	1070137344              # float 1.5703125
	.long	972029952               # float 4.57763672E-4
	.long	937033728               # float 2.59876251E-5
	.long	866254848               # float 7.54371285E-8
	.long	780402688               # float 6.00266503E-11
	.long	726663168               # float 7.38964445E-13
	.long	667025408               # float 5.38458167E-15
	.long	584056832               # float 5.6378513E-18
	.long	532938752               # float 8.30092288E-20
	.long	465960960               # float 3.27563523E-22
	.long	390332416               # float 6.33310156E-25
	.size	PIo2, 44

	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
