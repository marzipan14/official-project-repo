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
	movq	%r9, -72(%rbp)          # 8-byte Spill
                                        # kill: def $r8d killed $r8d def $r8
                                        # kill: def $ecx killed $ecx def $rcx
                                        # kill: def $edx killed $edx def $rdx
	movq	%rsi, -120(%rbp)        # 8-byte Spill
	movq	%rdi, %r15
	movq	%r8, -112(%rbp)         # 8-byte Spill
	movslq	%r8d, %rax
	movl	init_jk(,%rax,4), %ebx
	movslq	%ebx, %r11
	leal	-1(%rcx), %r9d
	leal	-3(%rdx), %eax
	cltq
	imulq	$715827883, %rax, %r8   # imm = 0x2AAAAAAB
	movq	%r8, %rax
	shrq	$63, %rax
	sarq	$34, %r8
	xorl	%esi, %esi
	addl	%eax, %r8d
	cmovsl	%esi, %r8d
	leal	(,%r8,8), %eax
	leal	(%rax,%rax,2), %r14d
	movq	%rdx, %rax
	movq	%rdx, -216(%rbp)        # 8-byte Spill
	movl	%edx, %edi
	subl	%r14d, %edi
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, -88(%rbp)         # 8-byte Spill
	movl	%ebx, %eax
	addl	%r9d, %eax
	movl	$42, __A_VARIABLE(%rip)
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	js	.LBB0_15
# %bb.1:
	movl	%r8d, %eax
	subl	%ecx, %eax
	addl	$1, %eax
	movslq	%eax, %rdx
	movq	-88(%rbp), %rax         # 8-byte Reload
	addl	%ecx, %eax
	movl	%eax, %r10d
	andl	$1, %r10d
	cmpl	$1, %eax
	jne	.LBB0_3
# %bb.2:
	xorl	%esi, %esi
	jmp	.LBB0_10
.LBB0_3:
	movq	-72(%rbp), %rcx         # 8-byte Reload
	leaq	(%rcx,%rdx,4), %rbx
	addq	$4, %rbx
	subq	%r10, %rax
	xorl	%esi, %esi
	jmp	.LBB0_5
	.p2align	4, 0x90
.LBB0_4:                                #   in Loop: Header=BB0_5 Depth=1
	movsd	%xmm0, -568(%rbp,%rsi,8)
	addq	$2, %rsi
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rsi, %rax
	je	.LBB0_9
.LBB0_5:                                # =>This Inner Loop Header: Depth=1
	movq	%rdx, %rcx
	addq	%rsi, %rcx
	movl	$42, __A_VARIABLE(%rip)
	xorpd	%xmm0, %xmm0
	xorpd	%xmm1, %xmm1
	js	.LBB0_7
# %bb.6:                                #   in Loop: Header=BB0_5 Depth=1
	xorps	%xmm1, %xmm1
	cvtsi2sdl	-4(%rbx,%rsi,4), %xmm1
	movl	$42, __A_VARIABLE(%rip)
.LBB0_7:                                #   in Loop: Header=BB0_5 Depth=1
	movsd	%xmm1, -576(%rbp,%rsi,8)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$-1, %rcx
	jl	.LBB0_4
# %bb.8:                                #   in Loop: Header=BB0_5 Depth=1
	xorps	%xmm0, %xmm0
	cvtsi2sdl	(%rbx,%rsi,4), %xmm0
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_4
.LBB0_9:                                # %.loopexit18
	addq	%rsi, %rdx
.LBB0_10:
	testq	%r10, %r10
	movq	-64(%rbp), %rcx         # 8-byte Reload
	je	.LBB0_15
# %bb.11:
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdx, %rdx
	js	.LBB0_13
# %bb.12:
	movq	-72(%rbp), %rax         # 8-byte Reload
	xorps	%xmm0, %xmm0
	cvtsi2sdl	(%rax,%rdx,4), %xmm0
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_14
.LBB0_13:
	xorpd	%xmm0, %xmm0
.LBB0_14:
	movsd	%xmm0, -576(%rbp,%rsi,8)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	-64(%rbp), %rcx         # 8-byte Reload
.LBB0_15:
	negl	%r14d
	addl	$-24, %edi
	movl	%edi, -52(%rbp)         # 4-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%ecx, %r13d
	movl	%r13d, %r10d
	andl	$1, %r10d
	leal	-2(%rcx), %esi
	movl	%r13d, %edi
	andl	$-2, %edi
	xorl	%ebx, %ebx
	jmp	.LBB0_17
	.p2align	4, 0x90
.LBB0_16:                               #   in Loop: Header=BB0_17 Depth=1
	movsd	%xmm0, -736(%rbp,%rbx,8)
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
	movq	-64(%rbp), %rax         # 8-byte Reload
	xorpd	%xmm0, %xmm0
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
	movsd	(%r15,%rax,8), %xmm1    # xmm1 = mem[0],zero
	leal	1(%rcx), %edx
	movslq	%edx, %rdx
	mulsd	-576(%rbp,%rdx,8), %xmm1
	addsd	%xmm0, %xmm1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movsd	8(%r15,%rax,8), %xmm0   # xmm0 = mem[0],zero
	movslq	%ecx, %rcx
	mulsd	-576(%rbp,%rcx,8), %xmm0
	addsd	%xmm1, %xmm0
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
	movsd	(%r15,%rax,8), %xmm1    # xmm1 = mem[0],zero
	subl	%eax, %ecx
	movslq	%ecx, %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	mulsd	-576(%rbp,%rax,8), %xmm1
	addsd	%xmm1, %xmm0
	jmp	.LBB0_16
.LBB0_24:
	movl	%r14d, -92(%rbp)        # 4-byte Spill
	movl	$24, %eax
	movl	-52(%rbp), %edi         # 4-byte Reload
	subl	%edi, %eax
	movl	%eax, -100(%rbp)        # 4-byte Spill
	movl	$23, %eax
	subl	%edi, %eax
	movl	%eax, -96(%rbp)         # 4-byte Spill
	movl	%r8d, %eax
	movq	%rax, -248(%rbp)        # 8-byte Spill
	movq	%r11, %rax
	notq	%rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
	movl	%r13d, %eax
	andl	$1, %eax
	movq	%rax, -240(%rbp)        # 8-byte Spill
	leaq	-216(,%r11,4), %rax
	addq	%rbp, %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
	andl	$-2, %r13d
	movsd	.LCPI0_0(%rip), %xmm3   # xmm3 = mem[0],zero
	movsd	.LCPI0_1(%rip), %xmm4   # xmm4 = mem[0],zero
	movq	-88(%rbp), %r12         # 8-byte Reload
                                        # kill: def $r12d killed $r12d killed $r12 def $r12
	movq	%r11, -80(%rbp)         # 8-byte Spill
	jmp	.LBB0_26
	.p2align	4, 0x90
.LBB0_25:                               #   in Loop: Header=BB0_26 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	%r9d, %r12d
.LBB0_26:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_28 Depth 2
                                        #     Child Loop BB0_38 Depth 2
                                        #     Child Loop BB0_61 Depth 2
                                        #     Child Loop BB0_64 Depth 2
                                        #     Child Loop BB0_69 Depth 2
                                        #     Child Loop BB0_72 Depth 2
                                        #       Child Loop BB0_76 Depth 3
	movslq	%r12d, %r14
	movsd	-736(%rbp,%r14,8), %xmm1 # xmm1 = mem[0],zero
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%r14d, %r14d
	jle	.LBB0_29
# %bb.27:                               # %.preheader14
                                        #   in Loop: Header=BB0_26 Depth=1
	leaq	1(%r14), %rax
	leaq	-208(%rbp), %rcx
	.p2align	4, 0x90
.LBB0_28:                               #   Parent Loop BB0_26 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movapd	%xmm1, %xmm0
	mulsd	%xmm3, %xmm0
	cvttsd2si	%xmm0, %edx
	xorps	%xmm0, %xmm0
	cvtsi2sd	%edx, %xmm0
	movapd	%xmm0, %xmm2
	mulsd	%xmm4, %xmm2
	addsd	%xmm1, %xmm2
	cvttsd2si	%xmm2, %edx
	movl	%edx, (%rcx)
	addsd	-752(%rbp,%rax,8), %xmm0
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
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
	movsd	%xmm0, -48(%rbp)        # 8-byte Spill
	mulsd	.LCPI0_2(%rip), %xmm0
	callq	floor
	movl	-52(%rbp), %edi         # 4-byte Reload
	mulsd	.LCPI0_3(%rip), %xmm0
	addsd	-48(%rbp), %xmm0        # 8-byte Folded Reload
	cvttsd2si	%xmm0, %r9d
	xorps	%xmm1, %xmm1
	cvtsi2sd	%r9d, %xmm1
	subsd	%xmm1, %xmm0
	movl	$42, __A_VARIABLE(%rip)
	testl	%edi, %edi
	jle	.LBB0_41
# %bb.31:                               #   in Loop: Header=BB0_26 Depth=1
	movslq	%r12d, %rax
	movl	-212(%rbp,%rax,4), %r8d
	movl	%r8d, %edx
	movl	-100(%rbp), %ecx        # 4-byte Reload
	sarl	%cl, %edx
	addl	%edx, %r9d
                                        # kill: def $cl killed $cl killed $ecx
	shll	%cl, %edx
	subl	%edx, %r8d
	movl	%r8d, -212(%rbp,%rax,4)
	movl	-96(%rbp), %ecx         # 4-byte Reload
                                        # kill: def $cl killed $cl killed $ecx
	sarl	%cl, %r8d
	movq	-80(%rbp), %rbx         # 8-byte Reload
	movq	-72(%rbp), %r10         # 8-byte Reload
	movq	-64(%rbp), %r11         # 8-byte Reload
	movsd	.LCPI0_0(%rip), %xmm3   # xmm3 = mem[0],zero
	movsd	.LCPI0_1(%rip), %xmm4   # xmm4 = mem[0],zero
	movsd	.LCPI0_5(%rip), %xmm1   # xmm1 = mem[0],zero
.LBB0_32:                               #   in Loop: Header=BB0_26 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%r8d, %r8d
	jle	.LBB0_56
.LBB0_33:                               #   in Loop: Header=BB0_26 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%r12d, %r12d
	jle	.LBB0_45
# %bb.34:                               #   in Loop: Header=BB0_26 Depth=1
	movl	%r12d, %ecx
	xorl	%edx, %edx
	xorl	%eax, %eax
	jmp	.LBB0_38
	.p2align	4, 0x90
.LBB0_35:                               #   in Loop: Header=BB0_38 Depth=2
	movl	$1, %eax
	movl	$16777216, %ebx         # imm = 0x1000000
.LBB0_36:                               #   in Loop: Header=BB0_38 Depth=2
	subl	%esi, %ebx
	movl	%ebx, -208(%rbp,%rdx,4)
	movl	$42, __A_VARIABLE(%rip)
.LBB0_37:                               #   in Loop: Header=BB0_38 Depth=2
	addq	$1, %rdx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rdx, %rcx
	je	.LBB0_46
.LBB0_38:                               #   Parent Loop BB0_26 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-208(%rbp,%rdx,4), %esi
	movl	$42, __A_VARIABLE(%rip)
	movl	$16777215, %ebx         # imm = 0xFFFFFF
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
	movsd	.LCPI0_5(%rip), %xmm1   # xmm1 = mem[0],zero
	je	.LBB0_50
# %bb.42:                               #   in Loop: Header=BB0_26 Depth=1
	xorl	%r8d, %r8d
	ucomisd	.LCPI0_4(%rip), %xmm0
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	-80(%rbp), %rbx         # 8-byte Reload
	movq	-72(%rbp), %r10         # 8-byte Reload
	movq	-64(%rbp), %r11         # 8-byte Reload
	movsd	.LCPI0_0(%rip), %xmm3   # xmm3 = mem[0],zero
	movsd	.LCPI0_1(%rip), %xmm4   # xmm4 = mem[0],zero
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
	movq	-80(%rbp), %rbx         # 8-byte Reload
	jle	.LBB0_53
# %bb.47:                               #   in Loop: Header=BB0_26 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, %edi
	je	.LBB0_51
# %bb.48:                               #   in Loop: Header=BB0_26 Depth=1
	cmpl	$1, %edi
	jne	.LBB0_53
# %bb.49:                               #   in Loop: Header=BB0_26 Depth=1
	movslq	%r12d, %rcx
	andl	$8388607, -212(%rbp,%rcx,4) # imm = 0x7FFFFF
	jmp	.LBB0_52
.LBB0_50:                               #   in Loop: Header=BB0_26 Depth=1
	movslq	%r12d, %rax
	movl	-212(%rbp,%rax,4), %r8d
	sarl	$23, %r8d
	movq	-80(%rbp), %rbx         # 8-byte Reload
	movq	-72(%rbp), %r10         # 8-byte Reload
	movq	-64(%rbp), %r11         # 8-byte Reload
	movsd	.LCPI0_0(%rip), %xmm3   # xmm3 = mem[0],zero
	movsd	.LCPI0_1(%rip), %xmm4   # xmm4 = mem[0],zero
	jmp	.LBB0_32
.LBB0_51:                               #   in Loop: Header=BB0_26 Depth=1
	movslq	%r12d, %rcx
	andl	$4194303, -212(%rbp,%rcx,4) # imm = 0x3FFFFF
.LBB0_52:                               #   in Loop: Header=BB0_26 Depth=1
	movl	$42, __A_VARIABLE(%rip)
.LBB0_53:                               #   in Loop: Header=BB0_26 Depth=1
	addl	$1, %r9d
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, %r8d
	jne	.LBB0_56
# %bb.54:                               #   in Loop: Header=BB0_26 Depth=1
	movapd	%xmm1, %xmm2
	subsd	%xmm0, %xmm2
	movl	$42, __A_VARIABLE(%rip)
	movl	$2, %r8d
	testl	%eax, %eax
	je	.LBB0_57
# %bb.55:                               #   in Loop: Header=BB0_26 Depth=1
	movapd	%xmm1, %xmm0
	movl	%r9d, %ebx
	movsd	%xmm2, -48(%rbp)        # 8-byte Spill
	callq	scalbn
	movsd	-48(%rbp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movsd	.LCPI0_1(%rip), %xmm4   # xmm4 = mem[0],zero
	movsd	.LCPI0_0(%rip), %xmm3   # xmm3 = mem[0],zero
	movl	$2, %r8d
	movq	-64(%rbp), %r11         # 8-byte Reload
	movq	-72(%rbp), %r10         # 8-byte Reload
	movl	%ebx, %r9d
	movl	-52(%rbp), %edi         # 4-byte Reload
	movq	-80(%rbp), %rbx         # 8-byte Reload
	subsd	%xmm0, %xmm2
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_57
	.p2align	4, 0x90
.LBB0_56:                               #   in Loop: Header=BB0_26 Depth=1
	movapd	%xmm0, %xmm2
.LBB0_57:                               #   in Loop: Header=BB0_26 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	ucomisd	.LCPI0_8, %xmm2
	jne	.LBB0_80
	jp	.LBB0_80
# %bb.58:                               #   in Loop: Header=BB0_26 Depth=1
	movl	%r12d, %eax
	movl	$42, __A_VARIABLE(%rip)
	subl	-88(%rbp), %eax         # 4-byte Folded Reload
	jle	.LBB0_66
# %bb.59:                               #   in Loop: Header=BB0_26 Depth=1
	movl	%r8d, -48(%rbp)         # 4-byte Spill
	movq	-232(%rbp), %rcx        # 8-byte Reload
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
	orl	-212(%rbp,%rdx,4), %ecx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	orl	-216(%rbp,%rdx,4), %ecx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	orl	-220(%rbp,%rdx,4), %ecx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	orl	-224(%rbp,%rdx,4), %ecx
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
	leaq	-212(%rbp), %rsi
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
	cmpl	$0, -212(%rbp,%rbx,4)
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %r9d
	jne	.LBB0_70
# %bb.68:                               # %.preheader9
                                        #   in Loop: Header=BB0_26 Depth=1
	movl	$1, %r9d
	movq	-224(%rbp), %rcx        # 8-byte Reload
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
	addl	%r12d, %r9d
	movl	$42, __A_VARIABLE(%rip)
	movslq	%r9d, %r8
	addl	%r11d, %r12d
	jmp	.LBB0_72
	.p2align	4, 0x90
.LBB0_71:                               #   in Loop: Header=BB0_72 Depth=2
	movsd	%xmm0, -728(%rbp,%rdx,8)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addl	$1, %r12d
	cmpq	%r8, %r14
	jge	.LBB0_25
.LBB0_72:                               #   Parent Loop BB0_26 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_76 Depth 3
	movq	%r14, %rdx
	addq	$1, %r14
	leal	(%rdx,%r11), %esi
	movq	-248(%rbp), %rax        # 8-byte Reload
	leaq	1(%rdx,%rax), %rax
	xorps	%xmm0, %xmm0
	cvtsi2sdl	(%r10,%rax,4), %xmm0
	movslq	%esi, %rax
	movsd	%xmm0, -576(%rbp,%rax,8)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	xorpd	%xmm0, %xmm0
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
	movl	%r12d, %ebx
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB0_76:                               #   Parent Loop BB0_26 Depth=1
                                        #     Parent Loop BB0_72 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movsd	(%r15,%rax,8), %xmm1    # xmm1 = mem[0],zero
	movslq	%ebx, %rbx
	mulsd	-576(%rbp,%rbx,8), %xmm1
	addsd	%xmm0, %xmm1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movsd	8(%r15,%rax,8), %xmm0   # xmm0 = mem[0],zero
	leal	-1(%rbx), %ecx
	movslq	%ecx, %rcx
	mulsd	-576(%rbp,%rcx,8), %xmm0
	addsd	%xmm1, %xmm0
	addq	$2, %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addl	$-2, %ebx
	cmpq	%rax, %r13
	jne	.LBB0_76
.LBB0_77:                               #   in Loop: Header=BB0_72 Depth=2
	cmpq	$0, -240(%rbp)          # 8-byte Folded Reload
	je	.LBB0_71
# %bb.78:                               #   in Loop: Header=BB0_72 Depth=2
	movsd	(%r15,%rax,8), %xmm1    # xmm1 = mem[0],zero
	subl	%eax, %esi
	movslq	%esi, %rcx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	mulsd	-576(%rbp,%rcx,8), %xmm1
	addsd	%xmm1, %xmm0
	jmp	.LBB0_71
.LBB0_80:
	movl	%r8d, -48(%rbp)         # 4-byte Spill
	movl	%r9d, %r15d
	negl	%edi
	movapd	%xmm2, %xmm0
	callq	scalbn
	ucomisd	.LCPI0_6(%rip), %xmm0
	movl	$42, __A_VARIABLE(%rip)
	jae	.LBB0_82
# %bb.81:
	cvttsd2si	%xmm0, %eax
	movl	%eax, -208(%rbp,%r14,4)
	movl	$42, __A_VARIABLE(%rip)
	movl	-52(%rbp), %edi         # 4-byte Reload
	jmp	.LBB0_86
.LBB0_82:
	movsd	.LCPI0_0(%rip), %xmm1   # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %eax
	xorps	%xmm1, %xmm1
	cvtsi2sd	%eax, %xmm1
	mulsd	.LCPI0_1(%rip), %xmm1
	addsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %ecx
	movl	%ecx, -208(%rbp,%r14,4)
	addl	$1, %r12d
	movl	-92(%rbp), %edi         # 4-byte Reload
	addl	-216(%rbp), %edi        # 4-byte Folded Reload
	movl	%eax, -204(%rbp,%r14,4)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_86
.LBB0_83:
	movl	%r9d, %r15d
	movl	$42, __A_VARIABLE(%rip)
	addl	$-24, %edi
	addl	$-1, %r12d
	movslq	%r12d, %rax
	cmpl	$0, -208(%rbp,%rax,4)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_86
# %bb.84:                               # %.preheader6
	leaq	-212(,%rax,4), %rax
	addq	%rbp, %rax
	.p2align	4, 0x90
.LBB0_85:                               # =>This Inner Loop Header: Depth=1
	movl	$42, __A_VARIABLE(%rip)
	addl	$-24, %edi
	addl	$-1, %r12d
	cmpl	$0, (%rax)
	leaq	-4(%rax), %rax
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB0_85
.LBB0_86:
	movsd	.LCPI0_5(%rip), %xmm0   # xmm0 = mem[0],zero
	callq	scalbn
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%r12d, %r12d
	js	.LBB0_95
# %bb.87:
	movslq	%r12d, %rax
	leaq	1(%rax), %rcx
	movq	-80(%rbp), %rbx         # 8-byte Reload
	movsd	.LCPI0_0(%rip), %xmm2   # xmm2 = mem[0],zero
	.p2align	4, 0x90
.LBB0_88:                               # =>This Inner Loop Header: Depth=1
	xorps	%xmm1, %xmm1
	cvtsi2sdl	-212(%rbp,%rcx,4), %xmm1
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, -744(%rbp,%rcx,8)
	mulsd	%xmm2, %xmm0
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$-1, %rcx
	jg	.LBB0_88
# %bb.89:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%r12d, %r12d
	movq	-120(%rbp), %r8         # 8-byte Reload
	movq	-112(%rbp), %r9         # 8-byte Reload
	js	.LBB0_96
# %bb.90:
	leaq	-736(,%rax,8), %rcx
	addq	%rbp, %rcx
	movq	%rax, %rdx
	jmp	.LBB0_92
	.p2align	4, 0x90
.LBB0_91:                               #   in Loop: Header=BB0_92 Depth=1
	movsd	%xmm0, -416(%rbp,%rsi,8)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$-8, %rcx
	testq	%rdx, %rdx
	leaq	-1(%rdx), %rdx
	jle	.LBB0_96
.LBB0_92:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_93 Depth 2
	movq	%rax, %rsi
	subq	%rdx, %rsi
	movl	$42, __A_VARIABLE(%rip)
	xorpd	%xmm0, %xmm0
	xorl	%edi, %edi
	.p2align	4, 0x90
.LBB0_93:                               #   Parent Loop BB0_92 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rsi, %rdi
	ja	.LBB0_91
# %bb.94:                               #   in Loop: Header=BB0_93 Depth=2
	movsd	PIo2(,%rdi,8), %xmm1    # xmm1 = mem[0],zero
	mulsd	(%rcx,%rdi,8), %xmm1
	addsd	%xmm1, %xmm0
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
	movq	-120(%rbp), %r8         # 8-byte Reload
	movq	-112(%rbp), %r9         # 8-byte Reload
.LBB0_96:
	leal	-1(%r9), %eax
	cmpl	$2, %eax
	jb	.LBB0_105
# %bb.97:
	cmpl	$3, %r9d
	je	.LBB0_108
# %bb.98:
	testl	%r9d, %r9d
	movl	%r15d, %eax
	jne	.LBB0_138
# %bb.99:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%r12d, %r12d
	js	.LBB0_131
# %bb.100:
	movslq	%r12d, %rcx
	addq	$1, %rcx
	xorpd	%xmm0, %xmm0
	movl	-48(%rbp), %edx         # 4-byte Reload
	.p2align	4, 0x90
.LBB0_101:                              # =>This Inner Loop Header: Depth=1
	addsd	-424(%rbp,%rcx,8), %xmm0
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$-1, %rcx
	jg	.LBB0_101
# %bb.102:
	testl	%edx, %edx
	je	.LBB0_104
.LBB0_103:
	xorpd	.LCPI0_7(%rip), %xmm0
.LBB0_104:
	movsd	%xmm0, (%r8)
	jmp	.LBB0_137
.LBB0_105:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%r12d, %r12d
	js	.LBB0_117
# %bb.106:
	movslq	%r12d, %rcx
	addq	$1, %rcx
	xorpd	%xmm1, %xmm1
	movl	%r15d, %eax
	movl	-48(%rbp), %esi         # 4-byte Reload
	.p2align	4, 0x90
.LBB0_107:                              # =>This Inner Loop Header: Depth=1
	addsd	-424(%rbp,%rcx,8), %xmm1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$-1, %rcx
	jg	.LBB0_107
	jmp	.LBB0_118
.LBB0_108:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%r12d, %r12d
	jle	.LBB0_132
# %bb.109:
	movslq	%r12d, %rdx
	movsd	-416(%rbp,%rdx,8), %xmm0 # xmm0 = mem[0],zero
	leaq	1(%rdx), %rcx
	.p2align	4, 0x90
.LBB0_110:                              # =>This Inner Loop Header: Depth=1
	movsd	-432(%rbp,%rcx,8), %xmm1 # xmm1 = mem[0],zero
	movapd	%xmm1, %xmm2
	addsd	%xmm0, %xmm2
	subsd	%xmm2, %xmm1
	addsd	%xmm0, %xmm1
	movsd	%xmm1, -424(%rbp,%rcx,8)
	movsd	%xmm2, -432(%rbp,%rcx,8)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$-1, %rcx
	movapd	%xmm2, %xmm0
	cmpq	$1, %rcx
	jg	.LBB0_110
# %bb.111:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1, %r12d
	movl	%r15d, %eax
	jle	.LBB0_133
# %bb.112:
	movsd	-416(%rbp,%rdx,8), %xmm0 # xmm0 = mem[0],zero
	leaq	1(%rdx), %rcx
	.p2align	4, 0x90
.LBB0_113:                              # =>This Inner Loop Header: Depth=1
	movsd	-432(%rbp,%rcx,8), %xmm1 # xmm1 = mem[0],zero
	movapd	%xmm1, %xmm2
	addsd	%xmm0, %xmm2
	subsd	%xmm2, %xmm1
	addsd	%xmm0, %xmm1
	movsd	%xmm1, -424(%rbp,%rcx,8)
	movsd	%xmm2, -432(%rbp,%rcx,8)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$-1, %rcx
	movapd	%xmm2, %xmm0
	cmpq	$2, %rcx
	jg	.LBB0_113
# %bb.114:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	xorpd	%xmm0, %xmm0
	cmpl	$2, %r12d
	jl	.LBB0_134
# %bb.115:
	addq	$1, %rdx
	xorpd	%xmm0, %xmm0
	.p2align	4, 0x90
.LBB0_116:                              # =>This Inner Loop Header: Depth=1
	addsd	-424(%rbp,%rdx,8), %xmm0
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$-1, %rdx
	cmpq	$2, %rdx
	jg	.LBB0_116
	jmp	.LBB0_134
.LBB0_117:
	xorpd	%xmm1, %xmm1
	movl	%r15d, %eax
	movl	-48(%rbp), %esi         # 4-byte Reload
.LBB0_118:
	movapd	%xmm1, %xmm0
	testl	%esi, %esi
	je	.LBB0_120
# %bb.119:
	movapd	.LCPI0_7(%rip), %xmm0   # xmm0 = [-0.0E+0,-0.0E+0]
	xorpd	%xmm1, %xmm0
.LBB0_120:
	movsd	%xmm0, (%r8)
	movsd	-416(%rbp), %xmm0       # xmm0 = mem[0],zero
	subsd	%xmm1, %xmm0
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%r12d, %r12d
	jle	.LBB0_128
# %bb.121:
	leal	1(%r12), %ecx
	leaq	-2(%rcx), %rdx
	andl	$3, %r12d
	cmpq	$3, %rdx
	jae	.LBB0_123
# %bb.122:
	movl	$1, %edx
	jmp	.LBB0_125
.LBB0_123:
	subq	%r12, %rcx
	movl	$1, %edx
	.p2align	4, 0x90
.LBB0_124:                              # =>This Inner Loop Header: Depth=1
	addsd	-416(%rbp,%rdx,8), %xmm0
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addsd	-408(%rbp,%rdx,8), %xmm0
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addsd	-400(%rbp,%rdx,8), %xmm0
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addsd	-392(%rbp,%rdx,8), %xmm0
	addq	$4, %rdx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rdx, %rcx
	jne	.LBB0_124
.LBB0_125:
	testl	%r12d, %r12d
	je	.LBB0_128
# %bb.126:                              # %.preheader
	leaq	-416(,%rdx,8), %rdx
	addq	%rbp, %rdx
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB0_127:                              # =>This Inner Loop Header: Depth=1
	addsd	(%rdx,%rcx,8), %xmm0
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$1, %rcx
	cmpq	%rcx, %r12
	jne	.LBB0_127
.LBB0_128:
	testl	%esi, %esi
	je	.LBB0_130
# %bb.129:
	xorpd	.LCPI0_7(%rip), %xmm0
.LBB0_130:
	movsd	%xmm0, 8(%r8)
	jmp	.LBB0_137
.LBB0_131:
	xorpd	%xmm0, %xmm0
	movl	-48(%rbp), %edx         # 4-byte Reload
	testl	%edx, %edx
	jne	.LBB0_103
	jmp	.LBB0_104
.LBB0_132:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	xorpd	%xmm0, %xmm0
	movl	%r15d, %eax
	jmp	.LBB0_134
.LBB0_133:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	xorpd	%xmm0, %xmm0
.LBB0_134:
	movsd	-416(%rbp), %xmm1       # xmm1 = mem[0],zero
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$0, -48(%rbp)           # 4-byte Folded Reload
	je	.LBB0_136
# %bb.135:
	movhpd	-408(%rbp), %xmm1       # xmm1 = xmm1[0],mem[0]
	movapd	.LCPI0_7(%rip), %xmm2   # xmm2 = [-0.0E+0,-0.0E+0]
	xorpd	%xmm2, %xmm1
	movupd	%xmm1, (%r8)
	xorpd	%xmm2, %xmm0
	movlpd	%xmm0, 16(%r8)
	jmp	.LBB0_137
.LBB0_136:
	movsd	%xmm1, (%r8)
	movq	-408(%rbp), %rcx
	movq	%rcx, 8(%r8)
	movsd	%xmm0, 16(%r8)
.LBB0_137:
	movl	$42, __A_VARIABLE(%rip)
.LBB0_138:
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
