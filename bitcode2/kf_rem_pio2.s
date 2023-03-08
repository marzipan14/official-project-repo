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
	subq	$440, %rsp              # imm = 0x1B8
	movq	%r9, -64(%rbp)          # 8-byte Spill
                                        # kill: def $r8d killed $r8d def $r8
                                        # kill: def $ecx killed $ecx def $rcx
                                        # kill: def $edx killed $edx def $rdx
	movq	%rsi, -112(%rbp)        # 8-byte Spill
	movq	%rdi, %r13
	movq	%r8, -104(%rbp)         # 8-byte Spill
	movslq	%r8d, %rax
	movl	init_jk(,%rax,4), %esi
	movslq	%esi, %r11
	leal	-1(%rcx), %r9d
	leal	-3(%rdx), %eax
	leal	4(%rdx), %r8d
	testl	%eax, %eax
	cmovnsl	%eax, %r8d
	xorl	%eax, %eax
	sarl	$3, %r8d
	cmovsl	%eax, %r8d
	leal	(,%r8,8), %r14d
	movq	%rdx, %rax
	movq	%rdx, -280(%rbp)        # 8-byte Spill
	movl	%edx, %edi
	subl	%r14d, %edi
	movl	$42, __A_VARIABLE(%rip)
	movq	%rsi, -80(%rbp)         # 8-byte Spill
	movl	%esi, %eax
	addl	%r9d, %eax
	movl	$42, __A_VARIABLE(%rip)
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	js	.LBB0_15
# %bb.1:
	movl	%r8d, %eax
	subl	%ecx, %eax
	addl	$1, %eax
	movslq	%eax, %rdx
	movq	-80(%rbp), %rax         # 8-byte Reload
	addl	%ecx, %eax
	movl	%eax, %r10d
	andl	$1, %r10d
	cmpl	$1, %eax
	jne	.LBB0_3
# %bb.2:
	xorl	%esi, %esi
	jmp	.LBB0_10
.LBB0_3:
	movq	-64(%rbp), %rcx         # 8-byte Reload
	leaq	(%rcx,%rdx,4), %rbx
	addq	$4, %rbx
	subq	%r10, %rax
	xorl	%esi, %esi
	jmp	.LBB0_5
	.p2align	4, 0x90
.LBB0_4:                                #   in Loop: Header=BB0_5 Depth=1
	movss	%xmm0, -396(%rbp,%rsi,4)
	addq	$2, %rsi
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rsi, %rax
	je	.LBB0_9
.LBB0_5:                                # =>This Inner Loop Header: Depth=1
	movq	%rdx, %rcx
	addq	%rsi, %rcx
	movl	$42, __A_VARIABLE(%rip)
	xorps	%xmm0, %xmm0
	xorps	%xmm1, %xmm1
	js	.LBB0_7
# %bb.6:                                #   in Loop: Header=BB0_5 Depth=1
	xorps	%xmm1, %xmm1
	cvtsi2ssl	-4(%rbx,%rsi,4), %xmm1
	movl	$42, __A_VARIABLE(%rip)
.LBB0_7:                                #   in Loop: Header=BB0_5 Depth=1
	movss	%xmm1, -400(%rbp,%rsi,4)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$-1, %rcx
	jl	.LBB0_4
# %bb.8:                                #   in Loop: Header=BB0_5 Depth=1
	xorps	%xmm0, %xmm0
	cvtsi2ssl	(%rbx,%rsi,4), %xmm0
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_4
.LBB0_9:                                # %.loopexit18
	addq	%rsi, %rdx
.LBB0_10:
	testq	%r10, %r10
	movq	-56(%rbp), %rcx         # 8-byte Reload
	je	.LBB0_15
# %bb.11:
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdx, %rdx
	js	.LBB0_13
# %bb.12:
	movq	-64(%rbp), %rax         # 8-byte Reload
	xorps	%xmm0, %xmm0
	cvtsi2ssl	(%rax,%rdx,4), %xmm0
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_14
.LBB0_13:
	xorps	%xmm0, %xmm0
.LBB0_14:
	movss	%xmm0, -400(%rbp,%rsi,4)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	-56(%rbp), %rcx         # 8-byte Reload
.LBB0_15:
	negl	%r14d
	addl	$-8, %edi
	movl	%edi, -48(%rbp)         # 4-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%ecx, %r12d
	movl	%r12d, %r10d
	andl	$1, %r10d
	leal	-2(%rcx), %esi
	movl	%r12d, %edi
	andl	$-2, %edi
	xorl	%ebx, %ebx
	jmp	.LBB0_17
	.p2align	4, 0x90
.LBB0_16:                               #   in Loop: Header=BB0_17 Depth=1
	movss	%xmm0, -480(%rbp,%rbx,4)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addl	$1, %esi
	cmpq	%r11, %rbx
	leaq	1(%rbx), %rbx
	jge	.LBB0_24
.LBB0_17:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_21 Depth 2
	movl	$42, __A_VARIABLE(%rip)
	movq	-56(%rbp), %rax         # 8-byte Reload
	xorps	%xmm0, %xmm0
	testl	%eax, %eax
	jle	.LBB0_16
# %bb.18:                               #   in Loop: Header=BB0_17 Depth=1
	cmpl	$1, %eax
	jne	.LBB0_20
# %bb.19:                               #   in Loop: Header=BB0_17 Depth=1
	xorl	%eax, %eax
	jmp	.LBB0_22
	.p2align	4, 0x90
.LBB0_20:                               # %.preheader16
                                        #   in Loop: Header=BB0_17 Depth=1
	movl	%esi, %ecx
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB0_21:                               #   Parent Loop BB0_17 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movss	(%r13,%rax,4), %xmm1    # xmm1 = mem[0],zero,zero,zero
	leal	1(%rcx), %edx
	movslq	%edx, %rdx
	mulss	-400(%rbp,%rdx,4), %xmm1
	addss	%xmm0, %xmm1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movss	4(%r13,%rax,4), %xmm0   # xmm0 = mem[0],zero,zero,zero
	movslq	%ecx, %rcx
	mulss	-400(%rbp,%rcx,4), %xmm0
	addss	%xmm1, %xmm0
	addq	$2, %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addl	$-2, %ecx
	cmpq	%rax, %rdi
	jne	.LBB0_21
.LBB0_22:                               #   in Loop: Header=BB0_17 Depth=1
	testq	%r10, %r10
	je	.LBB0_16
# %bb.23:                               #   in Loop: Header=BB0_17 Depth=1
	leal	(%r9,%rbx), %ecx
	movss	(%r13,%rax,4), %xmm1    # xmm1 = mem[0],zero,zero,zero
	subl	%eax, %ecx
	movslq	%ecx, %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	mulss	-400(%rbp,%rax,4), %xmm1
	addss	%xmm1, %xmm0
	jmp	.LBB0_16
.LBB0_24:
	movl	%r14d, -84(%rbp)        # 4-byte Spill
	movl	$8, %eax
	movl	-48(%rbp), %edi         # 4-byte Reload
	subl	%edi, %eax
	movl	%eax, -92(%rbp)         # 4-byte Spill
	movl	$7, %eax
	subl	%edi, %eax
	movl	%eax, -88(%rbp)         # 4-byte Spill
	movl	%r8d, %eax
	movq	%rax, -312(%rbp)        # 8-byte Spill
	movq	%r11, %rax
	notq	%rax
	movq	%rax, -296(%rbp)        # 8-byte Spill
	movl	%r12d, %eax
	andl	$1, %eax
	movq	%rax, -304(%rbp)        # 8-byte Spill
	leaq	-280(,%r11,4), %rax
	addq	%rbp, %rax
	movq	%rax, -288(%rbp)        # 8-byte Spill
	andl	$-2, %r12d
	movss	.LCPI0_0(%rip), %xmm3   # xmm3 = mem[0],zero,zero,zero
	movss	.LCPI0_1(%rip), %xmm4   # xmm4 = mem[0],zero,zero,zero
	movq	-80(%rbp), %r15         # 8-byte Reload
                                        # kill: def $r15d killed $r15d killed $r15 def $r15
	movq	%r11, -72(%rbp)         # 8-byte Spill
	jmp	.LBB0_26
	.p2align	4, 0x90
.LBB0_25:                               #   in Loop: Header=BB0_26 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	%r9d, %r15d
.LBB0_26:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_28 Depth 2
                                        #     Child Loop BB0_38 Depth 2
                                        #     Child Loop BB0_61 Depth 2
                                        #     Child Loop BB0_64 Depth 2
                                        #     Child Loop BB0_69 Depth 2
                                        #     Child Loop BB0_72 Depth 2
                                        #       Child Loop BB0_76 Depth 3
	movslq	%r15d, %r14
	movss	-480(%rbp,%r14,4), %xmm1 # xmm1 = mem[0],zero,zero,zero
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%r14d, %r14d
	jle	.LBB0_29
# %bb.27:                               # %.preheader14
                                        #   in Loop: Header=BB0_26 Depth=1
	leaq	1(%r14), %rax
	leaq	-272(%rbp), %rcx
	.p2align	4, 0x90
.LBB0_28:                               #   Parent Loop BB0_26 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movaps	%xmm1, %xmm0
	mulss	%xmm3, %xmm0
	cvttss2si	%xmm0, %edx
	xorps	%xmm0, %xmm0
	cvtsi2ss	%edx, %xmm0
	movaps	%xmm0, %xmm2
	mulss	%xmm4, %xmm2
	addss	%xmm1, %xmm2
	cvttss2si	%xmm2, %edx
	movl	%edx, (%rcx)
	addss	-488(%rbp,%rax,4), %xmm0
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
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
	cvttss2si	%xmm0, %r9d
	xorps	%xmm1, %xmm1
	cvtsi2ss	%r9d, %xmm1
	subss	%xmm1, %xmm0
	movl	$42, __A_VARIABLE(%rip)
	testl	%edi, %edi
	jle	.LBB0_41
# %bb.31:                               #   in Loop: Header=BB0_26 Depth=1
	movslq	%r15d, %rax
	movl	-276(%rbp,%rax,4), %r8d
	movl	%r8d, %edx
	movl	-92(%rbp), %ecx         # 4-byte Reload
	sarl	%cl, %edx
	addl	%edx, %r9d
                                        # kill: def $cl killed $cl killed $ecx
	shll	%cl, %edx
	subl	%edx, %r8d
	movl	%r8d, -276(%rbp,%rax,4)
	movl	-88(%rbp), %ecx         # 4-byte Reload
                                        # kill: def $cl killed $cl killed $ecx
	sarl	%cl, %r8d
	movq	-72(%rbp), %rbx         # 8-byte Reload
	movq	-64(%rbp), %r10         # 8-byte Reload
	movq	-56(%rbp), %r11         # 8-byte Reload
	movss	.LCPI0_0(%rip), %xmm3   # xmm3 = mem[0],zero,zero,zero
	movss	.LCPI0_1(%rip), %xmm4   # xmm4 = mem[0],zero,zero,zero
	movss	.LCPI0_5(%rip), %xmm1   # xmm1 = mem[0],zero,zero,zero
.LBB0_32:                               #   in Loop: Header=BB0_26 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%r8d, %r8d
	jle	.LBB0_56
.LBB0_33:                               #   in Loop: Header=BB0_26 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%r15d, %r15d
	jle	.LBB0_45
# %bb.34:                               #   in Loop: Header=BB0_26 Depth=1
	movl	%r15d, %ecx
	xorl	%edx, %edx
	xorl	%eax, %eax
	jmp	.LBB0_38
	.p2align	4, 0x90
.LBB0_35:                               #   in Loop: Header=BB0_38 Depth=2
	movl	$1, %eax
	movl	$256, %ebx              # imm = 0x100
.LBB0_36:                               #   in Loop: Header=BB0_38 Depth=2
	subl	%esi, %ebx
	movl	%ebx, -272(%rbp,%rdx,4)
	movl	$42, __A_VARIABLE(%rip)
.LBB0_37:                               #   in Loop: Header=BB0_38 Depth=2
	addq	$1, %rdx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rdx, %rcx
	je	.LBB0_46
.LBB0_38:                               #   Parent Loop BB0_26 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-272(%rbp,%rdx,4), %esi
	movl	$42, __A_VARIABLE(%rip)
	movl	$255, %ebx
	testl	%eax, %eax
	jne	.LBB0_36
# %bb.39:                               #   in Loop: Header=BB0_38 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	testl	%esi, %esi
	jne	.LBB0_35
# %bb.40:                               #   in Loop: Header=BB0_38 Depth=2
	xorl	%eax, %eax
	jmp	.LBB0_37
	.p2align	4, 0x90
.LBB0_41:                               #   in Loop: Header=BB0_26 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testl	%edi, %edi
	movss	.LCPI0_5(%rip), %xmm1   # xmm1 = mem[0],zero,zero,zero
	je	.LBB0_50
# %bb.42:                               #   in Loop: Header=BB0_26 Depth=1
	xorl	%r8d, %r8d
	ucomiss	.LCPI0_4(%rip), %xmm0
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	-72(%rbp), %rbx         # 8-byte Reload
	movq	-64(%rbp), %r10         # 8-byte Reload
	movq	-56(%rbp), %r11         # 8-byte Reload
	movss	.LCPI0_0(%rip), %xmm3   # xmm3 = mem[0],zero,zero,zero
	movss	.LCPI0_1(%rip), %xmm4   # xmm4 = mem[0],zero,zero,zero
	jb	.LBB0_56
# %bb.79:                               #   in Loop: Header=BB0_26 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$2, %r8d
	jmp	.LBB0_33
	.p2align	4, 0x90
.LBB0_45:                               #   in Loop: Header=BB0_26 Depth=1
	xorl	%eax, %eax
.LBB0_46:                               #   in Loop: Header=BB0_26 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testl	%edi, %edi
	movq	-72(%rbp), %rbx         # 8-byte Reload
	jle	.LBB0_53
# %bb.47:                               #   in Loop: Header=BB0_26 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, %edi
	je	.LBB0_51
# %bb.48:                               #   in Loop: Header=BB0_26 Depth=1
	cmpl	$1, %edi
	jne	.LBB0_53
# %bb.49:                               #   in Loop: Header=BB0_26 Depth=1
	movslq	%r15d, %rcx
	andl	$127, -276(%rbp,%rcx,4)
	jmp	.LBB0_52
.LBB0_50:                               #   in Loop: Header=BB0_26 Depth=1
	movslq	%r15d, %rax
	movl	-276(%rbp,%rax,4), %r8d
	sarl	$8, %r8d
	movq	-72(%rbp), %rbx         # 8-byte Reload
	movq	-64(%rbp), %r10         # 8-byte Reload
	movq	-56(%rbp), %r11         # 8-byte Reload
	movss	.LCPI0_0(%rip), %xmm3   # xmm3 = mem[0],zero,zero,zero
	movss	.LCPI0_1(%rip), %xmm4   # xmm4 = mem[0],zero,zero,zero
	jmp	.LBB0_32
.LBB0_51:                               #   in Loop: Header=BB0_26 Depth=1
	movslq	%r15d, %rcx
	andl	$63, -276(%rbp,%rcx,4)
.LBB0_52:                               #   in Loop: Header=BB0_26 Depth=1
	movl	$42, __A_VARIABLE(%rip)
.LBB0_53:                               #   in Loop: Header=BB0_26 Depth=1
	addl	$1, %r9d
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, %r8d
	jne	.LBB0_56
# %bb.54:                               #   in Loop: Header=BB0_26 Depth=1
	movaps	%xmm1, %xmm2
	subss	%xmm0, %xmm2
	movl	$42, __A_VARIABLE(%rip)
	movl	$2, %r8d
	testl	%eax, %eax
	je	.LBB0_57
# %bb.55:                               #   in Loop: Header=BB0_26 Depth=1
	movaps	%xmm1, %xmm0
	movl	%r9d, %ebx
	movss	%xmm2, -44(%rbp)        # 4-byte Spill
	callq	scalbnf
	movss	-44(%rbp), %xmm2        # 4-byte Reload
                                        # xmm2 = mem[0],zero,zero,zero
	movss	.LCPI0_1(%rip), %xmm4   # xmm4 = mem[0],zero,zero,zero
	movss	.LCPI0_0(%rip), %xmm3   # xmm3 = mem[0],zero,zero,zero
	movl	$2, %r8d
	movq	-56(%rbp), %r11         # 8-byte Reload
	movq	-64(%rbp), %r10         # 8-byte Reload
	movl	%ebx, %r9d
	movl	-48(%rbp), %edi         # 4-byte Reload
	movq	-72(%rbp), %rbx         # 8-byte Reload
	subss	%xmm0, %xmm2
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_57
	.p2align	4, 0x90
.LBB0_56:                               #   in Loop: Header=BB0_26 Depth=1
	movaps	%xmm0, %xmm2
.LBB0_57:                               #   in Loop: Header=BB0_26 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	ucomiss	.LCPI0_8, %xmm2
	jne	.LBB0_80
	jp	.LBB0_80
# %bb.58:                               #   in Loop: Header=BB0_26 Depth=1
	movl	%r15d, %eax
	movl	$42, __A_VARIABLE(%rip)
	subl	-80(%rbp), %eax         # 4-byte Folded Reload
	jle	.LBB0_66
# %bb.59:                               #   in Loop: Header=BB0_26 Depth=1
	movl	%r8d, -44(%rbp)         # 4-byte Spill
	movq	-296(%rbp), %rcx        # 8-byte Reload
	leaq	(%rcx,%r14), %rsi
	andl	$3, %eax
	xorl	%ecx, %ecx
	movq	%r14, %rdx
	cmpq	$3, %rsi
	jb	.LBB0_62
# %bb.60:                               #   in Loop: Header=BB0_26 Depth=1
	leaq	(%rbx,%rax), %rsi
	xorl	%ecx, %ecx
	movq	%r14, %rdx
	.p2align	4, 0x90
.LBB0_61:                               #   Parent Loop BB0_26 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	orl	-276(%rbp,%rdx,4), %ecx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	orl	-280(%rbp,%rdx,4), %ecx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	orl	-284(%rbp,%rdx,4), %ecx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	orl	-288(%rbp,%rdx,4), %ecx
	addq	$-4, %rdx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rdx, %rsi
	jne	.LBB0_61
.LBB0_62:                               #   in Loop: Header=BB0_26 Depth=1
	testq	%rax, %rax
	je	.LBB0_65
# %bb.63:                               # %.preheader10
                                        #   in Loop: Header=BB0_26 Depth=1
	leaq	-276(%rbp), %rsi
	leaq	(%rsi,%rdx,4), %rdx
	negq	%rax
	xorl	%esi, %esi
	.p2align	4, 0x90
.LBB0_64:                               #   Parent Loop BB0_26 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	orl	(%rdx,%rsi,4), %ecx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$-1, %rsi
	cmpq	%rsi, %rax
	jne	.LBB0_64
.LBB0_65:                               #   in Loop: Header=BB0_26 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%ecx, %ecx
	je	.LBB0_67
	jmp	.LBB0_83
	.p2align	4, 0x90
.LBB0_66:                               #   in Loop: Header=BB0_26 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB0_67:                               #   in Loop: Header=BB0_26 Depth=1
	cmpl	$0, -276(%rbp,%rbx,4)
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %r9d
	jne	.LBB0_70
# %bb.68:                               # %.preheader9
                                        #   in Loop: Header=BB0_26 Depth=1
	movl	$1, %r9d
	movq	-288(%rbp), %rcx        # 8-byte Reload
	.p2align	4, 0x90
.LBB0_69:                               #   Parent Loop BB0_26 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$42, __A_VARIABLE(%rip)
	addl	$1, %r9d
	cmpl	$0, (%rcx)
	leaq	-4(%rcx), %rcx
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB0_69
.LBB0_70:                               #   in Loop: Header=BB0_26 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	addl	%r15d, %r9d
	movl	$42, __A_VARIABLE(%rip)
	movslq	%r9d, %r8
	addl	%r11d, %r15d
	jmp	.LBB0_72
	.p2align	4, 0x90
.LBB0_71:                               #   in Loop: Header=BB0_72 Depth=2
	movss	%xmm0, -476(%rbp,%rdx,4)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addl	$1, %r15d
	cmpq	%r8, %r14
	jge	.LBB0_25
.LBB0_72:                               #   Parent Loop BB0_26 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_76 Depth 3
	movq	%r14, %rdx
	addq	$1, %r14
	leal	(%rdx,%r11), %esi
	movq	-312(%rbp), %rax        # 8-byte Reload
	leaq	1(%rdx,%rax), %rax
	xorps	%xmm0, %xmm0
	cvtsi2ssl	(%r10,%rax,4), %xmm0
	movslq	%esi, %rax
	movss	%xmm0, -400(%rbp,%rax,4)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	xorps	%xmm0, %xmm0
	testl	%r11d, %r11d
	jle	.LBB0_71
# %bb.73:                               #   in Loop: Header=BB0_72 Depth=2
	cmpl	$1, %r11d
	jne	.LBB0_75
# %bb.74:                               #   in Loop: Header=BB0_72 Depth=2
	xorl	%eax, %eax
	jmp	.LBB0_77
	.p2align	4, 0x90
.LBB0_75:                               # %.preheader7
                                        #   in Loop: Header=BB0_72 Depth=2
	movl	%r15d, %ebx
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB0_76:                               #   Parent Loop BB0_26 Depth=1
                                        #     Parent Loop BB0_72 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movss	(%r13,%rax,4), %xmm1    # xmm1 = mem[0],zero,zero,zero
	movslq	%ebx, %rbx
	mulss	-400(%rbp,%rbx,4), %xmm1
	addss	%xmm0, %xmm1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movss	4(%r13,%rax,4), %xmm0   # xmm0 = mem[0],zero,zero,zero
	leal	-1(%rbx), %ecx
	movslq	%ecx, %rcx
	mulss	-400(%rbp,%rcx,4), %xmm0
	addss	%xmm1, %xmm0
	addq	$2, %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addl	$-2, %ebx
	cmpq	%rax, %r12
	jne	.LBB0_76
.LBB0_77:                               #   in Loop: Header=BB0_72 Depth=2
	cmpq	$0, -304(%rbp)          # 8-byte Folded Reload
	je	.LBB0_71
# %bb.78:                               #   in Loop: Header=BB0_72 Depth=2
	movss	(%r13,%rax,4), %xmm1    # xmm1 = mem[0],zero,zero,zero
	subl	%eax, %esi
	movslq	%esi, %rcx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	mulss	-400(%rbp,%rcx,4), %xmm1
	addss	%xmm1, %xmm0
	jmp	.LBB0_71
.LBB0_80:
	movl	%r8d, -44(%rbp)         # 4-byte Spill
	movl	%r9d, %r12d
	negl	%edi
	movaps	%xmm2, %xmm0
	callq	scalbnf
	ucomiss	.LCPI0_6(%rip), %xmm0
	movl	$42, __A_VARIABLE(%rip)
	jae	.LBB0_82
# %bb.81:
	cvttss2si	%xmm0, %eax
	movl	%eax, -272(%rbp,%r14,4)
	movl	$42, __A_VARIABLE(%rip)
	movl	-48(%rbp), %edi         # 4-byte Reload
	jmp	.LBB0_86
.LBB0_82:
	movss	.LCPI0_0(%rip), %xmm1   # xmm1 = mem[0],zero,zero,zero
	mulss	%xmm0, %xmm1
	cvttss2si	%xmm1, %eax
	xorps	%xmm1, %xmm1
	cvtsi2ss	%eax, %xmm1
	cvttss2si	%xmm1, %eax
	mulss	.LCPI0_1(%rip), %xmm1
	addss	%xmm0, %xmm1
	cvttss2si	%xmm1, %ecx
	movl	%ecx, -272(%rbp,%r14,4)
	addl	$1, %r15d
	movl	-84(%rbp), %edi         # 4-byte Reload
	addl	-280(%rbp), %edi        # 4-byte Folded Reload
	movl	%eax, -268(%rbp,%r14,4)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_86
.LBB0_83:
	movl	%r9d, %r12d
	movl	$42, __A_VARIABLE(%rip)
	addl	$-8, %edi
	addl	$-1, %r15d
	movslq	%r15d, %rax
	cmpl	$0, -272(%rbp,%rax,4)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_86
# %bb.84:                               # %.preheader6
	leaq	-276(,%rax,4), %rax
	addq	%rbp, %rax
	.p2align	4, 0x90
.LBB0_85:                               # =>This Inner Loop Header: Depth=1
	movl	$42, __A_VARIABLE(%rip)
	addl	$-8, %edi
	addl	$-1, %r15d
	cmpl	$0, (%rax)
	leaq	-4(%rax), %rax
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB0_85
.LBB0_86:
	movss	.LCPI0_5(%rip), %xmm0   # xmm0 = mem[0],zero,zero,zero
	callq	scalbnf
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%r15d, %r15d
	js	.LBB0_95
# %bb.87:
	movslq	%r15d, %rax
	leaq	1(%rax), %rcx
	movq	-72(%rbp), %rbx         # 8-byte Reload
	movss	.LCPI0_0(%rip), %xmm2   # xmm2 = mem[0],zero,zero,zero
	.p2align	4, 0x90
.LBB0_88:                               # =>This Inner Loop Header: Depth=1
	xorps	%xmm1, %xmm1
	cvtsi2ssl	-276(%rbp,%rcx,4), %xmm1
	mulss	%xmm0, %xmm1
	movss	%xmm1, -484(%rbp,%rcx,4)
	mulss	%xmm2, %xmm0
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$-1, %rcx
	jg	.LBB0_88
# %bb.89:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%r15d, %r15d
	movq	-112(%rbp), %r8         # 8-byte Reload
	movq	-104(%rbp), %r9         # 8-byte Reload
	js	.LBB0_96
# %bb.90:
	leaq	-480(,%rax,4), %rcx
	addq	%rbp, %rcx
	movq	%rax, %rdx
	jmp	.LBB0_92
	.p2align	4, 0x90
.LBB0_91:                               #   in Loop: Header=BB0_92 Depth=1
	movss	%xmm0, -192(%rbp,%rsi,4)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$-4, %rcx
	testq	%rdx, %rdx
	leaq	-1(%rdx), %rdx
	jle	.LBB0_96
.LBB0_92:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_93 Depth 2
	movq	%rax, %rsi
	subq	%rdx, %rsi
	movl	$42, __A_VARIABLE(%rip)
	xorps	%xmm0, %xmm0
	xorl	%edi, %edi
	.p2align	4, 0x90
.LBB0_93:                               #   Parent Loop BB0_92 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rsi, %rdi
	ja	.LBB0_91
# %bb.94:                               #   in Loop: Header=BB0_93 Depth=2
	movss	PIo2(,%rdi,4), %xmm1    # xmm1 = mem[0],zero,zero,zero
	mulss	(%rcx,%rdi,4), %xmm1
	addss	%xmm1, %xmm0
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rbx, %rdi
	leaq	1(%rdi), %rdi
	jl	.LBB0_93
	jmp	.LBB0_91
.LBB0_95:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	-112(%rbp), %r8         # 8-byte Reload
	movq	-104(%rbp), %r9         # 8-byte Reload
.LBB0_96:
	leal	-1(%r9), %eax
	cmpl	$2, %eax
	jb	.LBB0_105
# %bb.97:
	cmpl	$3, %r9d
	je	.LBB0_108
# %bb.98:
	testl	%r9d, %r9d
	movl	%r12d, %eax
	jne	.LBB0_139
# %bb.99:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%r15d, %r15d
	js	.LBB0_131
# %bb.100:
	movslq	%r15d, %rcx
	addq	$1, %rcx
	xorps	%xmm0, %xmm0
	movl	-44(%rbp), %edx         # 4-byte Reload
	.p2align	4, 0x90
.LBB0_101:                              # =>This Inner Loop Header: Depth=1
	addss	-196(%rbp,%rcx,4), %xmm0
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$-1, %rcx
	jg	.LBB0_101
# %bb.102:
	testl	%edx, %edx
	je	.LBB0_104
.LBB0_103:
	xorps	.LCPI0_7(%rip), %xmm0
.LBB0_104:
	movss	%xmm0, (%r8)
	jmp	.LBB0_138
.LBB0_105:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%r15d, %r15d
	js	.LBB0_117
# %bb.106:
	movslq	%r15d, %rcx
	addq	$1, %rcx
	xorps	%xmm1, %xmm1
	movl	%r12d, %eax
	movl	-44(%rbp), %esi         # 4-byte Reload
	.p2align	4, 0x90
.LBB0_107:                              # =>This Inner Loop Header: Depth=1
	addss	-196(%rbp,%rcx,4), %xmm1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$-1, %rcx
	jg	.LBB0_107
	jmp	.LBB0_118
.LBB0_108:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%r15d, %r15d
	jle	.LBB0_132
# %bb.109:
	movslq	%r15d, %rdx
	movss	-192(%rbp,%rdx,4), %xmm0 # xmm0 = mem[0],zero,zero,zero
	leaq	1(%rdx), %rcx
	.p2align	4, 0x90
.LBB0_110:                              # =>This Inner Loop Header: Depth=1
	movss	-200(%rbp,%rcx,4), %xmm1 # xmm1 = mem[0],zero,zero,zero
	movaps	%xmm1, %xmm2
	addss	%xmm0, %xmm2
	subss	%xmm2, %xmm1
	addss	%xmm0, %xmm1
	movss	%xmm1, -196(%rbp,%rcx,4)
	movss	%xmm2, -200(%rbp,%rcx,4)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$-1, %rcx
	movaps	%xmm2, %xmm0
	cmpq	$1, %rcx
	jg	.LBB0_110
# %bb.111:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1, %r15d
	movl	%r12d, %eax
	jle	.LBB0_133
# %bb.112:
	movss	-192(%rbp,%rdx,4), %xmm0 # xmm0 = mem[0],zero,zero,zero
	leaq	1(%rdx), %rcx
	.p2align	4, 0x90
.LBB0_113:                              # =>This Inner Loop Header: Depth=1
	movss	-200(%rbp,%rcx,4), %xmm1 # xmm1 = mem[0],zero,zero,zero
	movaps	%xmm1, %xmm2
	addss	%xmm0, %xmm2
	subss	%xmm2, %xmm1
	addss	%xmm0, %xmm1
	movss	%xmm1, -196(%rbp,%rcx,4)
	movss	%xmm2, -200(%rbp,%rcx,4)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$-1, %rcx
	movaps	%xmm2, %xmm0
	cmpq	$2, %rcx
	jg	.LBB0_113
# %bb.114:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	xorps	%xmm0, %xmm0
	cmpl	$2, %r15d
	jl	.LBB0_134
# %bb.115:
	addq	$1, %rdx
	xorps	%xmm0, %xmm0
	.p2align	4, 0x90
.LBB0_116:                              # =>This Inner Loop Header: Depth=1
	addss	-196(%rbp,%rdx,4), %xmm0
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$-1, %rdx
	cmpq	$2, %rdx
	jg	.LBB0_116
	jmp	.LBB0_134
.LBB0_117:
	xorps	%xmm1, %xmm1
	movl	%r12d, %eax
	movl	-44(%rbp), %esi         # 4-byte Reload
.LBB0_118:
	movaps	%xmm1, %xmm0
	testl	%esi, %esi
	je	.LBB0_120
# %bb.119:
	movaps	.LCPI0_7(%rip), %xmm0   # xmm0 = [-0.0E+0,-0.0E+0,-0.0E+0,-0.0E+0]
	xorps	%xmm1, %xmm0
.LBB0_120:
	movss	%xmm0, (%r8)
	movss	-192(%rbp), %xmm0       # xmm0 = mem[0],zero,zero,zero
	subss	%xmm1, %xmm0
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%r15d, %r15d
	jle	.LBB0_128
# %bb.121:
	leal	1(%r15), %ecx
	leaq	-2(%rcx), %rdx
	andl	$3, %r15d
	cmpq	$3, %rdx
	jae	.LBB0_123
# %bb.122:
	movl	$1, %edx
	jmp	.LBB0_125
.LBB0_123:
	subq	%r15, %rcx
	movl	$1, %edx
	.p2align	4, 0x90
.LBB0_124:                              # =>This Inner Loop Header: Depth=1
	addss	-192(%rbp,%rdx,4), %xmm0
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addss	-188(%rbp,%rdx,4), %xmm0
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addss	-184(%rbp,%rdx,4), %xmm0
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addss	-180(%rbp,%rdx,4), %xmm0
	addq	$4, %rdx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rdx, %rcx
	jne	.LBB0_124
.LBB0_125:
	testl	%r15d, %r15d
	je	.LBB0_128
# %bb.126:                              # %.preheader
	leaq	-192(,%rdx,4), %rdx
	addq	%rbp, %rdx
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB0_127:                              # =>This Inner Loop Header: Depth=1
	addss	(%rdx,%rcx,4), %xmm0
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$1, %rcx
	cmpq	%rcx, %r15
	jne	.LBB0_127
.LBB0_128:
	testl	%esi, %esi
	je	.LBB0_130
# %bb.129:
	xorps	.LCPI0_7(%rip), %xmm0
.LBB0_130:
	movss	%xmm0, 4(%r8)
	jmp	.LBB0_138
.LBB0_131:
	xorps	%xmm0, %xmm0
	movl	-44(%rbp), %edx         # 4-byte Reload
	testl	%edx, %edx
	jne	.LBB0_103
	jmp	.LBB0_104
.LBB0_132:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	xorps	%xmm0, %xmm0
	movl	%r12d, %eax
	jmp	.LBB0_134
.LBB0_133:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	xorps	%xmm0, %xmm0
.LBB0_134:
	movss	-192(%rbp), %xmm1       # xmm1 = mem[0],zero,zero,zero
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$0, -44(%rbp)           # 4-byte Folded Reload
	je	.LBB0_136
# %bb.135:
	movaps	.LCPI0_7(%rip), %xmm2   # xmm2 = [-0.0E+0,-0.0E+0,-0.0E+0,-0.0E+0]
	xorps	%xmm2, %xmm1
	movss	%xmm1, (%r8)
	movss	-188(%rbp), %xmm1       # xmm1 = mem[0],zero,zero,zero
	xorps	%xmm2, %xmm1
	movss	%xmm1, 4(%r8)
	xorps	%xmm2, %xmm0
	jmp	.LBB0_137
.LBB0_136:
	movss	%xmm1, (%r8)
	movl	-188(%rbp), %ecx
	movl	%ecx, 4(%r8)
.LBB0_137:
	movss	%xmm0, 8(%r8)
.LBB0_138:
	movl	$42, __A_VARIABLE(%rip)
.LBB0_139:
	andl	$7, %eax
	movl	$42, __A_VARIABLE(%rip)
	addq	$440, %rsp              # imm = 0x1B8
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
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
