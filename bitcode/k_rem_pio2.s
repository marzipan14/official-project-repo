	.text
	.file	"k_rem_pio2.c"
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function __kernel_rem_pio2
.LCPI0_0:
	.quad	4499096027743125504     # double 5.9604644775390625E-8
.LCPI0_1:
	.quad	-4508103226997866496    # double -16777216
.LCPI0_2:
	.quad	4593671619917905920     # double 0.125
.LCPI0_3:
	.quad	-4602678819172646912    # double -8
.LCPI0_4:
	.quad	4602678819172646912     # double 0.5
.LCPI0_5:
	.quad	4607182418800017408     # double 1
.LCPI0_6:
	.quad	4715268809856909312     # double 16777216
.LCPI0_8:
	.quad	0                       # double 0
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4
.LCPI0_7:
	.quad	-9223372036854775808    # double -0
	.quad	-9223372036854775808    # double -0
	.text
	.globl	__kernel_rem_pio2
	.p2align	4, 0x90
	.type	__kernel_rem_pio2,@function
__kernel_rem_pio2:                      # @__kernel_rem_pio2
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$696, %rsp              # imm = 0x2B8
	movq	%r9, -80(%rbp)          # 8-byte Spill
                                        # kill: def $r8d killed $r8d def $r8
	movl	%ecx, %r11d
                                        # kill: def $edx killed $edx def $rdx
	movq	%rsi, -104(%rbp)        # 8-byte Spill
	movq	%rdi, %r12
	movq	%r8, -208(%rbp)         # 8-byte Spill
	movslq	%r8d, %rax
	movl	init_jk(,%rax,4), %r13d
	leal	-1(%r11), %r9d
	leal	-3(%rdx), %eax
	cltq
	imulq	$715827883, %rax, %r8   # imm = 0x2AAAAAAB
	movq	%r8, %rax
	shrq	$63, %rax
	sarq	$34, %r8
	xorl	%ecx, %ecx
	addl	%eax, %r8d
	cmovsl	%ecx, %r8d
	leal	(,%r8,8), %eax
	leal	(%rax,%rax,2), %r14d
	movq	%rdx, %rax
	movq	%rdx, -200(%rbp)        # 8-byte Spill
	movl	%edx, %edi
	subl	%r14d, %edi
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
	movq	-80(%rbp), %rcx         # 8-byte Reload
	leaq	(%rcx,%rdx,4), %rbx
	addq	$4, %rbx
	subq	%r10, %rax
	xorl	%esi, %esi
	jmp	.LBB0_5
	.p2align	4, 0x90
.LBB0_4:                                #   in Loop: Header=BB0_5 Depth=1
	movsd	%xmm0, -568(%rbp,%rsi,8)
	addq	$2, %rsi
	cmpq	%rsi, %rax
	je	.LBB0_9
.LBB0_5:                                # =>This Inner Loop Header: Depth=1
	movq	%rdx, %rcx
	addq	%rsi, %rcx
	xorpd	%xmm0, %xmm0
	xorpd	%xmm1, %xmm1
	js	.LBB0_7
# %bb.6:                                #   in Loop: Header=BB0_5 Depth=1
	xorps	%xmm1, %xmm1
	cvtsi2sdl	-4(%rbx,%rsi,4), %xmm1
.LBB0_7:                                #   in Loop: Header=BB0_5 Depth=1
	movsd	%xmm1, -576(%rbp,%rsi,8)
	cmpq	$-1, %rcx
	jl	.LBB0_4
# %bb.8:                                #   in Loop: Header=BB0_5 Depth=1
	xorps	%xmm0, %xmm0
	cvtsi2sdl	(%rbx,%rsi,4), %xmm0
	jmp	.LBB0_4
.LBB0_9:                                # %.loopexit17
	addq	%rsi, %rdx
	testq	%r10, %r10
	je	.LBB0_14
.LBB0_10:
	testq	%rdx, %rdx
	js	.LBB0_12
# %bb.11:
	movq	-80(%rbp), %rax         # 8-byte Reload
	xorps	%xmm0, %xmm0
	cvtsi2sdl	(%rax,%rdx,4), %xmm0
	jmp	.LBB0_13
.LBB0_12:
	xorpd	%xmm0, %xmm0
.LBB0_13:
	movsd	%xmm0, -576(%rbp,%rsi,8)
.LBB0_14:
	movq	%r11, %rax
	movslq	%r13d, %r11
	negl	%r14d
	movl	%r14d, -84(%rbp)        # 4-byte Spill
	addl	$-24, %edi
	movl	%edi, -44(%rbp)         # 4-byte Spill
	movl	%eax, %r14d
	movl	%r14d, %r10d
	andl	$1, %r10d
	movq	%rax, -72(%rbp)         # 8-byte Spill
	leal	-2(%rax), %esi
	movl	%r14d, %edi
	andl	$-2, %edi
	xorl	%ebx, %ebx
	jmp	.LBB0_17
	.p2align	4, 0x90
.LBB0_15:                               #   in Loop: Header=BB0_17 Depth=1
	xorpd	%xmm0, %xmm0
.LBB0_16:                               #   in Loop: Header=BB0_17 Depth=1
	movsd	%xmm0, -736(%rbp,%rbx,8)
	addl	$1, %esi
	cmpq	%r11, %rbx
	leaq	1(%rbx), %rbx
	jge	.LBB0_24
.LBB0_17:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_21 Depth 2
	movq	-72(%rbp), %rax         # 8-byte Reload
	testl	%eax, %eax
	jle	.LBB0_15
# %bb.18:                               #   in Loop: Header=BB0_17 Depth=1
	cmpl	$1, %eax
	jne	.LBB0_20
# %bb.19:                               #   in Loop: Header=BB0_17 Depth=1
	xorpd	%xmm0, %xmm0
	xorl	%eax, %eax
	jmp	.LBB0_22
	.p2align	4, 0x90
.LBB0_20:                               # %.preheader15
                                        #   in Loop: Header=BB0_17 Depth=1
	xorpd	%xmm1, %xmm1
	movl	%esi, %ecx
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB0_21:                               #   Parent Loop BB0_17 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	leal	1(%rcx), %edx
	movslq	%edx, %rdx
	movsd	(%r12,%rax,8), %xmm2    # xmm2 = mem[0],zero
	movsd	8(%r12,%rax,8), %xmm0   # xmm0 = mem[0],zero
	mulsd	-576(%rbp,%rdx,8), %xmm2
	addsd	%xmm1, %xmm2
	movslq	%ecx, %rcx
	mulsd	-576(%rbp,%rcx,8), %xmm0
	addsd	%xmm2, %xmm0
	addq	$2, %rax
	addl	$-2, %ecx
	movapd	%xmm0, %xmm1
	cmpq	%rax, %rdi
	jne	.LBB0_21
.LBB0_22:                               #   in Loop: Header=BB0_17 Depth=1
	testq	%r10, %r10
	je	.LBB0_16
# %bb.23:                               #   in Loop: Header=BB0_17 Depth=1
	leal	(%r9,%rbx), %ecx
	movsd	(%r12,%rax,8), %xmm1    # xmm1 = mem[0],zero
	subl	%eax, %ecx
	movslq	%ecx, %rax
	mulsd	-576(%rbp,%rax,8), %xmm1
	addsd	%xmm1, %xmm0
	jmp	.LBB0_16
.LBB0_24:
	movl	$24, %eax
	movl	-44(%rbp), %edi         # 4-byte Reload
	subl	%edi, %eax
	movl	%eax, -92(%rbp)         # 4-byte Spill
	movl	$23, %eax
	subl	%edi, %eax
	movl	%eax, -88(%rbp)         # 4-byte Spill
	movl	%r8d, %eax
	movq	%rax, -248(%rbp)        # 8-byte Spill
	movl	%r14d, %eax
	andl	$1, %eax
	movq	%rax, -240(%rbp)        # 8-byte Spill
	leaq	-196(,%r11,4), %rax
	addq	%rbp, %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
	andl	$-2, %r14d
	movsd	.LCPI0_0(%rip), %xmm6   # xmm6 = mem[0],zero
	movsd	.LCPI0_1(%rip), %xmm7   # xmm7 = mem[0],zero
	movq	%r13, -232(%rbp)        # 8-byte Spill
                                        # kill: def $r13d killed $r13d killed $r13 def $r13
	movq	%r11, -64(%rbp)         # 8-byte Spill
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
	movsd	-736(%rbp,%r15,8), %xmm1 # xmm1 = mem[0],zero
	testl	%r15d, %r15d
	jle	.LBB0_29
# %bb.27:                               # %.preheader13
                                        #   in Loop: Header=BB0_26 Depth=1
	leaq	1(%r15), %rax
	leaq	-192(%rbp), %rcx
	.p2align	4, 0x90
.LBB0_28:                               #   Parent Loop BB0_26 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movapd	%xmm1, %xmm0
	mulsd	%xmm6, %xmm0
	cvttsd2si	%xmm0, %edx
	xorps	%xmm0, %xmm0
	cvtsi2sd	%edx, %xmm0
	movapd	%xmm0, %xmm2
	mulsd	%xmm7, %xmm2
	addsd	%xmm1, %xmm2
	cvttsd2si	%xmm2, %edx
	addsd	-752(%rbp,%rax,8), %xmm0
	movl	%edx, (%rcx)
	addq	$4, %rcx
	addq	$-1, %rax
	movapd	%xmm0, %xmm1
	cmpq	$1, %rax
	jg	.LBB0_28
	jmp	.LBB0_30
	.p2align	4, 0x90
.LBB0_29:                               #   in Loop: Header=BB0_26 Depth=1
	movapd	%xmm1, %xmm0
.LBB0_30:                               #   in Loop: Header=BB0_26 Depth=1
	callq	scalbn
	movsd	%xmm0, -56(%rbp)        # 8-byte Spill
	mulsd	.LCPI0_2(%rip), %xmm0
	callq	floor
	movl	-44(%rbp), %edi         # 4-byte Reload
	mulsd	.LCPI0_3(%rip), %xmm0
	addsd	-56(%rbp), %xmm0        # 8-byte Folded Reload
	cvttsd2si	%xmm0, %r10d
	xorps	%xmm1, %xmm1
	cvtsi2sd	%r10d, %xmm1
	subsd	%xmm1, %xmm0
	testl	%edi, %edi
	jle	.LBB0_42
# %bb.31:                               #   in Loop: Header=BB0_26 Depth=1
	movslq	%r13d, %rax
	movl	-196(%rbp,%rax,4), %ebx
	movl	%ebx, %edx
	movl	-92(%rbp), %ecx         # 4-byte Reload
	sarl	%cl, %edx
	addl	%edx, %r10d
                                        # kill: def $cl killed $cl killed $ecx
	shll	%cl, %edx
	subl	%edx, %ebx
	movl	%ebx, -196(%rbp,%rax,4)
	movl	-88(%rbp), %ecx         # 4-byte Reload
                                        # kill: def $cl killed $cl killed $ecx
	sarl	%cl, %ebx
.LBB0_32:                               #   in Loop: Header=BB0_26 Depth=1
	movq	-64(%rbp), %r9          # 8-byte Reload
	movq	-72(%rbp), %r11         # 8-byte Reload
	movsd	.LCPI0_0(%rip), %xmm6   # xmm6 = mem[0],zero
	movsd	.LCPI0_1(%rip), %xmm7   # xmm7 = mem[0],zero
	movsd	.LCPI0_5(%rip), %xmm1   # xmm1 = mem[0],zero
	testl	%ebx, %ebx
	jle	.LBB0_67
.LBB0_33:                               #   in Loop: Header=BB0_26 Depth=1
	testl	%r13d, %r13d
	jle	.LBB0_46
# %bb.34:                               #   in Loop: Header=BB0_26 Depth=1
	movl	%ebx, -56(%rbp)         # 4-byte Spill
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
	movl	-56(%rbp), %ebx         # 4-byte Reload
	je	.LBB0_41
# %bb.37:                               #   in Loop: Header=BB0_26 Depth=1
	movl	-192(%rbp,%rcx,4), %edx
	movl	$16777215, %esi         # imm = 0xFFFFFF
	testl	%eax, %eax
	jne	.LBB0_40
# %bb.38:                               #   in Loop: Header=BB0_26 Depth=1
	testl	%edx, %edx
	je	.LBB0_46
# %bb.39:                               #   in Loop: Header=BB0_26 Depth=1
	movl	$1, %eax
	movl	$16777216, %esi         # imm = 0x1000000
.LBB0_40:                               #   in Loop: Header=BB0_26 Depth=1
	subl	%edx, %esi
	movl	%esi, -192(%rbp,%rcx,4)
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
	ucomisd	.LCPI0_4(%rip), %xmm0
	movq	-64(%rbp), %r9          # 8-byte Reload
	movq	-72(%rbp), %r11         # 8-byte Reload
	movsd	.LCPI0_0(%rip), %xmm6   # xmm6 = mem[0],zero
	movsd	.LCPI0_1(%rip), %xmm7   # xmm7 = mem[0],zero
	movsd	.LCPI0_5(%rip), %xmm1   # xmm1 = mem[0],zero
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
	andl	$8388607, -196(%rbp,%rcx,4) # imm = 0x7FFFFF
	jmp	.LBB0_64
.LBB0_50:                               #   in Loop: Header=BB0_26 Depth=1
	subq	%r8, %rsi
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	jmp	.LBB0_54
	.p2align	4, 0x90
.LBB0_51:                               #   in Loop: Header=BB0_54 Depth=2
	movl	$1, %eax
	movl	$16777216, %ebx         # imm = 0x1000000
.LBB0_52:                               #   in Loop: Header=BB0_54 Depth=2
	subl	%edx, %ebx
	movl	%ebx, -188(%rbp,%rcx,4)
.LBB0_53:                               #   in Loop: Header=BB0_54 Depth=2
	addq	$2, %rcx
	cmpq	%rcx, %rsi
	je	.LBB0_36
.LBB0_54:                               #   Parent Loop BB0_26 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-192(%rbp,%rcx,4), %edx
	movl	$16777215, %ebx         # imm = 0xFFFFFF
	testl	%eax, %eax
	jne	.LBB0_57
# %bb.55:                               #   in Loop: Header=BB0_54 Depth=2
	testl	%edx, %edx
	je	.LBB0_61
# %bb.56:                               #   in Loop: Header=BB0_54 Depth=2
	movl	$1, %eax
	movl	$16777216, %ebx         # imm = 0x1000000
.LBB0_57:                               #   in Loop: Header=BB0_54 Depth=2
	subl	%edx, %ebx
	movl	%ebx, -192(%rbp,%rcx,4)
.LBB0_58:                               #   in Loop: Header=BB0_54 Depth=2
	movl	-188(%rbp,%rcx,4), %edx
	movl	$16777215, %ebx         # imm = 0xFFFFFF
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
	movl	-196(%rbp,%rax,4), %ebx
	sarl	$23, %ebx
	jmp	.LBB0_32
.LBB0_63:                               #   in Loop: Header=BB0_26 Depth=1
	movslq	%r13d, %rcx
	andl	$4194303, -196(%rbp,%rcx,4) # imm = 0x3FFFFF
.LBB0_64:                               #   in Loop: Header=BB0_26 Depth=1
	addl	$1, %r10d
	cmpl	$2, %ebx
	jne	.LBB0_67
# %bb.65:                               #   in Loop: Header=BB0_26 Depth=1
	movapd	%xmm1, %xmm2
	subsd	%xmm0, %xmm2
	movl	$2, %ebx
	testl	%eax, %eax
	je	.LBB0_68
# %bb.66:                               #   in Loop: Header=BB0_26 Depth=1
	movapd	%xmm1, %xmm0
	movl	%r10d, -56(%rbp)        # 4-byte Spill
	movsd	%xmm2, -216(%rbp)       # 8-byte Spill
	callq	scalbn
	movsd	-216(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movsd	.LCPI0_1(%rip), %xmm7   # xmm7 = mem[0],zero
	movsd	.LCPI0_0(%rip), %xmm6   # xmm6 = mem[0],zero
	movl	$2, %ebx
	movq	-72(%rbp), %r11         # 8-byte Reload
	movl	-56(%rbp), %r10d        # 4-byte Reload
	movl	-44(%rbp), %edi         # 4-byte Reload
	movq	-64(%rbp), %r9          # 8-byte Reload
	subsd	%xmm0, %xmm2
	jmp	.LBB0_68
	.p2align	4, 0x90
.LBB0_67:                               #   in Loop: Header=BB0_26 Depth=1
	movapd	%xmm0, %xmm2
.LBB0_68:                               #   in Loop: Header=BB0_26 Depth=1
	ucomisd	.LCPI0_8, %xmm2
	jne	.LBB0_94
	jp	.LBB0_94
# %bb.69:                               #   in Loop: Header=BB0_26 Depth=1
	cmpl	-232(%rbp), %r13d       # 4-byte Folded Reload
	jle	.LBB0_81
# %bb.70:                               #   in Loop: Header=BB0_26 Depth=1
	movq	%r15, %rax
	subq	%r9, %rax
	xorl	%ecx, %ecx
	movq	%r15, %rdx
	cmpq	$8, %rax
	jb	.LBB0_79
# %bb.71:                               #   in Loop: Header=BB0_26 Depth=1
	movl	%ebx, -56(%rbp)         # 4-byte Spill
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
	leaq	-208(%rbp), %rcx
	leaq	(%rcx,%r15,4), %rcx
	xorpd	%xmm0, %xmm0
	xorl	%esi, %esi
	xorpd	%xmm1, %xmm1
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
	movdqu	-220(%rbp,%rsi,4), %xmm2
	movdqu	-204(%rbp,%rsi,4), %xmm3
	pshufd	$27, %xmm2, %xmm2       # xmm2 = xmm2[3,2,1,0]
	orpd	%xmm2, %xmm1
	pshufd	$27, %xmm3, %xmm2       # xmm2 = xmm3[3,2,1,0]
	orpd	%xmm2, %xmm0
.LBB0_76:                               #   in Loop: Header=BB0_26 Depth=1
	orpd	%xmm1, %xmm0
	pshufd	$78, %xmm0, %xmm1       # xmm1 = xmm0[2,3,0,1]
	por	%xmm0, %xmm1
	pshufd	$229, %xmm1, %xmm0      # xmm0 = xmm1[1,1,2,3]
	por	%xmm1, %xmm0
	movd	%xmm0, %ecx
	cmpq	%r8, %rax
	jne	.LBB0_78
# %bb.77:                               #   in Loop: Header=BB0_26 Depth=1
	movl	-56(%rbp), %ebx         # 4-byte Reload
	jmp	.LBB0_80
.LBB0_78:                               #   in Loop: Header=BB0_26 Depth=1
	movq	%r15, %rdx
	subq	%r8, %rdx
	movl	-56(%rbp), %ebx         # 4-byte Reload
	.p2align	4, 0x90
.LBB0_79:                               #   Parent Loop BB0_26 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	orl	-196(%rbp,%rdx,4), %ecx
	addq	$-1, %rdx
	cmpq	%r9, %rdx
	jg	.LBB0_79
.LBB0_80:                               #   in Loop: Header=BB0_26 Depth=1
	testl	%ecx, %ecx
	jne	.LBB0_97
.LBB0_81:                               #   in Loop: Header=BB0_26 Depth=1
	movq	-224(%rbp), %rcx        # 8-byte Reload
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
	movq	-80(%rbp), %r10         # 8-byte Reload
	jmp	.LBB0_86
	.p2align	4, 0x90
.LBB0_84:                               #   in Loop: Header=BB0_86 Depth=2
	xorpd	%xmm0, %xmm0
.LBB0_85:                               #   in Loop: Header=BB0_86 Depth=2
	movsd	%xmm0, -728(%rbp,%rdx,8)
	addl	$1, %r13d
	cmpq	%r8, %r15
	jge	.LBB0_25
.LBB0_86:                               #   Parent Loop BB0_26 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_90 Depth 3
	movq	%r15, %rdx
	addq	$1, %r15
	movq	-248(%rbp), %rcx        # 8-byte Reload
	leaq	1(%rdx,%rcx), %rsi
	xorps	%xmm0, %xmm0
	cvtsi2sdl	(%r10,%rsi,4), %xmm0
	leal	(%rdx,%r11), %r9d
	movslq	%r9d, %rcx
	movsd	%xmm0, -576(%rbp,%rcx,8)
	testl	%r11d, %r11d
	jle	.LBB0_84
# %bb.87:                               #   in Loop: Header=BB0_86 Depth=2
	cmpl	$1, %r11d
	jne	.LBB0_89
# %bb.88:                               #   in Loop: Header=BB0_86 Depth=2
	xorpd	%xmm0, %xmm0
	xorl	%esi, %esi
	jmp	.LBB0_91
	.p2align	4, 0x90
.LBB0_89:                               # %.preheader7
                                        #   in Loop: Header=BB0_86 Depth=2
	xorpd	%xmm1, %xmm1
	movl	%r13d, %ebx
	xorl	%esi, %esi
	.p2align	4, 0x90
.LBB0_90:                               #   Parent Loop BB0_26 Depth=1
                                        #     Parent Loop BB0_86 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movslq	%ebx, %rbx
	movsd	(%r12,%rsi,8), %xmm2    # xmm2 = mem[0],zero
	movsd	8(%r12,%rsi,8), %xmm0   # xmm0 = mem[0],zero
	mulsd	-576(%rbp,%rbx,8), %xmm2
	addsd	%xmm1, %xmm2
	leal	-1(%rbx), %ecx
	movslq	%ecx, %rcx
	mulsd	-576(%rbp,%rcx,8), %xmm0
	addsd	%xmm2, %xmm0
	addq	$2, %rsi
	addl	$-2, %ebx
	movapd	%xmm0, %xmm1
	cmpq	%rsi, %r14
	jne	.LBB0_90
.LBB0_91:                               #   in Loop: Header=BB0_86 Depth=2
	cmpq	$0, -240(%rbp)          # 8-byte Folded Reload
	je	.LBB0_85
# %bb.92:                               #   in Loop: Header=BB0_86 Depth=2
	movsd	(%r12,%rsi,8), %xmm1    # xmm1 = mem[0],zero
	subl	%esi, %r9d
	movslq	%r9d, %rcx
	mulsd	-576(%rbp,%rcx,8), %xmm1
	addsd	%xmm1, %xmm0
	jmp	.LBB0_85
.LBB0_93:                               #   in Loop: Header=BB0_26 Depth=1
	xorpd	%xmm0, %xmm0
	xorl	%esi, %esi
	xorpd	%xmm1, %xmm1
	testq	%rbx, %rbx
	jne	.LBB0_75
	jmp	.LBB0_76
.LBB0_94:
	movl	%ebx, %r12d
	movl	%r10d, %r14d
	negl	%edi
	movapd	%xmm2, %xmm0
	callq	scalbn
	ucomisd	.LCPI0_6(%rip), %xmm0
	jae	.LBB0_96
# %bb.95:
	cvttsd2si	%xmm0, %eax
	movl	%eax, -192(%rbp,%r15,4)
	movl	-44(%rbp), %edi         # 4-byte Reload
	jmp	.LBB0_99
.LBB0_96:
	movsd	.LCPI0_0(%rip), %xmm1   # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %eax
	xorps	%xmm1, %xmm1
	cvtsi2sd	%eax, %xmm1
	mulsd	.LCPI0_1(%rip), %xmm1
	addsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %ecx
	movl	%ecx, -192(%rbp,%r15,4)
	addl	$1, %r13d
	movl	-84(%rbp), %edi         # 4-byte Reload
	addl	-200(%rbp), %edi        # 4-byte Folded Reload
	movl	%eax, -188(%rbp,%r15,4)
	jmp	.LBB0_99
.LBB0_97:                               # %.preheader6
	movl	%ebx, %r12d
	movl	%r10d, %r14d
	movslq	%r13d, %rax
	leaq	-196(,%rax,4), %rax
	addq	%rbp, %rax
	.p2align	4, 0x90
.LBB0_98:                               # =>This Inner Loop Header: Depth=1
	addl	$-24, %edi
	addl	$-1, %r13d
	cmpl	$0, (%rax)
	leaq	-4(%rax), %rax
	je	.LBB0_98
.LBB0_99:
	movsd	.LCPI0_5(%rip), %xmm0   # xmm0 = mem[0],zero
	callq	scalbn
	testl	%r13d, %r13d
	movq	-208(%rbp), %r8         # 8-byte Reload
	movq	-64(%rbp), %rbx         # 8-byte Reload
	movl	%r14d, %eax
	js	.LBB0_108
# %bb.100:
	movslq	%r13d, %r9
	leaq	1(%r9), %rcx
	movsd	.LCPI0_0(%rip), %xmm2   # xmm2 = mem[0],zero
	.p2align	4, 0x90
.LBB0_101:                              # =>This Inner Loop Header: Depth=1
	xorps	%xmm1, %xmm1
	cvtsi2sdl	-196(%rbp,%rcx,4), %xmm1
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, -744(%rbp,%rcx,8)
	mulsd	%xmm2, %xmm0
	addq	$-1, %rcx
	jg	.LBB0_101
# %bb.102:
	testl	%r13d, %r13d
	js	.LBB0_108
# %bb.103:
	leaq	-736(,%r9,8), %rcx
	addq	%rbp, %rcx
	movq	%r9, %rdx
	jmp	.LBB0_105
	.p2align	4, 0x90
.LBB0_104:                              #   in Loop: Header=BB0_105 Depth=1
	movsd	%xmm0, -416(%rbp,%rsi,8)
	addq	$-8, %rcx
	testq	%rdx, %rdx
	leaq	-1(%rdx), %rdx
	jle	.LBB0_108
.LBB0_105:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_106 Depth 2
	movq	%r9, %rsi
	subq	%rdx, %rsi
	xorpd	%xmm0, %xmm0
	xorl	%edi, %edi
	.p2align	4, 0x90
.LBB0_106:                              #   Parent Loop BB0_105 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movapd	%xmm0, %xmm1
	movsd	PIo2(,%rdi,8), %xmm0    # xmm0 = mem[0],zero
	mulsd	(%rcx,%rdi,8), %xmm0
	addsd	%xmm1, %xmm0
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
	movq	-104(%rbp), %rdx        # 8-byte Reload
	je	.LBB0_125
# %bb.110:
	cmpl	$3, %r8d
	jne	.LBB0_145
# %bb.111:
	xorpd	%xmm0, %xmm0
	testl	%r13d, %r13d
	jle	.LBB0_120
# %bb.112:
	movslq	%r13d, %rsi
	movsd	-416(%rbp,%rsi,8), %xmm1 # xmm1 = mem[0],zero
	leaq	1(%rsi), %rcx
	.p2align	4, 0x90
.LBB0_113:                              # =>This Inner Loop Header: Depth=1
	movsd	-432(%rbp,%rcx,8), %xmm2 # xmm2 = mem[0],zero
	movapd	%xmm2, %xmm3
	addsd	%xmm1, %xmm3
	subsd	%xmm3, %xmm2
	addsd	%xmm1, %xmm2
	movsd	%xmm2, -424(%rbp,%rcx,8)
	movsd	%xmm3, -432(%rbp,%rcx,8)
	addq	$-1, %rcx
	movapd	%xmm3, %xmm1
	cmpq	$1, %rcx
	jg	.LBB0_113
# %bb.114:
	cmpl	$2, %r13d
	jl	.LBB0_120
# %bb.115:
	movsd	-416(%rbp,%rsi,8), %xmm1 # xmm1 = mem[0],zero
	leaq	1(%rsi), %rcx
	.p2align	4, 0x90
.LBB0_116:                              # =>This Inner Loop Header: Depth=1
	movsd	-432(%rbp,%rcx,8), %xmm2 # xmm2 = mem[0],zero
	movapd	%xmm2, %xmm3
	addsd	%xmm1, %xmm3
	subsd	%xmm3, %xmm2
	addsd	%xmm1, %xmm2
	movsd	%xmm2, -424(%rbp,%rcx,8)
	movsd	%xmm3, -432(%rbp,%rcx,8)
	addq	$-1, %rcx
	movapd	%xmm3, %xmm1
	cmpq	$2, %rcx
	jg	.LBB0_116
# %bb.117:
	cmpl	$2, %r13d
	jl	.LBB0_120
# %bb.118:
	addq	$1, %rsi
	xorpd	%xmm0, %xmm0
	.p2align	4, 0x90
.LBB0_119:                              # =>This Inner Loop Header: Depth=1
	addsd	-424(%rbp,%rsi,8), %xmm0
	addq	$-1, %rsi
	cmpq	$2, %rsi
	jg	.LBB0_119
.LBB0_120:
	movsd	-416(%rbp), %xmm1       # xmm1 = mem[0],zero
	testl	%r12d, %r12d
	je	.LBB0_146
# %bb.121:
	movhpd	-408(%rbp), %xmm1       # xmm1 = xmm1[0],mem[0]
	movapd	.LCPI0_7(%rip), %xmm2   # xmm2 = [-0.0E+0,-0.0E+0]
	xorpd	%xmm2, %xmm1
	movupd	%xmm1, (%rdx)
	xorpd	%xmm2, %xmm0
	movlpd	%xmm0, 16(%rdx)
	jmp	.LBB0_145
.LBB0_122:
	testl	%r13d, %r13d
	movq	-104(%rbp), %rdx        # 8-byte Reload
	js	.LBB0_131
# %bb.123:
	movslq	%r13d, %rcx
	addq	$1, %rcx
	xorpd	%xmm1, %xmm1
	.p2align	4, 0x90
.LBB0_124:                              # =>This Inner Loop Header: Depth=1
	addsd	-424(%rbp,%rcx,8), %xmm1
	addq	$-1, %rcx
	jg	.LBB0_124
	jmp	.LBB0_132
.LBB0_125:
	testl	%r13d, %r13d
	js	.LBB0_147
# %bb.126:
	movslq	%r13d, %rcx
	addq	$1, %rcx
	xorpd	%xmm0, %xmm0
	.p2align	4, 0x90
.LBB0_127:                              # =>This Inner Loop Header: Depth=1
	addsd	-424(%rbp,%rcx,8), %xmm0
	addq	$-1, %rcx
	jg	.LBB0_127
# %bb.128:
	testl	%r12d, %r12d
	je	.LBB0_130
.LBB0_129:
	xorpd	.LCPI0_7(%rip), %xmm0
.LBB0_130:
	movsd	%xmm0, (%rdx)
	jmp	.LBB0_145
.LBB0_131:
	xorpd	%xmm1, %xmm1
.LBB0_132:
	movapd	%xmm1, %xmm0
	testl	%r12d, %r12d
	je	.LBB0_134
# %bb.133:
	movapd	.LCPI0_7(%rip), %xmm0   # xmm0 = [-0.0E+0,-0.0E+0]
	xorpd	%xmm1, %xmm0
.LBB0_134:
	movsd	%xmm0, (%rdx)
	movsd	-416(%rbp), %xmm0       # xmm0 = mem[0],zero
	subsd	%xmm1, %xmm0
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
	addsd	-416(%rbp,%rsi,8), %xmm0
	addsd	-408(%rbp,%rsi,8), %xmm0
	addsd	-400(%rbp,%rsi,8), %xmm0
	addsd	-392(%rbp,%rsi,8), %xmm0
	addsd	-384(%rbp,%rsi,8), %xmm0
	addsd	-376(%rbp,%rsi,8), %xmm0
	addsd	-368(%rbp,%rsi,8), %xmm0
	addsd	-360(%rbp,%rsi,8), %xmm0
	addq	$8, %rsi
	cmpq	%rsi, %rcx
	jne	.LBB0_138
.LBB0_139:
	testl	%r13d, %r13d
	je	.LBB0_142
# %bb.140:                              # %.preheader
	leaq	-416(,%rsi,8), %rsi
	addq	%rbp, %rsi
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB0_141:                              # =>This Inner Loop Header: Depth=1
	addsd	(%rsi,%rcx,8), %xmm0
	addq	$1, %rcx
	cmpq	%rcx, %r13
	jne	.LBB0_141
.LBB0_142:
	testl	%r12d, %r12d
	je	.LBB0_144
# %bb.143:
	xorpd	.LCPI0_7(%rip), %xmm0
.LBB0_144:
	movsd	%xmm0, 8(%rdx)
.LBB0_145:
	andl	$7, %eax
	movl	$42, __A_VARIABLE(%rip)
	addq	$696, %rsp              # imm = 0x2B8
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB0_146:
	movsd	%xmm1, (%rdx)
	movq	-408(%rbp), %rcx
	movq	%rcx, 8(%rdx)
	movsd	%xmm0, 16(%rdx)
	jmp	.LBB0_145
.LBB0_147:
	xorpd	%xmm0, %xmm0
	testl	%r12d, %r12d
	jne	.LBB0_129
	jmp	.LBB0_130
.Lfunc_end0:
	.size	__kernel_rem_pio2, .Lfunc_end0-__kernel_rem_pio2
                                        # -- End function
	.type	init_jk,@object         # @init_jk
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4
init_jk:
	.long	2                       # 0x2
	.long	3                       # 0x3
	.long	4                       # 0x4
	.long	6                       # 0x6
	.size	init_jk, 16

	.type	PIo2,@object            # @PIo2
	.section	.rodata,"a",@progbits
	.p2align	4
PIo2:
	.quad	4609753056584663040     # double 1.5707962512969971
	.quad	4500296887714185216     # double 7.5497894158615964E-8
	.quad	4393339057296375808     # double 5.3903025299577648E-15
	.quad	4285399695318056960     # double 3.2820034158079129E-22
	.quad	4174867106174599168     # double 1.2706557530806761E-29
	.quad	4069606033725587456     # double 1.2293330898111133E-36
	.quad	3955147982449410048     # double 2.7337005381646456E-44
	.quad	3848874662444400640     # double 2.1674168387780482E-51
	.size	PIo2, 64

	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
